//Maya ASCII 2018 scene
//Name: three_faces_textured_pbs.ma
//Last modified: Wed, Nov 15, 2017 07:30:37 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "StingrayPBS" "shaderFXPlugin" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "C5303655-4C9C-8F2F-4D48-319DD89BEEEC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4047967595007003 1.2458142661142728 2.1966194721068133 ;
	setAttr ".r" -type "double3" -25.538352729626702 32.600000000010539 9.4383810075292209e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6B02D726-46C0-63DF-96CC-4E82EEC6C236";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2.8897481250782771;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4C88466F-4F99-3F82-5706-95B1FF844B75";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "818CEECE-4A13-DDD7-2E66-8F8506119496";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "9662B85B-498E-AC70-3FD7-C8A40881DCD1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DD3F5777-4A3B-5523-FF72-FA95690CD0CE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "7FB76AA7-4530-8440-E047-25880DC7E27C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2A2527E5-4483-8D09-DB87-8DB1028FB2A2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "58662DD8-4A7F-95D3-7F0B-5281689A8398";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "0E5F8520-4FC2-2560-A582-58BC08BC8D7A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33333337306976318 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D3A99F61-4C05-5BC1-879A-A4B62361CD5A";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B9E79F3F-454C-7A53-1F74-90B352831A1D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7FEAF7DF-487C-8FCD-EE13-EABD38F84B34";
createNode displayLayerManager -n "layerManager";
	rename -uid "6AFAEA18-4C0E-6E00-EE27-758E62EF315F";
createNode displayLayer -n "defaultLayer";
	rename -uid "EF2C44CB-4AE2-9D87-C24C-7A8EDF60BEA7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6747540E-41D7-4E4D-2E38-C8862829F9D6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "43040BE8-4841-EF63-FB51-70AF2DB06CF0";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "549611E1-4681-77DE-55A2-53B8A38E3EC8";
	setAttr ".cuv" 4;
createNode StingrayPBS -n "StingrayPBS1";
	rename -uid "6AFB049B-405F-F962-7B90-14A3DB878EDF";
	addAttr -ci true -uac -sn "TEX_global_diffuse_cube" -ln "TEX_global_diffuse_cube" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "TEX_global_diffuse_cubeX" -ln "TEX_global_diffuse_cubeX" -at "float" 
		-p "TEX_global_diffuse_cube";
	addAttr -ci true -sn "TEX_global_diffuse_cubeY" -ln "TEX_global_diffuse_cubeY" -at "float" 
		-p "TEX_global_diffuse_cube";
	addAttr -ci true -sn "TEX_global_diffuse_cubeZ" -ln "TEX_global_diffuse_cubeZ" -at "float" 
		-p "TEX_global_diffuse_cube";
	addAttr -ci true -uac -sn "TEX_global_specular_cube" -ln "TEX_global_specular_cube" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "TEX_global_specular_cubeX" -ln "TEX_global_specular_cubeX" 
		-at "float" -p "TEX_global_specular_cube";
	addAttr -ci true -sn "TEX_global_specular_cubeY" -ln "TEX_global_specular_cubeY" 
		-at "float" -p "TEX_global_specular_cube";
	addAttr -ci true -sn "TEX_global_specular_cubeZ" -ln "TEX_global_specular_cubeZ" 
		-at "float" -p "TEX_global_specular_cube";
	addAttr -ci true -uac -sn "TEX_brdf_lut" -ln "TEX_brdf_lut" -at "float3" -nc 3;
	addAttr -ci true -sn "TEX_brdf_lutX" -ln "TEX_brdf_lutX" -at "float" -p "TEX_brdf_lut";
	addAttr -ci true -sn "TEX_brdf_lutY" -ln "TEX_brdf_lutY" -at "float" -p "TEX_brdf_lut";
	addAttr -ci true -sn "TEX_brdf_lutZ" -ln "TEX_brdf_lutZ" -at "float" -p "TEX_brdf_lut";
	addAttr -ci true -k true -sn "use_normal_map" -ln "use_normal_map" -at "float";
	addAttr -ci true -k true -sn "uv_offset" -ln "uv_offset" -at "float2" -nc 2;
	addAttr -ci true -k true -sn "uv_offsetX" -ln "uv_offsetX" -at "float" -p "uv_offset";
	addAttr -ci true -k true -sn "uv_offsetY" -ln "uv_offsetY" -at "float" -p "uv_offset";
	addAttr -ci true -k true -sn "uv_scale" -ln "uv_scale" -at "float2" -nc 2;
	addAttr -ci true -k true -sn "uv_scaleX" -ln "uv_scaleX" -dv 1 -at "float" -p "uv_scale";
	addAttr -ci true -k true -sn "uv_scaleY" -ln "uv_scaleY" -dv 1 -at "float" -p "uv_scale";
	addAttr -ci true -uac -sn "TEX_normal_map" -ln "TEX_normal_map" -at "float3" -nc 
		3;
	addAttr -ci true -sn "TEX_normal_mapX" -ln "TEX_normal_mapX" -at "float" -p "TEX_normal_map";
	addAttr -ci true -sn "TEX_normal_mapY" -ln "TEX_normal_mapY" -at "float" -p "TEX_normal_map";
	addAttr -ci true -sn "TEX_normal_mapZ" -ln "TEX_normal_mapZ" -at "float" -p "TEX_normal_map";
	addAttr -ci true -k true -sn "use_color_map" -ln "use_color_map" -at "float";
	addAttr -ci true -uac -sn "TEX_color_map" -ln "TEX_color_map" -at "float3" -nc 3;
	addAttr -ci true -sn "TEX_color_mapX" -ln "TEX_color_mapX" -at "float" -p "TEX_color_map";
	addAttr -ci true -sn "TEX_color_mapY" -ln "TEX_color_mapY" -at "float" -p "TEX_color_map";
	addAttr -ci true -sn "TEX_color_mapZ" -ln "TEX_color_mapZ" -at "float" -p "TEX_color_map";
	addAttr -ci true -uac -k true -sn "base_color" -ln "base_color" -at "float3" -nc 
		3;
	addAttr -ci true -k true -sn "base_colorR" -ln "base_colorR" -dv 0.5 -at "float" 
		-p "base_color";
	addAttr -ci true -k true -sn "base_colorG" -ln "base_colorG" -dv 0.5 -at "float" 
		-p "base_color";
	addAttr -ci true -k true -sn "base_colorB" -ln "base_colorB" -dv 0.5 -at "float" 
		-p "base_color";
	addAttr -ci true -k true -sn "use_metallic_map" -ln "use_metallic_map" -at "float";
	addAttr -ci true -uac -sn "TEX_metallic_map" -ln "TEX_metallic_map" -at "float3" 
		-nc 3;
	addAttr -ci true -sn "TEX_metallic_mapX" -ln "TEX_metallic_mapX" -at "float" -p "TEX_metallic_map";
	addAttr -ci true -sn "TEX_metallic_mapY" -ln "TEX_metallic_mapY" -at "float" -p "TEX_metallic_map";
	addAttr -ci true -sn "TEX_metallic_mapZ" -ln "TEX_metallic_mapZ" -at "float" -p "TEX_metallic_map";
	addAttr -ci true -k true -sn "metallic" -ln "metallic" -at "float";
	addAttr -ci true -k true -sn "use_roughness_map" -ln "use_roughness_map" -at "float";
	addAttr -ci true -uac -sn "TEX_roughness_map" -ln "TEX_roughness_map" -at "float3" 
		-nc 3;
	addAttr -ci true -sn "TEX_roughness_mapX" -ln "TEX_roughness_mapX" -at "float" -p "TEX_roughness_map";
	addAttr -ci true -sn "TEX_roughness_mapY" -ln "TEX_roughness_mapY" -at "float" -p "TEX_roughness_map";
	addAttr -ci true -sn "TEX_roughness_mapZ" -ln "TEX_roughness_mapZ" -at "float" -p "TEX_roughness_map";
	addAttr -ci true -k true -sn "roughness" -ln "roughness" -dv 0.33000001311302185 
		-at "float";
	addAttr -ci true -k true -sn "use_emissive_map" -ln "use_emissive_map" -at "float";
	addAttr -ci true -uac -sn "TEX_emissive_map" -ln "TEX_emissive_map" -at "float3" 
		-nc 3;
	addAttr -ci true -sn "TEX_emissive_mapX" -ln "TEX_emissive_mapX" -at "float" -p "TEX_emissive_map";
	addAttr -ci true -sn "TEX_emissive_mapY" -ln "TEX_emissive_mapY" -at "float" -p "TEX_emissive_map";
	addAttr -ci true -sn "TEX_emissive_mapZ" -ln "TEX_emissive_mapZ" -at "float" -p "TEX_emissive_map";
	addAttr -ci true -uac -k true -sn "emissive" -ln "emissive" -at "float3" -nc 3;
	addAttr -ci true -k true -sn "emissiveR" -ln "emissiveR" -at "float" -p "emissive";
	addAttr -ci true -k true -sn "emissiveG" -ln "emissiveG" -at "float" -p "emissive";
	addAttr -ci true -k true -sn "emissiveB" -ln "emissiveB" -at "float" -p "emissive";
	addAttr -ci true -k true -sn "emissive_intensity" -ln "emissive_intensity" -at "float";
	addAttr -ci true -k true -sn "use_ao_map" -ln "use_ao_map" -at "float";
	addAttr -ci true -uac -sn "TEX_ao_map" -ln "TEX_ao_map" -at "float3" -nc 3;
	addAttr -ci true -sn "TEX_ao_mapX" -ln "TEX_ao_mapX" -at "float" -p "TEX_ao_map";
	addAttr -ci true -sn "TEX_ao_mapY" -ln "TEX_ao_mapY" -at "float" -p "TEX_ao_map";
	addAttr -ci true -sn "TEX_ao_mapZ" -ln "TEX_ao_mapZ" -at "float" -p "TEX_ao_map";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".sg" -type "string" (
		"SFB_WIN = { parent_material = \"core/stingray_renderer/shader_import/standard\" /*\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=presets/Standard\nNumberOfNodes=32\n#NT=20189 0\n\tPC=3\n\tname=1 v=5000 Metallic_Map_Switch\n\tposx=1 v=2003 1020.000000\n\tposy=1 v=2003 240.000000\n\tgroup=-1\n\tISC=4\n\t\tSVT=5022 2003 1 0 0 \n\t\tSVT=5022 2003 2 1 0 \n\t\tSDV=1.000000\n\t\tSVT=5022 2003 3 0 1 \n\t\tSCS=r\n\t\tSVT=5022 2003 4 0 0 \n\tOSC=1\n\t\tSVT=5022 2003 5 \n\t\tCC=1\n\t\t\tC=0 0 5 5 5 6 0\n\t\t\tCPC=0\n#NT=20189 0\n\tPC=3\n\tname=1 v=5000 Emissive_Map_Switch\n\tposx=1 v=2003 740.000000\n\tposy=1 v=2003 780.000000\n\tgroup=-1\n\tISC=4\n\t\tSVT=5022 2003 1 0 0 \n\t\tSVT=5022 2003 2 1 0 \n\t\tSDV=1.000000\n\t\tSVT=5022 3002 3 0 1 \n\t\tSCS=rgb\n\t\tSVT=5022 3002 4 0 0 \n\tOSC=1\n\t\tSVT=5022 3002 5 \n\t\tCC=1\n\t\t\tC=1 0 5 10 0 1 0\n\t\t\tCPC=0\n#NT=20189 0\n\tPC=3\n\tname=1 v=5000 Color_Map_Switch\n\tposx=1 v=2003 1020.000000\n\tposy=1 v=2003 -340.000000\n\tgroup=-1\n\tISC=4\n\t\tSVT=5022 2003 1 0 0 \n\t\tSVT=5022 2003 2 1 0 \n\t\tSDV=1.000000\n\t\tSVT=5022 3002 3 0 1 \n\t\tSCS=rgb\n\t\tSVT=5022 3002 4 0 0 \n\tOSC=1\n"
		+ "\t\tSVT=5022 3002 5 \n\t\tCC=1\n\t\t\tC=2 0 5 5 1 2 0\n\t\t\tCPC=0\n#NT=20189 0\n\tPC=3\n\tname=1 v=5000 Normal_Map_Switch\n\tposx=1 v=2003 1020.000000\n\tposy=1 v=2003 -60.000000\n\tgroup=-1\n\tISC=4\n\t\tSVT=5022 2003 1 0 0 \n\t\tSVT=5022 2003 2 1 0 \n\t\tSDV=1.000000\n\t\tSVT=5022 3002 3 0 0 \n\t\tSVT=5022 3002 4 0 0 \n\tOSC=1\n\t\tSVT=5022 3002 5 \n\t\tCC=1\n\t\t\tC=3 0 5 5 4 5 0\n\t\t\tCPC=0\n#NT=20189 0\n\tPC=3\n\tname=1 v=5000 Roughness_Map_Switch\n\tposx=1 v=2003 1020.000000\n\tposy=1 v=2003 540.000000\n\tgroup=-1\n\tISC=4\n\t\tSVT=5022 2003 1 0 0 \n\t\tSVT=5022 2003 2 1 0 \n\t\tSDV=1.000000\n\t\tSVT=5022 2003 3 0 1 \n\t\tSCS=r\n\t\tSVT=5022 2003 4 0 0 \n\tOSC=1\n\t\tSVT=5022 2003 5 \n\t\tCC=1\n\t\t\tC=4 0 5 5 6 7 0\n\t\t\tCPC=0\n#NT=20176 0\n\tPC=5\n\tposx=1 v=2003 1360.000000\n\tposy=1 v=2003 260.000000\n\tshaderresource=1 v=5000 core/stingray_renderer/shader_import/standard\n\tpreset_path=1 v=5000 presets/Standard\n\tnormalspace=2 e=0 v=5012 1\n\tgroup=-1\n\tISC=13\n\t\tSVT=5022 3002 1 0 0 \n\t\tSVT=5022 3002 2 0 0 \n\t\tSVT=5022 2003 3 0 0 \n\t\tSVT=5022 2003 4 0 0 \n\t\tSVT=5022 3002 5 0 0 \n\t\tSVT=5022 2003 6 0 0 \n\t\tSVT=5022 2003 7 0 0 \n"
		+ "\t\tSVT=5022 3002 8 0 0 \n\t\tSVT=5022 2003 9 0 0 \n\t\tSVT=5022 2003 10 0 0 \n\t\tSVT=5022 2003 11 0 0 \n\t\tSVT=5022 2003 14 0 0 \n\t\tSVT=5022 2003 15 0 0 \n\tOSC=0\n#NT=20189 0\n\tPC=3\n\tname=1 v=5000 Ao_Map_Swtich\n\tposx=1 v=2003 1020.000000\n\tposy=1 v=2003 1100.000000\n\tgroup=-1\n\tISC=4\n\t\tSVT=5022 2003 1 0 0 \n\t\tSVT=5022 2003 2 1 0 \n\t\tSDV=1.000000\n\t\tSVT=5022 2003 3 0 1 \n\t\tSCS=r\n\t\tSVT=5022 2003 4 1 0 \n\t\tSDV=1.000000\n\tOSC=1\n\t\tSVT=5022 2003 5 \n\t\tCC=1\n\t\t\tC=6 0 5 5 8 9 0\n\t\t\tCPC=0\n#NT=20178 0\n\tPC=2\n\tposx=1 v=2003 -260.000000\n\tposy=1 v=2003 420.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 3001 1 \n\t\tCC=1\n\t\t\tC=7 0 1 28 1 2 0\n\t\t\tCPC=0\n#NT=20177 0\n\tPC=5\n\tname=1 v=5000 roughness_map\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 540.000000\n\tencoding=2 e=0 v=5012 0\n\tuiorder=2 e=0 v=2002 4\n\tgroup=-1\n\tISC=2\n\t\tSVT=5022 3001 1 0 0 \n\t\tSVT=5022 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5022 3003 3 \n\t\tCC=1\n\t\t\tC=8 0 3 4 2 3 0\n\t\t\tCPC=0\n#NT=20177 0\n\tPC=4\n\tname=1 v=5000 emissive_map\n\tposx=1 v=2003 420.000000\n\tposy=1 v=2003 780.000000\n\tuiorder=2 e=0 v=2002 5\n\tgroup=-1\n\tISC=2\n\t\tSVT=5022 3001 1 0 0 \n"
		+ "\t\tSVT=5022 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5022 3003 3 \n\t\tCC=1\n\t\t\tC=9 0 3 1 2 3 0\n\t\t\tCPC=0\n#NT=20186 0\n\tPC=2\n\tposx=1 v=2003 1020.000000\n\tposy=1 v=2003 840.000000\n\tgroup=-1\n\tISC=2\n\t\tSVT=5022 3002 1 0 0 \n\t\tSVT=5022 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5022 3002 3 \n\t\tCC=1\n\t\t\tC=10 0 3 5 7 8 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=7\n\tname=1 v=5000 use_color_map\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 -400.000000\n\ttype=2 e=0 v=5012 0\n\tdefaultscalar=2 e=0 v=2003 1.000000\n\tuitype=2 e=0 v=5012 1\n\tuiorder=2 e=0 v=2002 10\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 2003 1 \n\t\tCC=1\n\t\t\tC=11 0 1 2 0 1 0\n\t\t\tCPC=0\n#NT=20177 0\n\tPC=5\n\tname=1 v=5000 color_map\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 -340.000000\n\ttexturepath=2 e=1 v=5000 C:/dev/glTF/Maya2glTF/textures/6 digits.png\n\tuiorder=2 e=0 v=2002 1\n\tgroup=-1\n\tISC=2\n\t\tSVT=5022 3001 1 0 0 \n\t\tSVT=5022 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5022 3003 3 \n\t\tCC=1\n\t\t\tC=12 0 3 2 2 3 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=7\n\tname=1 v=5000 base_color\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 -240.000000\n\ttype=2 e=0 v=5012 2\n\tdefaultvecthree=2 e=0 v=3002 0.500000,0.500000,0.500000\n"
		+ "\tdefaultvector=2 e=0 v=3003 0.500000,0.500000,0.500000,0.000000\n\tuiorder=2 e=0 v=2002 20\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 3002 1 \n\t\tCC=1\n\t\t\tC=13 0 1 2 3 4 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=6\n\tname=1 v=5000 use_normal_map\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 -120.000000\n\ttype=2 e=0 v=5012 0\n\tuitype=2 e=0 v=5012 1\n\tuiorder=2 e=0 v=2002 11\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 2003 1 \n\t\tCC=1\n\t\t\tC=14 0 1 3 0 1 0\n\t\t\tCPC=0\n#NT=20194 0\n\tPC=2\n\tposx=1 v=2003 680.000000\n\tposy=1 v=2003 60.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 3002 1 \n\t\tCC=1\n\t\t\tC=15 0 1 3 3 4 0\n\t\t\tCPC=0\n#NT=20195 0\n\tPC=2\n\tposx=1 v=2003 740.000000\n\tposy=1 v=2003 -60.000000\n\tgroup=-1\n\tISC=1\n\t\tSVT=5022 3002 1 0 1 \n\t\tSCS=rgb\n\tOSC=1\n\t\tSVT=5022 3002 2 \n\t\tCC=1\n\t\t\tC=16 0 2 3 2 3 0\n\t\t\tCPC=0\n#NT=20177 0\n\tPC=5\n\tname=1 v=5000 normal_map\n\tposx=1 v=2003 440.000000\n\tposy=1 v=2003 -60.000000\n\tencoding=2 e=0 v=5012 2\n\tuiorder=2 e=0 v=2002 2\n\tgroup=-1\n\tISC=2\n\t\tSVT=5022 3001 1 0 0 \n\t\tSVT=5022 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5022 3003 3 \n\t\tCC=1\n\t\t\tC=17 0 3 16 0 1 0\n\t\t\tCPC=0\n#NT=20177 0\n"
		+ "\tPC=6\n\tname=1 v=5000 metallic_map\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 240.000000\n\tencoding=2 e=0 v=5012 0\n\tfilter=2 e=0 v=5012 1\n\tuiorder=2 e=0 v=2002 3\n\tgroup=-1\n\tISC=2\n\t\tSVT=5022 3001 1 0 0 \n\t\tSVT=5022 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5022 3003 3 \n\t\tCC=1\n\t\t\tC=18 0 3 0 2 3 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=6\n\tname=1 v=5000 use_metallic_map\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 180.000000\n\ttype=2 e=0 v=5012 0\n\tuitype=2 e=0 v=5012 1\n\tuiorder=2 e=0 v=2002 12\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 2003 1 \n\t\tCC=1\n\t\t\tC=19 0 1 0 0 1 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=5\n\tname=1 v=5000 metallic\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 340.000000\n\ttype=2 e=0 v=5012 0\n\tuiorder=2 e=0 v=2002 21\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 2003 1 \n\t\tCC=1\n\t\t\tC=20 0 1 0 3 4 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=6\n\tname=1 v=5000 use_roughness_map\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 480.000000\n\ttype=2 e=0 v=5012 0\n\tuitype=2 e=0 v=5012 1\n\tuiorder=2 e=0 v=2002 13\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 2003 1 \n\t\tCC=1\n\t\t\tC=21 0 1 4 0 1 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=6\n\tname=1 v=5000 roughness\n"
		+ "\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 640.000000\n\ttype=2 e=0 v=5012 0\n\tdefaultscalar=2 e=0 v=2003 0.330000\n\tuiorder=2 e=0 v=2002 22\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 2003 1 \n\t\tCC=1\n\t\t\tC=22 0 1 4 3 4 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=5\n\tname=1 v=5000 emissive\n\tposx=1 v=2003 420.000000\n\tposy=1 v=2003 880.000000\n\ttype=2 e=0 v=5012 2\n\tuiorder=2 e=0 v=2002 23\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 3002 1 \n\t\tCC=1\n\t\t\tC=23 0 1 1 3 4 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=6\n\tname=1 v=5000 use_emissive_map\n\tposx=1 v=2003 420.000000\n\tposy=1 v=2003 720.000000\n\ttype=2 e=0 v=5012 0\n\tuitype=2 e=0 v=5012 1\n\tuiorder=2 e=0 v=2002 14\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 2003 1 \n\t\tCC=1\n\t\t\tC=24 0 1 1 0 1 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=6\n\tname=1 v=5000 use_ao_map\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 1100.000000\n\ttype=2 e=0 v=5012 0\n\tuitype=2 e=0 v=5012 1\n\tuiorder=2 e=0 v=2002 15\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 2003 1 \n\t\tCC=1\n\t\t\tC=25 0 1 6 0 1 0\n\t\t\tCPC=0\n#NT=20177 0\n\tPC=6\n\tname=1 v=5000 ao_map\n\tposx=1 v=2003 700.000000\n\tposy=1 v=2003 1160.000000\n\tencoding=2 e=0 v=5012 0\n"
		+ "\tfilter=2 e=0 v=5012 1\n\tuiorder=2 e=0 v=2002 6\n\tgroup=-1\n\tISC=2\n\t\tSVT=5022 3001 1 0 0 \n\t\tSVT=5022 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5022 3003 3 \n\t\tCC=1\n\t\t\tC=26 0 3 6 2 3 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=6\n\tname=1 v=5000 emissive_intensity\n\tposx=1 v=2003 740.000000\n\tposy=1 v=2003 920.000000\n\ttype=2 e=0 v=5012 0\n\tmaxrange=2 e=0 v=2003 10.000000\n\tuiorder=2 e=0 v=2002 53\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 2003 1 \n\t\tCC=1\n\t\t\tC=27 0 1 10 1 2 0\n\t\t\tCPC=0\n#NT=20186 0\n\tPC=2\n\tposx=1 v=2003 -60.000000\n\tposy=1 v=2003 400.000000\n\tgroup=-1\n\tISC=2\n\t\tSVT=5022 3001 1 0 0 \n\t\tSVT=5022 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5022 3001 3 \n\t\tCC=1\n\t\t\tC=28 0 3 29 1 2 0\n\t\t\tCPC=0\n#NT=20187 0\n\tPC=2\n\tposx=1 v=2003 120.000000\n\tposy=1 v=2003 400.000000\n\tgroup=-1\n\tISC=2\n\t\tSVT=5022 3001 1 0 0 \n\t\tSVT=5022 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5022 3001 3 \n\t\tCC=6\n\t\t\tC=29 0 3 12 0 1 0\n\t\t\tCPC=0\n\t\t\tC=29 0 3 17 0 1 0\n\t\t\tCPC=0\n\t\t\tC=29 0 3 18 0 1 0\n\t\t\tCPC=0\n\t\t\tC=29 0 3 8 0 1 0\n\t\t\tCPC=0\n\t\t\tC=29 0 3 9 0 1 0\n\t\t\tCPC=0\n\t\t\tC=29 0 3 26 0 1 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=7\n\tname=1 v=5000 uv_offset\n\tposx=1 v=2003 -60.000000\n"
		+ "\tposy=1 v=2003 340.000000\n\ttype=2 e=0 v=5012 1\n\tminrange=2 e=0 v=2003 -100001.000000\n\tmaxrange=2 e=0 v=2003 100001.000000\n\tuiorder=2 e=0 v=2002 60\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 3001 1 \n\t\tCC=1\n\t\t\tC=30 0 1 29 0 1 0\n\t\t\tCPC=0\n#NT=20185 0\n\tPC=9\n\tname=1 v=5000 uv_scale\n\tposx=1 v=2003 -240.000000\n\tposy=1 v=2003 340.000000\n\ttype=2 e=0 v=5012 1\n\tdefaultvectwo=2 e=0 v=3001 1.000000,1.000000\n\tdefaultvector=2 e=0 v=3003 1.000000,1.000000,0.000000,0.000000\n\tminrange=2 e=0 v=2003 -100001.000000\n\tmaxrange=2 e=0 v=2003 100001.000000\n\tuiorder=2 e=0 v=2002 61\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5022 3001 1 \n\t\tCC=1\n\t\t\tC=31 0 1 28 0 1 0\n\t\t\tCPC=0\n\n */ } \nconnections = [\n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"aca690cb-6305-4a2f-bf3d-69183a493db3\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb6\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb3\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"CED7BBF3-0B48-4335-B933-095A41CA0294\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb3\" \n\t\t} \n\t\tsource = { \n"
		+ "\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab12\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"4CBB4480-79E8-4CE7-AC0F-8B09BAF12390\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb3\" \n\t\t} \n\t\tselect = [ \n\t\t\t\"rgb\" \n\t\t\t] \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab13\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"1ee9af1f-65f2-4739-ad28-5ea6a0e68fc3\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab13\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab30\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"1ee9af1f-65f2-4739-ad28-5ea6a0e68fc3\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab18\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab30\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"1ee9af1f-65f2-4739-ad28-5ea6a0e68fc3\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab19\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab30\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"1ee9af1f-65f2-4739-ad28-5ea6a0e68fc3\" \n"
		+ "\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb9\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab30\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"1ee9af1f-65f2-4739-ad28-5ea6a0e68fc3\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab10\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab30\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"1ee9af1f-65f2-4739-ad28-5ea6a0e68fc3\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab27\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab30\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"f72597c4-7487-419a-affb-df690e6582e1\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab30\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab31\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"0806db0d-2c4a-43ca-99cc-f5a2f036a8e8\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab30\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab29\" \n"
		+ "\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"c5823c75-4ae5-4c71-b070-315fa4d03e8e\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab29\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab32\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"242d1648-a626-445b-9534-bccec094112f\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab29\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb8\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"F2F74E58-402D-472B-87DD-331E00DB416C\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb3\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab14\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"b1c86408-aacb-4466-b754-ddcf37a3a2c8\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb6\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb4\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"CED7BBF3-0B48-4335-B933-095A41CA0294\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb4\" \n"
		+ "\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab15\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"4CBB4480-79E8-4CE7-AC0F-8B09BAF12390\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb4\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab17\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"f72597c4-7487-419a-affb-df690e6582e1\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab17\" \n\t\t} \n\t\tselect = [ \n\t\t\t\"rgb\" \n\t\t\t] \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab18\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"F2F74E58-402D-472B-87DD-331E00DB416C\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb4\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab16\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"ad5e052f-d316-4a0f-8b79-53c38204d61b\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb6\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb1\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n"
		+ "\t\t\tconnector_id = \"CED7BBF3-0B48-4335-B933-095A41CA0294\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb1\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab20\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"4CBB4480-79E8-4CE7-AC0F-8B09BAF12390\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb1\" \n\t\t} \n\t\tselect = [ \n\t\t\t\"r\" \n\t\t\t] \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab19\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"F2F74E58-402D-472B-87DD-331E00DB416C\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb1\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab21\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"36ba46d2-f6ea-4e60-a428-fdc17c75bc62\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb6\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb5\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"CED7BBF3-0B48-4335-B933-095A41CA0294\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb5\" \n"
		+ "\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab22\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"4CBB4480-79E8-4CE7-AC0F-8B09BAF12390\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb5\" \n\t\t} \n\t\tselect = [ \n\t\t\t\"r\" \n\t\t\t] \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb9\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"F2F74E58-402D-472B-87DD-331E00DB416C\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb5\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab23\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"1164a5ef-4563-4795-b3b5-42825d6df037\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb6\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab11\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"c5823c75-4ae5-4c71-b070-315fa4d03e8e\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab11\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb2\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n"
		+ "\t\t\tconnector_id = \"CED7BBF3-0B48-4335-B933-095A41CA0294\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb2\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab25\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"4CBB4480-79E8-4CE7-AC0F-8B09BAF12390\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb2\" \n\t\t} \n\t\tselect = [ \n\t\t\t\"rgb\" \n\t\t\t] \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab10\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"F2F74E58-402D-472B-87DD-331E00DB416C\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb2\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab24\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"242d1648-a626-445b-9534-bccec094112f\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab11\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab28\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"59fd1cf4-f736-470d-8510-1dd7c016639e\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb6\" \n"
		+ "\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb7\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"CED7BBF3-0B48-4335-B933-095A41CA0294\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb7\" \n\t\t} \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab26\" \n\t\t} \n\t} \n\t{ \n\t\tdestination = { \n\t\t\tconnector_id = \"4CBB4480-79E8-4CE7-AC0F-8B09BAF12390\" \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb7\" \n\t\t} \n\t\tselect = [ \n\t\t\t\"r\" \n\t\t\t] \n\t\tsource = { \n\t\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaab27\" \n\t\t} \n\t} \n]\nconstants = [\n\t{ \n\t\tconnector_id = \"39BC7619-2768-480B-ACFD-63FA66EF6905\" \n\t\tid = \"1bbaabba-abba-abba-abba-abbaabbaabb3\" \n\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb3\" \n\t\tvalue = [ \n\t\t\t1.000000\n\t\t] \n\t} \n\t{ \n\t\tconnector_id = \"39BC7619-2768-480B-ACFD-63FA66EF6905\" \n\t\tid = \"1bbaabba-abba-abba-abba-abbaabbaabb4\" \n\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb4\" \n\t\tvalue = [ \n\t\t\t1.000000\n\t\t] \n\t} \n\t{ \n\t\tconnector_id = \"39BC7619-2768-480B-ACFD-63FA66EF6905\" \n"
		+ "\t\tid = \"1bbaabba-abba-abba-abba-abbaabbaabb1\" \n\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb1\" \n\t\tvalue = [ \n\t\t\t1.000000\n\t\t] \n\t} \n\t{ \n\t\tconnector_id = \"39BC7619-2768-480B-ACFD-63FA66EF6905\" \n\t\tid = \"1bbaabba-abba-abba-abba-abbaabbaabb5\" \n\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb5\" \n\t\tvalue = [ \n\t\t\t1.000000\n\t\t] \n\t} \n\t{ \n\t\tconnector_id = \"39BC7619-2768-480B-ACFD-63FA66EF6905\" \n\t\tid = \"1bbaabba-abba-abba-abba-abbaabbaabb2\" \n\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb2\" \n\t\tvalue = [ \n\t\t\t1.000000\n\t\t] \n\t} \n\t{ \n\t\tconnector_id = \"39BC7619-2768-480B-ACFD-63FA66EF6905\" \n\t\tid = \"1bbaabba-abba-abba-abba-abbaabbaabb7\" \n\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb7\" \n\t\tvalue = [ \n\t\t\t1.000000\n\t\t] \n\t} \n\t{ \n\t\tconnector_id = \"F2F74E58-402D-472B-87DD-331E00DB416C\" \n\t\tid = \"3bbaabba-abba-abba-abba-abbaabbaabb7\" \n\t\tinstance_id = \"abbaabba-abba-abba-abba-abbaabbaabb7\" \n\t\tvalue = [ \n\t\t\t1.000000\n\t\t] \n\t} \n]\nnodes = [\n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaabb6\" \n"
		+ "\t\toptions = [ \n\t\t\t\"2b136447-676e-4943-997b-04a28ae68497\"\n\t\t] \n\t\tposition = [ \n\t\t\t1360 \n\t\t\t260 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Standard Base\" \n\t\ttype = \"core/stingray_renderer/output_nodes/standard_base\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaabb3\" \n\t\toptions = [ \n\t\t\t\"9A84282B-F1A2-46D4-9FC4-5A76FC9B30DD\"\n\t\t] \n\t\tposition = [ \n\t\t\t1020 \n\t\t\t-340 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Color Map Switch\" \n\t\ttype = \"core/shader_nodes/if\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Use Color Map\" \n\t\t\t\tname = \"use_color_map\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = 1 \n\t\t\t\t\tmin = 0.000000 \n\t\t\t\t\tstep = 1 \n\t\t\t\t\torder = 10 \n\t\t\t\t\tui_type = \"checkbox\" \n\t\t\t\t} \n\t\t\t\ttype = \"float\" \n\t\t\t\tvalue = 1.000000 \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab12\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t-400 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Use Color Map\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n"
		+ "\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab13\" \n\t\toptions = [ \n\t\t\t\"1e067464-12d8-4826-9b72-cfd5765003e3\"\n\t\t\t\"fb3f709b-a54a-4e93-ac9f-e9fc76fb8bcd\"\n\t\t\t\"5dd59b3d-1762-4a14-9930-7500230ef3db\"\n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t-340 \n\t\t] \n\t\tsamplers = { \n\t\t\ttexture_map = { \n\t\t\t\tdisplay_name = \"Color Map\" \n\t\t\t\tslot_name = \"color_map\" \n\t\t\t\tui = { \n\t\t\t\t\torder = 1 \n\t\t\t\t} \n\t\t\t} \n\t\t} \n\t\ttitle = \"Color Map\" \n\t\ttype = \"core/shader_nodes/sample_texture\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab30\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t120 \n\t\t\t400 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Add\" \n\t\ttype = \"core/shader_nodes/add\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Uv Offset\" \n\t\t\t\tname = \"uv_offset\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = [ 100001.000000 100001.000000 ] \n\t\t\t\t\tmin = [ -100001.000000 -100001.000000 ] \n\t\t\t\t\tstep = [ 0.01 0.01 ] \n\t\t\t\t\torder = 60 \n"
		+ "\t\t\t\t} \n\t\t\t\ttype = \"float2\" \n\t\t\t\tvalue = [0.000000 0.000000] \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab31\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t-60 \n\t\t\t340 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Uv Offset\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab29\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t-60 \n\t\t\t400 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Multiply\" \n\t\ttype = \"core/shader_nodes/mul\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Uv Scale\" \n\t\t\t\tname = \"uv_scale\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = [ 100001.000000 100001.000000 ] \n\t\t\t\t\tmin = [ -100001.000000 -100001.000000 ] \n\t\t\t\t\tstep = [ 0.01 0.01 ] \n\t\t\t\t\torder = 61 \n\t\t\t\t} \n\t\t\t\ttype = \"float2\" \n\t\t\t\tvalue = [1.000000 1.000000] \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab32\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t-240 \n\t\t\t340 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Uv Scale\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n"
		+ "\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaabb8\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t-260 \n\t\t\t420 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Texcoord0\" \n\t\ttype = \"core/shader_nodes/texture_coordinate0\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Base Color\" \n\t\t\t\tname = \"base_color\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = [ 1.000000 1.000000 1.000000 ] \n\t\t\t\t\tmin = [ 0.000000 0.000000 0.000000 ] \n\t\t\t\t\tstep = [ 0.01 0.01 0.01 ] \n\t\t\t\t\torder = 20 \n\t\t\t\t\tui_type = \"color\" \n\t\t\t\t} \n\t\t\t\ttype = \"float3\" \n\t\t\t\tvalue = [0.500000 0.500000 0.500000] \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab14\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t-240 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Base Color\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaabb4\" \n\t\toptions = [ \n\t\t\t\"9A84282B-F1A2-46D4-9FC4-5A76FC9B30DD\"\n"
		+ "\t\t] \n\t\tposition = [ \n\t\t\t1020 \n\t\t\t-60 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Normal Map Switch\" \n\t\ttype = \"core/shader_nodes/if\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Use Normal Map\" \n\t\t\t\tname = \"use_normal_map\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = 1 \n\t\t\t\t\tmin = 0.000000 \n\t\t\t\t\tstep = 1 \n\t\t\t\t\torder = 11 \n\t\t\t\t\tui_type = \"checkbox\" \n\t\t\t\t} \n\t\t\t\ttype = \"float\" \n\t\t\t\tvalue = 0.000000 \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab15\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t-120 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Use Normal Map\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab17\" \n\t\toptions = [ \n\t\t\t\"0a0fb5ad-145d-4229-abd4-5b36562607b3\"\n\t\t] \n\t\tposition = [ \n\t\t\t740 \n\t\t\t-60 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Tangent To World\" \n\t\ttype = \"core/shader_nodes/tangent_to_world\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n"
		+ "\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab18\" \n\t\toptions = [ \n\t\t\t\"1e067464-12d8-4826-9b72-cfd5765003e3\"\n\t\t\t\"90e20826-8689-42fa-8e24-f484ec64c5c3\"\n\t\t\t\"5dd59b3d-1762-4a14-9930-7500230ef3db\"\n\t\t] \n\t\tposition = [ \n\t\t\t440 \n\t\t\t-60 \n\t\t] \n\t\tsamplers = { \n\t\t\ttexture_map = { \n\t\t\t\tdisplay_name = \"Normal Map\" \n\t\t\t\tslot_name = \"normal_map\" \n\t\t\t\tui = { \n\t\t\t\t\torder = 2 \n\t\t\t\t} \n\t\t\t} \n\t\t} \n\t\ttitle = \"Normal Map\" \n\t\ttype = \"core/shader_nodes/sample_texture\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab16\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t680 \n\t\t\t60 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"World Normal\" \n\t\ttype = \"core/shader_nodes/world_space_normal\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaabb1\" \n\t\toptions = [ \n\t\t\t\"9A84282B-F1A2-46D4-9FC4-5A76FC9B30DD\"\n\t\t] \n\t\tposition = [ \n\t\t\t1020 \n\t\t\t240 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Metallic Map Switch\" \n\t\ttype = \"core/shader_nodes/if\" \n\t} \n\t{ \n\t\tcontent_size = [ \n"
		+ "\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Use Metallic Map\" \n\t\t\t\tname = \"use_metallic_map\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = 1 \n\t\t\t\t\tmin = 0.000000 \n\t\t\t\t\tstep = 1 \n\t\t\t\t\torder = 12 \n\t\t\t\t\tui_type = \"checkbox\" \n\t\t\t\t} \n\t\t\t\ttype = \"float\" \n\t\t\t\tvalue = 0.000000 \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab20\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t180 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Use Metallic Map\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab19\" \n\t\toptions = [ \n\t\t\t\"f669a3a6-0376-4187-840e-80000e2939d5\"\n\t\t\t\"e94e53e6-49b6-4194-a747-8f064a5932e0\"\n\t\t\t\"5dd59b3d-1762-4a14-9930-7500230ef3db\"\n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t240 \n\t\t] \n\t\tsamplers = { \n\t\t\ttexture_map = { \n\t\t\t\tdisplay_name = \"Metallic Map\" \n\t\t\t\tslot_name = \"metallic_map\" \n\t\t\t\tui = { \n\t\t\t\t\torder = 3 \n\t\t\t\t} \n\t\t\t} \n\t\t} \n\t\ttitle = \"Metallic Map\" \n\t\ttype = \"core/shader_nodes/sample_texture\" \n\t} \n\t{ \n\t\tcontent_size = [ \n"
		+ "\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Metallic\" \n\t\t\t\tname = \"metallic\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = 1.000000 \n\t\t\t\t\tmin = 0.000000 \n\t\t\t\t\tstep = 0.01 \n\t\t\t\t\torder = 21 \n\t\t\t\t} \n\t\t\t\ttype = \"float\" \n\t\t\t\tvalue = 0.000000 \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab21\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t340 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Metallic\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaabb5\" \n\t\toptions = [ \n\t\t\t\"9A84282B-F1A2-46D4-9FC4-5A76FC9B30DD\"\n\t\t] \n\t\tposition = [ \n\t\t\t1020 \n\t\t\t540 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Roughness Map Switch\" \n\t\ttype = \"core/shader_nodes/if\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Use Roughness Map\" \n\t\t\t\tname = \"use_roughness_map\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = 1 \n\t\t\t\t\tmin = 0.000000 \n\t\t\t\t\tstep = 1 \n\t\t\t\t\torder = 13 \n\t\t\t\t\tui_type = \"checkbox\" \n\t\t\t\t} \n"
		+ "\t\t\t\ttype = \"float\" \n\t\t\t\tvalue = 0.000000 \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab22\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t480 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Use Roughness Map\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaabb9\" \n\t\toptions = [ \n\t\t\t\"1e067464-12d8-4826-9b72-cfd5765003e3\"\n\t\t\t\"e94e53e6-49b6-4194-a747-8f064a5932e0\"\n\t\t\t\"5dd59b3d-1762-4a14-9930-7500230ef3db\"\n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t540 \n\t\t] \n\t\tsamplers = { \n\t\t\ttexture_map = { \n\t\t\t\tdisplay_name = \"Roughness Map\" \n\t\t\t\tslot_name = \"roughness_map\" \n\t\t\t\tui = { \n\t\t\t\t\torder = 4 \n\t\t\t\t} \n\t\t\t} \n\t\t} \n\t\ttitle = \"Roughness Map\" \n\t\ttype = \"core/shader_nodes/sample_texture\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Roughness\" \n\t\t\t\tname = \"roughness\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = 1.000000 \n\t\t\t\t\tmin = 0.000000 \n\t\t\t\t\tstep = 0.01 \n\t\t\t\t\torder = 22 \n\t\t\t\t} \n\t\t\t\ttype = \"float\" \n"
		+ "\t\t\t\tvalue = 0.330000 \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab23\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t640 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Roughness\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab11\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t1020 \n\t\t\t840 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Multiply\" \n\t\ttype = \"core/shader_nodes/mul\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaabb2\" \n\t\toptions = [ \n\t\t\t\"9A84282B-F1A2-46D4-9FC4-5A76FC9B30DD\"\n\t\t] \n\t\tposition = [ \n\t\t\t740 \n\t\t\t780 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Emissive Map Switch\" \n\t\ttype = \"core/shader_nodes/if\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Use Emissive Map\" \n\t\t\t\tname = \"use_emissive_map\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = 1 \n\t\t\t\t\tmin = 0.000000 \n\t\t\t\t\tstep = 1 \n\t\t\t\t\torder = 14 \n\t\t\t\t\tui_type = \"checkbox\" \n"
		+ "\t\t\t\t} \n\t\t\t\ttype = \"float\" \n\t\t\t\tvalue = 0.000000 \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab25\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t420 \n\t\t\t720 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Use Emissive Map\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab10\" \n\t\toptions = [ \n\t\t\t\"1e067464-12d8-4826-9b72-cfd5765003e3\"\n\t\t\t\"fb3f709b-a54a-4e93-ac9f-e9fc76fb8bcd\"\n\t\t\t\"5dd59b3d-1762-4a14-9930-7500230ef3db\"\n\t\t] \n\t\tposition = [ \n\t\t\t420 \n\t\t\t780 \n\t\t] \n\t\tsamplers = { \n\t\t\ttexture_map = { \n\t\t\t\tdisplay_name = \"Emissive Map\" \n\t\t\t\tslot_name = \"emissive_map\" \n\t\t\t\tui = { \n\t\t\t\t\torder = 5 \n\t\t\t\t} \n\t\t\t} \n\t\t} \n\t\ttitle = \"Emissive Map\" \n\t\ttype = \"core/shader_nodes/sample_texture\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Emissive\" \n\t\t\t\tname = \"emissive\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = [ 1.000000 1.000000 1.000000 ] \n\t\t\t\t\tmin = [ 0.000000 0.000000 0.000000 ] \n\t\t\t\t\tstep = [ 0.01 0.01 0.01 ] \n"
		+ "\t\t\t\t\torder = 23 \n\t\t\t\t\tui_type = \"color\" \n\t\t\t\t} \n\t\t\t\ttype = \"float3\" \n\t\t\t\tvalue = [0.000000 0.000000 0.000000] \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab24\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t420 \n\t\t\t880 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Emissive\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Emissive Intensity\" \n\t\t\t\tname = \"emissive_intensity\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = 10.000000 \n\t\t\t\t\tmin = 0.000000 \n\t\t\t\t\tstep = 0.01 \n\t\t\t\t\torder = 53 \n\t\t\t\t} \n\t\t\t\ttype = \"float\" \n\t\t\t\tvalue = 0.000000 \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab28\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t740 \n\t\t\t920 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Emissive Intensity\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaabb7\" \n\t\toptions = [ \n\t\t\t\"9A84282B-F1A2-46D4-9FC4-5A76FC9B30DD\"\n\t\t] \n\t\tposition = [ \n\t\t\t1020 \n"
		+ "\t\t\t1100 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Ao Map Swtich\" \n\t\ttype = \"core/shader_nodes/if\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t\tmaterial_variable = { \n\t\t\t\tdisplay_name = \"Use Ao Map\" \n\t\t\t\tname = \"use_ao_map\" \n\t\t\t\tui = { \n\t\t\t\t\tmax = 1 \n\t\t\t\t\tmin = 0.000000 \n\t\t\t\t\tstep = 1 \n\t\t\t\t\torder = 15 \n\t\t\t\t\tui_type = \"checkbox\" \n\t\t\t\t} \n\t\t\t\ttype = \"float\" \n\t\t\t\tvalue = 0.000000 \n\t\t\t} \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab26\" \n\t\toptions = [ \n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t1100 \n\t\t] \n\t\tsamplers = { \n\t\t} \n\t\ttitle = \"Use Ao Map\" \n\t\ttype = \"core/shader_nodes/material_variable\" \n\t} \n\t{ \n\t\tcontent_size = [ \n\t\t\t160 \n\t\t\t0 \n\t\t] \n\t\texport = { \n\t\t} \n\t\tid = \"abbaabba-abba-abba-abba-abbaabbaab27\" \n\t\toptions = [ \n\t\t\t\"f669a3a6-0376-4187-840e-80000e2939d5\"\n\t\t\t\"e94e53e6-49b6-4194-a747-8f064a5932e0\"\n\t\t\t\"5dd59b3d-1762-4a14-9930-7500230ef3db\"\n\t\t] \n\t\tposition = [ \n\t\t\t700 \n\t\t\t1160 \n\t\t] \n\t\tsamplers = { \n\t\t\ttexture_map = { \n\t\t\t\tdisplay_name = \"Ao Map\" \n\t\t\t\tslot_name = \"ao_map\" \n\t\t\t\tui = { \n\t\t\t\t\torder = 6 \n\t\t\t\t} \n"
		+ "\t\t\t} \n\t\t} \n\t\ttitle = \"Ao Map\" \n\t\ttype = \"core/shader_nodes/sample_texture\" \n\t} \n]\nversion = 3\n");
	setAttr ".sprm" -type "string" "TEX_global_diffuse_cube~278~TEX_global_specular_cube~278~TEX_brdf_lut~278~use_normal_map~317~uv_offset~318~uv_scale~318~TEX_normal_map~278~use_color_map~317~TEX_color_map~278~base_color~319~use_metallic_map~317~TEX_metallic_map~278~metallic~317~use_roughness_map~317~TEX_roughness_map~278~roughness~317~use_emissive_map~317~TEX_emissive_map~278~emissive~319~emissive_intensity~317~use_ao_map~317~TEX_ao_map~278~";
	setAttr -k on ".use_color_map" 1;
	setAttr -k on ".base_color";
createNode shadingEngine -n "StingrayPBS1SG";
	rename -uid "E00425EF-452D-6186-C5D6-7BABC25A695D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "2AE9F588-4B4F-C40E-FFBE-FE835105993F";
createNode file -n "file1";
	rename -uid "8265B81E-44D1-D062-9E4E-11A8944E6029";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Maya2018/presets/ShaderFX/Images/PBS/midday/diffuse_cube.dds";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file2";
	rename -uid "C3270A11-4867-D5D2-8476-7E8425DF72D4";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Maya2018/presets/ShaderFX/Images/PBS/midday/specular_cube.dds";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file3";
	rename -uid "2C02CD3C-41F2-FAC4-063B-809E320B832C";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Maya2018/presets/ShaderFX/Images/PBS/ibl_brdf_lut.dds";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file4";
	rename -uid "899C5DD1-4954-F9B1-4C3C-049F0F488FBC";
	setAttr ".ftn" -type "string" "C:/dev/glTF/Maya2glTF//textures/6 digits.png";
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "E17B8260-444A-95C0-1D9B-8B9DC8545534";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.042580307 0 0.040188968
		 0 -0.042580307 -0.002022177 0.040188968 -0.0018918216 -0.042405546 -0.0037836432
		 0.040188968 -0.0037836432 -0.042405546 -0.0056754947 0.040188968 -0.0056754947 -0.042405546
		 -0.0075672865 0.040188968 -0.0075672865 0.12278348 0 0.12278348 -0.0018918216 -0.125
		 0 -0.125 -0.002022177;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "E8ECF093-4679-9125-C319-EBB5E7F0BCC1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "9093EA87-43F7-2C47-98EB-B291214B3C06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV3";
	rename -uid "9AE47A8B-4BEE-D25D-1360-C0926067C3B8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV4";
	rename -uid "F6C8851F-4E15-098A-B407-D781FC486C64";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV5";
	rename -uid "29BDF02D-4625-4F52-D28C-47A143F76485";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV6";
	rename -uid "9FA496F6-4B92-95CF-3598-8AB10518B6DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV7";
	rename -uid "FE8FAC63-4C26-BC90-0258-B4BB32238897";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "8723A45A-4CAC-C12F-4DBA-7BBD1D8B6236";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.33315814 -0.66684186 0.66666663
		 -0.33333337 0.084629416 -0.41831321 0.41800725 -0.084674045 -0.16398549 -0.16934809
		 0.16934788 0.16398531 -0.41264474 0.079311192 -0.079311371 0.41264457 -0.66130424
		 0.32797062 -0.32797074 0.661304 1 0 0.75134063 0.24865934 0 -1 -0.24852872 -0.75147134;
createNode polyLayoutUV -n "polyLayoutUV8";
	rename -uid "B97137DE-4E0C-81E0-0E23-9BB7C5627B7C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "4B78A133-4B42-7689-8A04-D0B31B7005C5";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.33315814 -0.66684186 0.66666663
		 -0.33333337 0.084629476 -0.41831324 0.41800731 -0.084674075 -0.16398549 -0.16934818
		 0.16934788 0.16398525 -0.41264486 0.079311132 -0.079311371 0.41264451 -0.66130424
		 0.3279705 -0.32797074 0.661304 1 0 0.75134063 0.24865934 0 -1 -0.24852872 -0.7514714;
createNode polyLayoutUV -n "polyLayoutUV9";
	rename -uid "8FB3FA85-4A66-9FD9-9BDA-C191652E4EA5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "AD61F527-44B7-F3B9-5604-63B36F119FD9";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.33315814 -0.66684186 0.66666663
		 -0.33333337 0.084629536 -0.41831326 0.41800737 -0.084674105 -0.16398549 -0.16934827
		 0.16934788 0.16398525 -0.41264498 0.079311073 -0.07931149 0.41264457 -0.66130424
		 0.3279705 -0.32797074 0.661304 1 0 0.75134063 0.24865934 0 -1 -0.2485286 -0.75147146;
createNode polyLayoutUV -n "polyLayoutUV10";
	rename -uid "7781BC14-476E-4B45-38C6-DCA880C49A3D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "B028DE75-4175-7245-BA16-B4AC866F5951";
	setAttr ".uopa" yes;
createNode polyLayoutUV -n "polyLayoutUV11";
	rename -uid "0F389E8B-4021-3ACD-9499-F9A410989ED7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "60301638-439F-F390-8E43-4BAA29F9F001";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[2:13]" -type "float2" 0 0.0014060587 0 0.0014060587
		 1.4901161e-07 0.0026813745 1.1920929e-07 0.0026813745 2.3841858e-07 0.0040220022
		 2.3841858e-07 0.0040220022 1.1920929e-07 0.0053626299 1.1920929e-07 0.0053626299
		 -2.6077032e-08 0 -2.6077032e-08 0.0014060587 0 0 0 0.0014060587;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "D35AC982-4A1E-0214-4734-C993CAE5AA9B";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "167CFBA2-4E39-D1EB-68CA-80BB099F5B28";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "3A7C8B5D-4618-1E79-956F-209D81B6EC13";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode polyNormal -n "polyNormal1";
	rename -uid "1BCD2A9B-48A0-EAF4-32EF-CDB3B1351C88";
	setAttr ".ics" -type "componentList" 1 "f[0:2]";
	setAttr ".unm" no;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B0D606B6-4D79-3CAB-37A0-F0A21ACCAE66";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 524\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1172\n            -height 524\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 919\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -frameRange -212 10812 \n                -initialized 1\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 919\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 919\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "96B4A410-4441-2B90-5810-8E89E3CCB7E1";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -av -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
connectAttr "polyNormal1.out" "pCubeShape1.i";
connectAttr "polyTweakUV6.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "StingrayPBS1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "StingrayPBS1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "StingrayPBS1.TEX_global_diffuse_cube";
connectAttr "file2.oc" "StingrayPBS1.TEX_global_specular_cube";
connectAttr "file3.oc" "StingrayPBS1.TEX_brdf_lut";
connectAttr "file4.oc" "StingrayPBS1.TEX_color_map";
connectAttr "StingrayPBS1.oc" "StingrayPBS1SG.ss";
connectAttr "pCubeShape1.iog" "StingrayPBS1SG.dsm" -na;
connectAttr "StingrayPBS1SG.msg" "materialInfo1.sg";
connectAttr "StingrayPBS1.msg" "materialInfo1.m";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "polyCube1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyLayoutUV2.ip";
connectAttr "polyLayoutUV2.out" "polyLayoutUV3.ip";
connectAttr "polyLayoutUV3.out" "polyLayoutUV4.ip";
connectAttr "polyLayoutUV4.out" "polyLayoutUV5.ip";
connectAttr "polyLayoutUV5.out" "polyLayoutUV6.ip";
connectAttr "polyLayoutUV6.out" "polyLayoutUV7.ip";
connectAttr "polyLayoutUV7.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyLayoutUV8.ip";
connectAttr "polyLayoutUV8.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyLayoutUV9.ip";
connectAttr "polyLayoutUV9.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyLayoutUV10.ip";
connectAttr "polyLayoutUV10.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyLayoutUV11.ip";
connectAttr "polyLayoutUV11.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyNormal1.ip";
connectAttr "StingrayPBS1SG.pa" ":renderPartition.st" -na;
connectAttr "StingrayPBS1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
// End of three_faces_textured_pbs.ma
