#include "externals.h"
#include "ExportableNode.h"
#include "MayaException.h"
#include "ExportableResources.h"
#include "NodeAnimation.h"
#include "Transform.h"
#include "ExportableScene.h"
#include "Arguments.h"
#include "DagHelper.h"

ExportableNode::ExportableNode(MDagPath dagPath)
	: ExportableObject(dagPath.node())
	, dagPath(dagPath)
	, transformKind(TransformKind::Simple)
	, scaleFactor(1)
	, parentNode(nullptr)
{
}

void ExportableNode::load(
	ExportableScene& scene,
	NodeTransformCache& transformCache)
{
	MStatus status;

	auto& resources = scene.resources();
	auto& args = resources.arguments();

	// Is this a joint with segment scale compensation? (the default in Maya)
	bool maybeSegmentScaleCompensation = false;
	DagHelper::getPlugValue(obj, "segmentScaleCompensate", maybeSegmentScaleCompensation);

	// Remember scale factor
	scaleFactor = args.scaleFactor;

	// Get name
	const auto name = dagPath.partialPathName(&status);
	THROW_ON_FAILURE(status);

	// Get parent
	parentNode = scene.getParent(this);

	// Deal with segment scale compensation
	// A root joint never has segment scale compensation, since the parent is the world.
	if (maybeSegmentScaleCompensation &&
		parentNode &&
		parentNode->obj.hasFn(MFn::kJoint) &&
		!args.ignoreSegmentScaleCompensation)
	{
		transformKind = TransformKind::ComplexJoint;
	}

	// Deal with pivot points.
	// We currently only support a single pivot point, 
	// but Maya has both a rotation and scaling pivot, 
	// so warn the user if these are different.
	MFnTransform fnTransform(dagPath, &status);
	if (status)
	{
		const auto scalePivot = fnTransform.scalePivot(MSpace::kObject);
		const auto rotatePivot = fnTransform.rotatePivot(MSpace::kObject);

		if (scalePivot != rotatePivot)
		{
			MayaException::printError(formatted("Transform '%s' has different scaling and rotation pivots, this is not supported, ignoring scaling pivot!",
				dagPath.partialPathName().asChar()), MStatus::kNotImplemented);
		}

		pivotPoint = rotatePivot;

		if (pivotPoint != MPoint::origin)
		{
			cout << prefix << "Transform " << dagPath.partialPathName() << " has a pivot point, extra GLTF nodes will be added to handle this" << endl;

			transformKind = TransformKind::ComplexTransform;
		}
	}

	// In the presence of segment scale compensation or pivot points, 
	// parent.TRS <- child.TRS 
	// becomes
	// parent.TU <- parent.RS <- child.TU <- child.RS

	auto& nodeTU = glNodeTU();
	auto& nodeRS = glNodeRS();

	args.assignName(nodeTU, name.asChar());

	if (transformKind != TransformKind::Simple)
	{
		args.assignName(nodeRS, (name + ":SSC").asChar());
		nodeTU.children.emplace_back(&nodeRS);
	}

	if (parentNode)
	{
		// Register as child
		parentNode->glNodeRS().children.push_back(&nodeTU);
	}
	else
	{
		// Add root nodes to the scene
		scene.glScene.nodes.emplace_back(&nodeTU);
	}

	// Get transform
	initialTransformState = transformCache.getTransform(this, scaleFactor);
	m_glNodes[0].transform = &initialTransformState.localTransforms[0];
	m_glNodes[1].transform = &initialTransformState.localTransforms[1];

	if (!initialTransformState.hasValidLocalTransforms)
	{
		// TODO: Use SVG to decompose the 3x3 matrix into a product of rotation and scale matrices.
		cerr << prefix << "WARNING: node '" << name << "' has initial transforms that are not representable by glTF! Skewing is not supported, use 3 nodes to simulate this" << endl;
	}

	// Create mesh, if any
	// Get mesh, but only if the node was selected.
	if (args.selection.find(dagPath) != args.selection.end())
	{
		MDagPath shapeDagPath = dagPath;
		status = shapeDagPath.extendToShape();

		if (status && shapeDagPath.hasFn(MFn::kMesh))
		{
			// The shape is a mesh
			m_mesh = std::make_unique<ExportableMesh>(scene, *this, shapeDagPath);
			m_mesh->setupNode(nodeRS);
		}
	}
}

ExportableNode::~ExportableNode() = default;

std::unique_ptr<NodeAnimation> ExportableNode::createAnimation(const ExportableFrames& frameTimes, const double scaleFactor)
{
	return std::make_unique<NodeAnimation>(*this, frameTimes, scaleFactor);
}

void ExportableNode::updateNodeTransforms(NodeTransformCache& transformCache)
{
	currentTransformState = transformCache.getTransform(this, scaleFactor);
	m_glNodes[0].transform = &currentTransformState.localTransforms[0];
	m_glNodes[1].transform = &currentTransformState.localTransforms[1];

	if (!currentTransformState.hasValidLocalTransforms)
	{
		// TODO: Use SVG to decompose the 3x3 matrix into a product of rotation and scale matrices.
		cerr << prefix << "WARNING: node '" << name() << "' has transforms at the current frame that are not representable by glTF! Skewing is not supported, use 3 nodes to simulate this" << endl;
	}
}

