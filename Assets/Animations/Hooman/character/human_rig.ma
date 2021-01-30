//Maya ASCII 2020 scene
//Name: human_rig.ma
//Last modified: Sat, Jan 30, 2021 07:13:49 PM
//Codeset: 1252
requires maya "2020";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202004291615-7bd99f0972";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18363)\n";
fileInfo "UUID" "260B4282-4BC8-FCD1-4FF5-C28276F1E3DA";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "0731C281-4A08-6F1F-FB5D-2798FDCC8AB6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 184.04205004562664 170.16344858130034 249.9379855630545 ;
	setAttr ".r" -type "double3" -15.938352729625587 31.800000000000317 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "330FA387-4CED-1A41-C35E-38AB5B811DBE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 342.92175461601607;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 12.227547628504794 0.50411208313796152 7.4660861946992565 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D62D4F5E-49E8-B8C8-BE6C-688B119C3DFA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6E601CC0-4806-D8C7-A498-B4B9720707D3";
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
	rename -uid "354090F2-4606-47D9-B9D6-1A8658A1780F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F48FB0B0-4502-85D7-C375-9CBEEBCF111C";
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
	rename -uid "513CD4F7-4F8A-B81A-B406-178940F42A86";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A71CF2E2-4D8C-930C-A611-C09B53D56B3E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "SK_Character_Male_Jacket";
	rename -uid "460FA84F-440B-039A-ED61-2783BC0995B3";
	setAttr ".r" -type "double3" -90 0 0 ;
createNode joint -n "Root" -p "|SK_Character_Male_Jacket";
	rename -uid "DA08113F-47DD-10C1-114F-A4A0E4F0D2E2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" 89.999984741210923 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999988079071067 0.99999988079071067 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 -2.6631600000000001e-07 0 0 2.6631600000000001e-07 1 0
		 0 0 0 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 2;
createNode joint -n "Pelvis" -p "Root";
	rename -uid "7F88632C-4B1B-87D8-3044-36A97F1208FD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98877499999999996 -0.14941199999999999 0 0 0.14941199999999999 0.98877499999999996 0
		 1 0 0 0 0 87.627599000000004 -2.3336599999999999e-05 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "spine_01" -p "Pelvis";
	rename -uid "9A5D8747-424B-FA52-699A-C7848B2FC838";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.99876399999999999 0.049695599999999999 0 0 0.049695599999999999 -0.99876399999999999 0
		 -1 0 0 0 0 97.904199000000006 -1.5529040000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "spine_02" -p "spine_01";
	rename -uid "EABA8FF7-4C30-4F26-BBDA-75AC9C65E57E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98927299999999996 -0.14607999999999999 0 0 0.14607999999999999 0.98927299999999996 0
		 1 0 0 0 0 116.03294099999999 -0.65087099999999998 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "spine_03" -p "spine_02";
	rename -uid "DA2F6438-4526-3D38-6C8C-B9AF39C5D31F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.99711099999999997 0.075962299999999996 0 0 0.075962299999999996 -0.99711099999999997 0
		 -1 0 0 0 0 133.744607 -3.2662529999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "neck_01" -p "spine_03";
	rename -uid "229348FB-41DD-6A2D-3668-ADA0E5899586";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98730300000000004 0.15885099999999999 0 0 0.15885099999999999 -0.98730200000000001 0
		 -1 0 0 0 0 144.90124599999999 -2.4163130000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "head" -p "neck_01";
	rename -uid "E78D5066-4560-D5E0-FB65-21BA2832FCC6";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 8.3223800000000004e-09 0 0 -8.3223800000000004e-09 1 0
		 0 156.911225 -0.483983 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "eyes" -p "head";
	rename -uid "EE128832-48A6-6DAD-623B-57BD6FA99A6A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 9.447606086730957 12.272214889526367 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 8.3223800000000004e-09 0 0 -8.3223800000000004e-09 1 0
		 0 166.35883000000001 11.788231 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "eyebrows" -p "head";
	rename -uid "4ABAA505-4767-1DC7-EFDF-A59EA9BC7CA2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 12.76692008972168 12.272214889526367 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 8.3223800000000004e-09 0 0 -8.3223800000000004e-09 1 0
		 0 169.678144 11.788231 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode parentConstraint -n "head_parentConstraint1" -p "head";
	rename -uid "FBF2200B-4C72-9E2A-D8CD-9AA61BFEAB90";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "head_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.2621774483536189e-29 8.5265128291212022e-14 
		3.9968028886505635e-15 ;
	setAttr ".tg[0].tor" -type "double3" 4.7683715291909218e-07 0 0 ;
	setAttr ".lr" -type "double3" 80.859801769256592 89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 12.164435386657772 -7.1054273576010019e-15 -6.6043192871468023e-15 ;
	setAttr ".rsrr" -type "double3" 80.859801769256592 90 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "neck_01_parentConstraint1" -p "neck_01";
	rename -uid "E5A6C89D-49F0-F0A1-9348-7FB0383637C4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck_01_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.6843418860808015e-14 0 -1.2621774483536189e-29 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 7.9513867036587919e-16 ;
	setAttr ".lr" -type "double3" 0 0 -4.7836804389953516 ;
	setAttr ".rst" -type "double3" 11.188967704773034 -8.8817841970012523e-15 -6.1678630165090131e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -4.7836804389953533 ;
	setAttr -k on ".w0";
createNode joint -n "clavicle_l" -p "spine_03";
	rename -uid "27D5A725-4CD4-FB6F-936E-65A7C217BCCF";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.88285199999999997 -0.0129835 -0.469472 0 0.0114634 0.99991600000000003 -0.0060959600000000001 0
		 0.46951100000000001 8.1596499999999986e-08 0.88292599999999999 0 7.4471530000000001 139.21062599999999 1.3537539999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "UpperArm_L" -p "clavicle_l";
	rename -uid "C1799D1F-46DF-C402-8AFE-28BF87E8A7D0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.99654200000000004 -0.082502099999999995 -0.0098807800000000005 0
		 0.082498100000000005 0.996591 -0.00081810400000000005 0 0.0099145899999999992 1.29536e-07 0.99995100000000003 0
		 19.098922000000002 139.03927200000001 -4.8422729999999996 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_l" -p "UpperArm_L";
	rename -uid "13714C8E-4846-AC93-87D0-40AEEC92FB4E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.99743199999999999 -4.9359799999999996e-08 0.071615300000000007 0
		 5.88298e-08 1 -1.3012500000000001e-07 0 -0.071615200000000004 1.3400399999999999e-07 0.99743199999999999 0
		 52.915553000000003 136.09412599999999 -5.3212010000000003 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Hand_L" -p "lowerarm_l";
	rename -uid "7BE74D98-4E68-694D-A0E5-829A5452AB3B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 27.114528656005859 0 -0.038136426359415054 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 -5.8829900000000006e-08 -2.3949399999999999e-07 0
		 5.88298e-08 1 -1.3012500000000001e-07 0 2.3949399999999999e-07 1.3012500000000001e-07 1 0
		 79.963190999999995 136.09412399999999 -3.4174259999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_l" -p "Hand_L";
	rename -uid "47284E75-42C1-EB5E-99F8-859FE5751962";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.5140478610992432 -1.1706916093826294 4.5055394172668457 ;
	setAttr ".r" -type "double3" 6.5782208442687988 -31.677152633666992 -12.385529518127441 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.83121400000000001 -0.182534 0.52513200000000004 0
		 0.15431800000000001 0.98319900000000005 0.097492400000000007 0 -0.53410500000000005 1.8531999999999999e-07 0.845418 0
		 83.477239999999995 134.92343299999999 1.0881130000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_l" -p "thumb_01_l";
	rename -uid "E6365961-4D81-D40A-0C44-5AB1D94C567D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 6.3702139854431223 -2.8421709430404007e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -6.5831432342529297 12.717245101928711 -17.147857666015625 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.84797500000000003 -0.45291500000000001 0.27532899999999999 0
		 0.43077700000000002 0.89155399999999996 0.13986899999999999 0 -0.30881999999999998 1.9497400000000001e-07 0.95112099999999999 0
		 88.772254000000004 133.760651 4.4333169999999997 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_l" -p "thumb_02_l";
	rename -uid "87E7287B-491C-A263-56F5-9C97437F27AF";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.6655697822570712 2.8421709430404007e-14 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" 0 17.988121032714844 26.930816650390625 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 -8.6480700000000005e-07 -2.67217e-07 0 8.6480700000000005e-07 1 7.5800500000000004e-08 0
		 2.67217e-07 -7.5800700000000002e-08 1 0 93.576515999999998 131.19462899999999 5.993214 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "indexFinger_01_l" -p "Hand_L";
	rename -uid "77F8589C-4395-2EA2-0C56-90BBFCAD9A6B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.396561622619629 0.39871513843536377 2.672649621963501 ;
	setAttr ".r" -type "double3" 0.064705096185207367 -7.5447292327880859 -0.49279087781906133 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.99130600000000002 -0.0085263000000000005 0.1313 0
		 0.0084524999999999999 0.99996399999999996 0.0011194099999999999 0 -0.13130500000000001 1.3647899999999999e-07 0.99134199999999995 0
		 90.359753999999995 136.492839 -0.74477899999999997 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "indexFinger_02_l" -p "indexFinger_01_l";
	rename -uid "D631BA5C-40FB-5F72-8EA3-7F9ABAFFFE56";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.0936317443847798 -5.6843418860808015e-14 0 ;
	setAttr ".r" -type "double3" -0.25268083810806274 1.2119487524032593 -11.289366722106934 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.97303099999999998 -0.204073 0.107544 0 0.20283799999999999 0.97895600000000005 0.022418400000000002 0
		 -0.10985499999999999 1.3659699999999999e-07 0.99394700000000002 0 94.417795999999996 136.45793599999999 -0.207285 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "indexFinger_03_l" -p "indexFinger_02_l";
	rename -uid "3A0DC046-4C3B-D7B9-9BD6-759A40205323";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.7911880016326904 -2.8421709430404007e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -0.95976769924163818 2.8972432613372803 -6.5621347427368164 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.94782200000000005 -0.31420900000000002 0.053904899999999999 0
		 0.31370199999999998 0.94935400000000003 0.0178409 0 -0.056780600000000001 1.20526e-07 0.99838700000000002 0
		 98.106738000000007 135.684258 0.200433 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "indexFinger_04_l" -p "indexFinger_03_l";
	rename -uid "721AA107-4079-3DCD-FD2A-05AFF2693F3C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.7797939777374125 0 0 ;
	setAttr ".r" -type "double3" 0 3.255049467086792 18.313068389892578 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 -2.89861e-07 -2.0623499999999999e-07 0 2.89861e-07 1 -1.0423500000000001e-07 0
		 2.0623499999999999e-07 1.0423500000000001e-07 1 0 101.68931000000001 134.496611 0.40418199999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "finger_01_l" -p "Hand_L";
	rename -uid "6443FDC7-423E-AAB4-5796-878A3C374786";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 9.9825258255004883 -0.11595893651247025 -3.2833402156829834 ;
	setAttr ".r" -type "double3" -0.57057112455368042 5.0056061744689941 -6.5113015174865723 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.98975999999999997 -0.112967 -0.087253399999999995 0
		 0.11253000000000001 0.99359900000000001 -0.0099203599999999996 0 0.087815599999999994 1.1579699999999999e-07 0.99613700000000005 0
		 89.945716000000004 135.97816399999999 -6.7007680000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "finger_02_l" -p "finger_01_l";
	rename -uid "E1DD5C94-4BBF-E8DB-F6AF-74816CCC8869";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.2488145828247355 0 -8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0.34985607862472534 -2.2268123626708984 -2.4447407722473145 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.98672800000000005 -0.15512899999999999 -0.047980000000000002 0
		 0.154946 0.98789400000000005 -0.0075344399999999999 0 0.048568 1.1053699999999999e-07 0.99882000000000004 0
		 94.151024000000007 135.498189 -7.071491 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "finger_03_l" -p "finger_02_l";
	rename -uid "3C7ED6E9-4ADF-0330-044C-20A444FD9BA1";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.513327360153184 -8.5265128291212022e-14 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" -2.8515739440917969 7.9666023254394531 -10.843832969665527 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.92415599999999998 -0.334951 -0.183697 0 0.32852300000000001 0.94223599999999996 -0.065301600000000001 0
		 0.19495899999999999 6.3928000000000002e-08 0.98081099999999999 0 97.617723999999995 134.953169 -7.2400609999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "finger_04_l" -p "finger_03_l";
	rename -uid "898E786D-44D4-D4F5-D657-84B7EEBB8306";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.0032393932342671 -2.8421709430404007e-14 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 0 -11.242292404174805 19.569507598876953 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 -4.2681100000000002e-07 -2.9199499999999999e-07 0
		 4.2681100000000002e-07 1 -1.5001700000000001e-07 0 2.9199499999999999e-07 1.5001700000000001e-07 1 0
		 100.39318400000001 133.94723200000001 -7.791747 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "Hand_L_orientConstraint1" -p "Hand_L";
	rename -uid "29EB4562-4D62-59DC-A279-45BE069420FE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hand_L_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 3.1694326083632156e-06 4.1067812311716922 0 ;
	setAttr ".rsrr" -type "double3" 0 4.1067814937508293 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "lowerarm_l_parentConstraint1" -p "lowerarm_l";
	rename -uid "E2121413-456C-0A34-C74B-059E589D6CB6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_l_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.1431213187715912e-09 3.6876230069537996e-08 
		-9.3032603842857498e-10 ;
	setAttr ".tg[0].tor" -type "double3" 1.852844012537039e-07 -2.1429653492566215e-08 
		-5.1961177836631806e-07 ;
	setAttr ".lr" -type "double3" -2.2777456619165251e-07 -4.6748409056943725 4.73240046183688 ;
	setAttr ".rst" -type "double3" 33.947402954101577 -0.1449070870876028 -0.14362642168999251 ;
	setAttr ".rsrr" -type "double3" -2.277745657179631e-07 -4.6748409056943672 4.73240046183688 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "UpperArm_L_parentConstraint1" -p "UpperArm_L";
	rename -uid "B2371142-4A10-5E85-C3A4-9E970F8EAE4E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "UpperArm_L_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 0 3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.6533735804600026e-07 2.8191334475267759e-06 
		-6.1350958871936945e-08 ;
	setAttr ".lr" -type "double3" 2.4523670671517799 -27.333152770682684 -4.5848797560000367 ;
	setAttr ".rst" -type "double3" 13.197872161865231 -2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 2.4523687315043468 -27.333152773621233 -4.5848798061847891 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "clavicle_l_parentConstraint1" -p "clavicle_l";
	rename -uid "ACBB0BC6-4825-252D-5BF8-3F83E4FAD9D8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_l_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.6761502872976582e-08 -2.8311751261479922e-06 
		6.9125004605236043e-08 ;
	setAttr ".lr" -type "double3" 1.398635957399081 118.01165771653103 -84.059341283524134 ;
	setAttr ".rst" -type "double3" 5.8011727333069132 -4.1914477348327619 -7.4471540451049814 ;
	setAttr ".rsrr" -type "double3" 1.3986359573990301 118.01165771653098 -84.059341283524191 ;
	setAttr -k on ".w0";
createNode joint -n "clavicle_r" -p "spine_03";
	rename -uid "61A4A0BA-410D-1909-5805-B99A306E8923";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.88285199999999997 0.0129835 0.469472 0 0.0114634 -0.99991600000000003 0.0060959600000000001 0
		 0.46951100000000001 -8.1596499999999986e-08 -0.88292599999999999 0 -7.4471489999999996 139.21098900000001 1.3537520000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "UpperArm_R" -p "clavicle_r";
	rename -uid "F296F940-4270-2284-8D7A-9E888D320793";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.99654200000000004 0.082502099999999995 0.0098807800000000005 0
		 0.082498100000000005 -0.996591 0.00081810400000000005 0 0.0099145899999999992 -1.29536e-07 -0.99995100000000003 0
		 -19.098897999999998 139.03898799999999 -4.8422700000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_r" -p "UpperArm_R";
	rename -uid "6AD4ED05-426B-A7E9-67B2-89A2E79DF701";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.99743199999999999 4.9359799999999996e-08 -0.071615300000000007 0
		 5.88298e-08 -1 1.3012500000000001e-07 0 -0.071615200000000004 -1.3400399999999999e-07 -0.99743199999999999 0
		 -52.915598000000003 136.09398400000001 -5.3211979999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Hand_R" -p "lowerarm_r";
	rename -uid "1439E997-4A80-7671-9B3F-B8B29DB8AD56";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -27.114490509033203 -2.8421709430404007e-14 0.038136087357997894 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 5.8829900000000006e-08 2.3949399999999999e-07 0 5.88298e-08 -1 1.3012500000000001e-07 0
		 2.3949399999999999e-07 -1.3012500000000001e-07 -1 0 -79.963199000000003 136.09398300000001 -3.4174250000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_r" -p "Hand_R";
	rename -uid "D9073F96-422A-AC90-7A25-319C8AD31DDE";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5139999389648438 1.1710000038146973 -4.5055398941040039 ;
	setAttr ".r" -type "double3" 6.5782208442687988 -31.677152633666992 -12.385529518127441 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.83121400000000001 0.182534 -0.52513200000000004 0
		 0.15431800000000001 -0.98319900000000005 -0.097492400000000007 0 -0.53410500000000005 -1.8531999999999999e-07 -0.845418 0
		 -83.477199999999996 134.92298299999999 1.0881130000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_r" -p "thumb_01_r";
	rename -uid "322465D6-4D64-34BB-64E4-C2A41BCC3D16";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -6.370145797728 -0.0007811824890779917 4.3638110597044033e-05 ;
	setAttr ".r" -type "double3" -6.5831432342529297 12.717245101928711 -17.147857666015625 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.84797500000000003 0.45291500000000001 -0.27532899999999999 0
		 0.43077700000000002 -0.89155399999999996 -0.13986899999999999 0 -0.30881999999999998 -1.9497400000000001e-07 -0.95112099999999999 0
		 -88.772300999999999 133.76098200000001 4.4333210000000003 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_r" -p "thumb_02_r";
	rename -uid "406E38BA-4180-CC88-600D-C1824FCAF1DE";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.6655082702656401 9.8355005491157499e-06 -2.0279541960377401e-05 ;
	setAttr ".r" -type "double3" 0 17.988121032714844 26.930816650390625 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 8.6480700000000005e-07 2.67217e-07 0 8.6480700000000005e-07 -1 -7.5800500000000004e-08 0
		 2.67217e-07 7.5800700000000002e-08 -1 0 -93.576499999999996 131.19497899999999 5.9932189999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "indexFinger_01_r" -p "Hand_R";
	rename -uid "89394909-4206-4812-539D-92B64AEFDDF3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.396599769592285 -0.39899998903274536 -2.6726500988006592 ;
	setAttr ".r" -type "double3" 0.064705096185207367 -7.5447292327880859 -0.49279087781906133 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.99130600000000002 0.0085263000000000005 -0.1313 0
		 0.0084524999999999999 -0.99996399999999996 -0.0011194099999999999 0 -0.13130500000000001 -1.3647899999999999e-07 -0.99134199999999995 0
		 -90.359798999999995 136.49298300000001 -0.74477800000000005 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "indexFinger_02_r" -p "indexFinger_01_r";
	rename -uid "09DD0BFE-4C1A-0F2A-A149-CFBF4A57D653";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.0935912132258352 9.6986928696196628e-05 -4.9567480893131233e-06 ;
	setAttr ".r" -type "double3" -0.25268083810806274 1.2119487524032593 -11.289366722106934 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.97303099999999998 0.204073 -0.107544 0 0.20283799999999999 -0.97895600000000005 -0.022418400000000002 0
		 -0.10985499999999999 -1.3659699999999999e-07 -0.99394700000000002 0 -94.4178 136.45798199999999 -0.207285 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "indexFinger_03_r" -p "indexFinger_02_r";
	rename -uid "485E8FF4-4693-F94E-09E8-0E819531BD80";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.7912127971773799 0.00032499834173904674 -4.5452923362887532e-06 ;
	setAttr ".r" -type "double3" -0.95976769924163818 2.8972432613372803 -6.5621347427368164 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.94782200000000005 0.31420900000000002 -0.053904899999999999 0
		 0.31370199999999998 -0.94935400000000003 -0.0178409 0 -0.056780600000000001 -1.20526e-07 -0.99838700000000002 0
		 -98.106700000000004 135.68398099999999 0.200433 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "indexFinger_04_r" -p "indexFinger_03_r";
	rename -uid "CC6F4BB7-4C18-D84E-8189-1C89A917DE6C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.7793326377527166 -0.00052657089059948703 -1.5507379496959572e-05 ;
	setAttr ".r" -type "double3" 0 3.255049467086792 18.313068389892578 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 2.89861e-07 2.0623499999999999e-07 0 2.89861e-07 -1 1.0423500000000001e-07 0
		 2.0623499999999999e-07 -1.0423500000000001e-07 -1 0 -101.688999 134.49698000000001 0.40418199999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "finger_01_r" -p "Hand_R";
	rename -uid "77D7FB66-4EA0-F51A-E783-B7B070993442";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -9.9825000762939453 0.11599999666213989 3.2833399772644043 ;
	setAttr ".r" -type "double3" -0.57057112455368042 5.0056061744689941 -6.5113015174865723 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.98975999999999997 0.112967 0.087253399999999995 0
		 0.11253000000000001 -0.99359900000000001 0.0099203599999999996 0 0.087815599999999994 -1.1579699999999999e-07 -0.99613700000000005 0
		 -89.945697999999993 135.977982 -6.7007669999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "finger_02_r" -p "finger_01_r";
	rename -uid "554E90F6-4A23-820C-BBFC-75AAA3E1B70E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.2488093376166631 2.6534415013657053e-05 -1.9789932181879522e-06 ;
	setAttr ".r" -type "double3" 0.34985607862472534 -2.2268123626708984 -2.4447407722473145 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.98672800000000005 0.15512899999999999 0.047980000000000002 0
		 0.154946 -0.98789400000000005 0.0075344399999999999 0 0.048568 -1.1053699999999999e-07 -0.99882000000000004 0
		 -94.150998000000001 135.49798100000001 -7.0714880000000004 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "finger_03_r" -p "finger_02_r";
	rename -uid "5D2CCA9E-41D9-7690-AEC0-42BACDADFA46";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5133244991295527 -1.9978480764848427e-05 1.4853608050202638e-06 ;
	setAttr ".r" -type "double3" -2.8515739440917969 7.9666023254394531 -10.843832969665527 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 0.92415599999999998 0.334951 0.183697 0 0.32852300000000001 -0.94223599999999996 0.065301600000000001 0
		 0.19495899999999999 -6.3928000000000002e-08 -0.98081099999999999 0 -97.617698000000004 134.95298099999999 -7.2400599999999997 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "finger_04_r" -p "finger_03_r";
	rename -uid "C0CE5319-4D22-4371-07A5-CD90678CAF47";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.0031130313952303 0.00011334713968835786 3.5910989614862387e-05 ;
	setAttr ".r" -type "double3" 0 -11.242292404174805 19.569507598876953 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 4.2681100000000002e-07 2.9199499999999999e-07 0 4.2681100000000002e-07 -1 1.5001700000000001e-07 0
		 2.9199499999999999e-07 -1.5001700000000001e-07 -1 0 -100.39299699999999 133.94698 -7.7917500000000004 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "Hand_R_orientConstraint1" -p "Hand_R";
	rename -uid "0C9C8E93-481D-8A64-E787-64A1308D073F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hand_R_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 4.1067814944500869 0 ;
	setAttr ".rsrr" -type "double3" 0 4.1067814937508178 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "lowerarm_r_parentConstraint1" -p "lowerarm_r";
	rename -uid "5CC35A7B-40F4-49D5-7DB9-5FABA5329E2C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lowerarm_r_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.1274496709320374e-08 -2.8441990593819355e-05 
		2.9367789604606287e-05 ;
	setAttr ".tg[0].tor" -type "double3" 0.0012813753085122253 -6.2057225099864142e-05 
		-6.1903212546837369e-05 ;
	setAttr ".lr" -type "double3" -5.1856526201930142e-15 -4.674840927124011 4.7323999404907244 ;
	setAttr ".rst" -type "double3" -33.947460174560533 0.14475864171967601 0.14362636208534241 ;
	setAttr ".rsrr" -type "double3" 7.4793066637399243e-17 -4.6748409271240225 4.7323999404907218 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "UpperArm_R_parentConstraint1" -p "UpperArm_R";
	rename -uid "32746072-4927-FDBB-3BF6-DAAAD96675DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "UpperArm_R_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 5.6843418860808015e-14 
		8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0.0012826729097013502 4.6755602572898508e-05 
		4.2678353750501487e-05 ;
	setAttr ".lr" -type "double3" 2.4523685532935771 -27.333152767583567 -4.5848798244328686 ;
	setAttr ".rst" -type "double3" -13.197860717780557 0.00064733915505144068 4.735355665808072e-06 ;
	setAttr ".rsrr" -type "double3" 2.4523684978485094 -27.333152770996087 -4.5848798751831001 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "clavicle_r_parentConstraint1" -p "clavicle_r";
	rename -uid "602B5818-4F8B-F08C-2867-49B258816BE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_r_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 -5.6843418860808015e-14 
		-2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.6761463861485572e-08 -2.8311751229674381e-06 
		6.9124972600904571e-08 ;
	setAttr ".lr" -type "double3" 1.3986359573990557 118.01165771653098 95.940658716475752 ;
	setAttr ".rst" -type "double3" 5.8015341758728027 -4.1914181709289569 7.4471502304077157 ;
	setAttr ".rsrr" -type "double3" 1.3986359573990301 118.01165771653098 95.940658716475724 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "spine_03_parentConstraint1" -p "spine_03";
	rename -uid "D3E48850-4411-5102-A4DE-7995F7775E75";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine_03_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 5.3290705182007514e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.7655625192200634e-31 -1.5902773407317584e-15 ;
	setAttr ".lr" -type "double3" 180 0 12.756361961364734 ;
	setAttr ".rst" -type "double3" 17.90372467041017 3.5527136788005009e-15 9.5246774678868803e-15 ;
	setAttr ".rsrr" -type "double3" 180 0 12.756361961364744 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "spine_02_parentConstraint1" -p "spine_02";
	rename -uid "EF09F1E5-42D6-1AA7-5DED-708850E8B209";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine_02_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 3.5527136788005009e-15 
		-3.1554436208840472e-30 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708134e-14 -9.7988719816713534e-30 
		-1.9083328088781104e-14 ;
	setAttr ".lr" -type "double3" 180.00000000000003 3.5311250384401269e-31 11.248364448547346 ;
	setAttr ".rst" -type "double3" 18.151168823242216 3.5527136788005009e-15 -8.2952287886401102e-15 ;
	setAttr ".rsrr" -type "double3" 180.00000000000003 7.0622500768802538e-31 11.248364448547347 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "spine_01_parentConstraint1" -p "spine_01";
	rename -uid "761341CA-4759-9B37-1931-C7AECDAA2BE9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine_01_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 -3.5311250384401269e-31 1.5902773407317584e-15 ;
	setAttr ".lr" -type "double3" 180 0 11.441384315490721 ;
	setAttr ".rst" -type "double3" 10.393264770507798 -1.7763568394002505e-15 5.2447971260630611e-15 ;
	setAttr ".rsrr" -type "double3" 180 0 11.441384315490721 ;
	setAttr -k on ".w0";
createNode joint -n "Thigh_R" -p "Pelvis";
	rename -uid "DB788A7F-4A36-8628-F202-F4AAFD39969B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -0.031741100000000001 -0.99949600000000005 -1.6636399999999999e-08 0
		 -0.99949600000000005 0.031741100000000001 1.33686e-07 0 -1.3309100000000001e-07 2.0871300000000002e-08 -1 0
		 -9.8967039999999997 83.155801999999994 -2.0469279999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_r" -p "Thigh_R";
	rename -uid "FD88CDD2-4992-A162-98D0-1E8616303D70";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -0.0074294799999999996 -0.99902599999999997 -0.043499500000000003 0
		 -0.16819400000000001 0.044129399999999999 -0.984765 0 0.98572599999999999 6.1452400000000008e-08 -0.16835800000000001 0
		 -11.164153000000001 43.245018000000002 -2.046929 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Foot_R" -p "calf_r";
	rename -uid "99C4F028-4492-0E27-A0F3-61A211F6634F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 37.71235275268554 -8.8817841970012523e-15 2.3092638912203256e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 5.1243499999999997e-07 -0.51997199999999999 0.85418300000000003 0
		 -9.0250099999999996e-08 0.85418300000000003 0.51997199999999999 0 -1 -3.4354200000000002e-07 3.9078599999999996e-07 0
		 -11.444337000000001 5.5694030000000003 -3.6873960000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ball_r" -p "Foot_R";
	rename -uid "D9C6835C-464D-6B8E-8B47-43A3D50630FC";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.284035682678224 -1.021405182655144e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -2.622354102529284e-13 0 31.330425262451172 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 5.2745800000000004e-07 0 1 0 -3.4354200000000002e-07 1 0 0
		 -1 -3.4354200000000002e-07 5.2745800000000004e-07 0 -11.444331 -0.297985 5.9512349999999996 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "toes_r" -p "ball_r";
	rename -uid "3148E4B7-4938-5EED-CE22-5783115ACF41";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 7.2957563400268555 1.6653345369377348e-16 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 3.4354200000000002e-07 -3.9078599999999996e-07 0
		 -3.4354200000000002e-07 1 -3.5425799999999999e-07 0 3.9078499999999999e-07 3.5425799999999999e-07 1 0
		 -11.444328000000001 -0.29798200000000002 13.246992000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "Foot_R_orientConstraint1" -p "Foot_R";
	rename -uid "74E301F6-4BDC-5277-FCE5-FF8F65B36834";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "r_leg_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.0913502812027801e-05 -99.692380788198193 87.470772894165222 ;
	setAttr ".o" -type "double3" -270.00004306067996 -58.669595035024173 -89.99994353478121 ;
	setAttr ".rsrr" -type "double3" -354.92491149902344 -188.26827812194821 119.16822052001952 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "calf_r_parentConstraint1" -p "calf_r";
	rename -uid "EFAFC633-45FD-79C3-1AB7-21BE0808F6D8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "calf_r_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.1829650854197098e-11 -3.5136043567973729e-05 
		4.3539018115268391e-05 ;
	setAttr ".tg[0].tor" -type "double3" -0.0033154563218184951 6.5986596661189763e-05 
		5.4320758820817964e-05 ;
	setAttr ".lr" -type "double3" 80.298355102539077 -2.4931213855743395 -1.3928489685058596 ;
	setAttr ".rst" -type "double3" 39.930904388427763 -7.1054273576010019e-15 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 80.298355102539077 -2.4931213855743395 -1.3928489685058596 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thigh_R_parentConstraint1" -p "Thigh_R";
	rename -uid "190044BF-41E8-08A8-0B7D-F897526CAC2C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thigh_R_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002505e-15 -1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" -0.0033155968404141112 3.8176671768382588e-05 
		-7.0096181499543613e-05 ;
	setAttr ".lr" -type "double3" -90.000007629394517 1.8189339637756268 -171.40713500976563 ;
	setAttr ".rst" -type "double3" -4.1157684326172017 -2.6920697689056432 -9.8967056274414063 ;
	setAttr ".rsrr" -type "double3" -90.000007629394517 1.8189339637756268 -171.40713500976563 ;
	setAttr -k on ".w0";
createNode joint -n "Thigh_L" -p "Pelvis";
	rename -uid "894E8B64-4E77-B695-0F8E-B88E9E1E4A8C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -0.031741100000000001 0.99949600000000005 -4.9909100000000006e-08 0
		 -0.99949600000000005 -0.031741100000000001 -1.3157300000000001e-07 0 -1.3309100000000001e-07 4.5707700000000005e-08 1 0
		 9.8967089999999995 83.155790999999994 -2.046932 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_l" -p "Thigh_L";
	rename -uid "78FF5AF9-4240-E330-163E-C39E597BAFE0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -0.0074294799999999996 0.99902599999999997 0.043499400000000001 0
		 -0.16819400000000001 -0.044129300000000003 0.984765 0 0.98572599999999999 -5.0243200000000006e-08 0.16835800000000001 0
		 11.164197 43.244993000000001 -2.0469300000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Foot_L" -p "calf_l";
	rename -uid "39FD7BCC-40B7-0288-4CDF-DE897C4B6729";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -37.712326049804602 1.3169495099774053e-05 -8.4110382893243241e-05 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 5.1243499999999997e-07 0.51997199999999999 -0.85418300000000003 0
		 -9.0250099999999996e-08 -0.85418300000000003 -0.51997199999999999 0 -1 3.4354200000000002e-07 -3.9078599999999996e-07 0
		 11.444295 5.5694049999999997 -3.687395 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ball_l" -p "Foot_L";
	rename -uid "1FA7289C-4DD9-12AF-D4CA-25B808E9CC9A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -11.284032821655483 -1.6849571604637958e-06 2.3092638912203256e-14 ;
	setAttr ".r" -type "double3" 2.0260027921818746e-13 0 31.330425262451172 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 5.7429699999999997e-07 0 -1 0 -3.4354200000000002e-07 -1 0 0
		 -1 3.4354200000000002e-07 -5.7429699999999997e-07 0 11.444288999999999 -0.29798000000000002 5.9512359999999997 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "toes_l" -p "ball_l";
	rename -uid "0041BA2A-456C-8BD1-7C35-77B41C53C174";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -7.2957501411437988 2.6645352591003757e-15 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 -3.4354200000000002e-07 3.9078599999999996e-07 0
		 -3.4354200000000002e-07 -1 4.2083700000000002e-07 0 3.9078499999999999e-07 -4.2083700000000002e-07 -1 0
		 11.444286 -0.29797699999999999 13.246986 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode orientConstraint -n "Foot_L_orientConstraint1" -p "Foot_L";
	rename -uid "152259AD-4108-0E0A-A2C7-6E8AF918FC21";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "l_leg_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.5830111459969166e-05 -80.307619211802731 -92.529228392900563 ;
	setAttr ".o" -type "double3" -90.000043060685542 58.66959884972146 89.999943751464627 ;
	setAttr ".rsrr" -type "double3" -174.92491149902344 8.2682781219482102 -60.831779479980455 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "calf_l_parentConstraint1" -p "calf_l";
	rename -uid "1AFEB60F-47CB-7390-B66E-CA8DF0EEE0C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "calf_l_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 -4.4408920985006262e-15 
		1.2434497875801753e-14 ;
	setAttr ".tg[0].tor" -type "double3" -9.4267187982024591e-09 -2.1338704274136733e-07 
		-3.6481236916797145e-08 ;
	setAttr ".lr" -type "double3" 80.298355102539972 -2.4931213855743577 -1.3928487518177046 ;
	setAttr ".rst" -type "double3" -39.930919647217081 -3.8050264262068367e-05 1.4210854715202004e-14 ;
	setAttr ".rsrr" -type "double3" 80.298355102539972 -2.4931213855743577 -1.3928487518177046 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thigh_L_parentConstraint1" -p "Thigh_L";
	rename -uid "87B7D150-43A0-3770-519E-73A6BB9DC3D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thigh_L_ikW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002505e-15 4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -1.11773561714308e-14 1.8548380920773294e-15 
		-1.6697912077683464e-14 ;
	setAttr ".lr" -type "double3" -90.000007629394531 1.8189339637756494 8.5928611755371094 ;
	setAttr ".rst" -type "double3" -4.115778446197524 -2.6920750141143852 9.8967103958129918 ;
	setAttr ".rsrr" -type "double3" -90.000007629394531 1.8189339637756494 8.5928611755371094 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pelvis_parentConstraint1" -p "Pelvis";
	rename -uid "26A0741F-4A23-64D4-7586-94BAB3FFE286";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr ".lr" -type "double3" 90 8.5928487777709979 90 ;
	setAttr ".rst" -type "double3" 0 87.627609252929659 1.8338415773986108e-14 ;
	setAttr ".rsrr" -type "double3" 90 8.5928487777709979 90 ;
	setAttr -k on ".w0";
createNode transform -n "SK_Character_Male_Jacket" -p "|SK_Character_Male_Jacket";
	rename -uid "54C8FE4C-43FE-397A-4441-68958C3BF4CE";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "SK_Character_Male_JacketShape" -p "|SK_Character_Male_Jacket|SK_Character_Male_Jacket";
	rename -uid "1CE1D699-436D-1D3F-B8B8-B58350803B7A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "DiffuseUV";
	setAttr ".uvst[1].uvsn" -type "string" "LightMapUV";
	setAttr ".cuvs" -type "string" "DiffuseUV";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet0";
	setAttr ".clst[0].clsn" -type "string" "colorSet0";
	setAttr ".vcs" 2;
createNode mesh -n "SK_Character_Male_JacketShapeOrig" -p "|SK_Character_Male_Jacket|SK_Character_Male_Jacket";
	rename -uid "6DD0E9CF-44AB-9964-8C91-4198DA15BE93";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "DiffuseUV";
	setAttr -s 3837 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.068865299 0.17482376 0.068865299
		 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068865299
		 0.17482376 0.027467251 0.27552676 0.027467251 0.27552658 0.027467251 0.275527 0.068865299
		 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.027466774 0.27552652 0.027467251 0.27552652 0.027467251
		 0.27552658 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.027466774 0.27552658 0.027466774
		 0.27552676 0.027466774 0.275527 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.027467251
		 0.27552658 0.027467251 0.27552676 0.027467251 0.27552676 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.027467251 0.27552676 0.027466774 0.27552676 0.027466774 0.27552658 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.027467251 0.27552658 0.027467251
		 0.27552676 0.027466774 0.27552658 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068865299 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068864822 0.17482376 0.068865299
		 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.027467728 0.27552658 0.027467728
		 0.27552652 0.027466774 0.27552652 0.027467728 0.27552658 0.027466774 0.27552652 0.027467251
		 0.27552658 0.027466774 0.275527 0.027467728 0.27552652 0.027467728 0.27552658 0.027467251
		 0.27552658 0.027467251 0.27552652 0.027467251 0.275527 0.027467251 0.27552658 0.027467251
		 0.27552658 0.027467251 0.275527 0.027466774 0.27552658 0.027466774 0.275527 0.027467728
		 0.27552658 0.068865299 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068865299
		 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.027467251 0.27552676 0.027467251
		 0.275527 0.027467251 0.27552658 0.068865299 0.17482376 0.068865299 0.17482376 0.068865299
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.027466774
		 0.27552652 0.027467251 0.27552658 0.027467251 0.27552652 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.027466774 0.27552658 0.027466774 0.275527 0.027466774 0.27552676 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068865299
		 0.17482376 0.068865299 0.17482376 0.027467251 0.27552658 0.027467251 0.27552676 0.027467251
		 0.27552676 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068865299
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.027467251 0.27552676 0.027466774
		 0.27552658 0.027466774 0.27552676 0.068864822 0.17482376 0.068865299 0.17482376 0.068864822
		 0.17482376 0.027467251 0.27552658 0.027466774 0.27552658 0.027467251 0.27552676 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068865299
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068864822
		 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068865299
		 0.17482376 0.027467728 0.27552658 0.027466774 0.27552652 0.027467728 0.27552652 0.027467728
		 0.27552658 0.027467251 0.27552658 0.027466774 0.27552652 0.027466774 0.275527 0.027467728
		 0.27552658 0.027467728 0.27552652 0.027467251 0.27552658 0.027467251 0.275527 0.027467251
		 0.27552652 0.027467251 0.27552658 0.027467251 0.275527 0.027467251 0.27552658 0.027466774
		 0.27552658 0.027467728 0.27552658 0.027466774 0.275527 0.050118476 0.1987347 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.1987347 0.050118476
		 0.19873464 0.050118476 0.1987347 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.1987347 0.050118476
		 0.19873464 0.050118476 0.1987347 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.1987347 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.1987347 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.057650037
		 0.17175293 0.057650566 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.05765152 0.17175293 0.057649612 0.17175293 0.057650566 0.17175293 0.05765152
		 0.17175293 0.057650566 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.057649612 0.17175293 0.057650037
		 0.17175293 0.057649612 0.17175293 0.057650037 0.17175293 0.057649612 0.17175293 0.057650566
		 0.17175293 0.057649612 0.17175293 0.05765152 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.05765152 0.17175293 0.057650566 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.057650566 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057650037 0.17175293 0.05765152
		 0.17175293;
	setAttr ".uvst[0].uvsp[250:499]" 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.020769268 0.18586051 0.020769268 0.18586051
		 0.020769268 0.18586051 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.020769268 0.18586057
		 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268
		 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.068865299 0.17482758 0.068865329 0.17482758 0.068865329 0.17482758 0.057579517
		 0.17198944 0.057579041 0.17198944 0.057579517 0.17198944 0.021255255 0.16581905 0.021255255
		 0.16581911 0.021255255 0.16581905 0.057649612 0.17173767 0.05765152 0.17173767 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17173767 0.05765152 0.17175293 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17173767 0.05765152 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.16503125 0.0083770752 0.16503115 0.0083770752 0.16503105 0.0083770752
		 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057579041
		 0.17199707 0.057579517 0.17199707;
	setAttr ".uvst[0].uvsp[500:749]" 0.057579517 0.17199707 0.16503096 0.0083770752
		 0.16503096 0.0083770752 0.16503239 0.0083770752 0.068865299 0.17482758 0.068865299
		 0.17482758 0.068865329 0.17482758 0.068864822 0.17482758 0.068864822 0.17482758 0.068864822
		 0.17482758 0.057732105 0.17397308 0.057732105 0.17397308 0.057731628 0.17397308 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17173767 0.057649612 0.17173767 0.05765152
		 0.17175293 0.05765152 0.17173767 0.068865299 0.17482758 0.068865538 0.17482758 0.068865329
		 0.17482758 0.068865299 0.17482758 0.068865299 0.17482758 0.068865299 0.17482758 0.068864822
		 0.17482758 0.068865329 0.17482758 0.068865538 0.17482758 0.068864822 0.17482758 0.068864822
		 0.17482758 0.068864822 0.17482758 0.068865299 0.17482758 0.068864822 0.17482758 0.068865299
		 0.17482758 0.068864822 0.17482758 0.068865538 0.17482758 0.068864822 0.17482758 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.057649612 0.17173767 0.057649612 0.17175293 0.068864822 0.17482758 0.068865538
		 0.17482758 0.068865538 0.17482758 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.068865299 0.17482758 0.068865329 0.17482758 0.068865329
		 0.17482758 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268
		 0.18586057 0.020769268 0.18586057 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.16503125 0.0083770752 0.16503105 0.0083770752 0.16503115 0.0083770752
		 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.16503096 0.0083770752
		 0.16503096 0.0083770752 0.16503125 0.0083770752 0.16503096 0.0083770752 0.16503239
		 0.0083770752 0.16503096 0.0083770752 0.068865299 0.17482758 0.068865329 0.17482758
		 0.068865299 0.17482758 0.068865299 0.17482758 0.068864822 0.17482758 0.068864822
		 0.17482758 0.057732105 0.17397308 0.057732582 0.17397308 0.057732105 0.17397308 0.05765152
		 0.17175293 0.05765152 0.17173767 0.05765152 0.17175293 0.057649612 0.17173767 0.05765152
		 0.17173767 0.05765152 0.17175293 0.068865299 0.17482758 0.068865329 0.17482758 0.068865299
		 0.17482758 0.068865299 0.17482758 0.068865538 0.17482758 0.068865299 0.17482758 0.068865299
		 0.17482758 0.068865299 0.17482758 0.068865329 0.17482758 0.068864822 0.17482758 0.068864822
		 0.17482758 0.068865299 0.17482758 0.068865299 0.17482758 0.068865538 0.17482758 0.068864822
		 0.17482758 0.068865299 0.17482758 0.068864822 0.17482758 0.068865538 0.17482758 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17173767 0.068865299 0.17482758 0.068865538
		 0.17482758 0.068865299 0.17482758 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586051 0.16503096 0.0083770752 0.16503096 0.0083770752 0.16503125 0.0083770752
		 0.057579041 0.17199707 0.057579517 0.17199707 0.057579517 0.17199707 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057579041 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579041
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319
		 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.026717823 0.24812001 0.026717823
		 0.24811953 0.026717823 0.24812001 0.026717823 0.24811953 0.026717823 0.24812001 0.026717823
		 0.24812001 0.026717823 0.24811953 0.026717823 0.24812001 0.026717823 0.24812001 0.026717823
		 0.24812001 0.026717823 0.24811953 0.026717823 0.24812001 0.13356137 0.25039673 0.13356113
		 0.25039673 0.13356113 0.25039673 0.16503096 0.0083770752 0.16503111 0.0083770752
		 0.16503096 0.0083770752 0.16503096 0.0083770752 0.16503111 0.0083770752 0.16503096
		 0.0083770752 0.13356113 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.13356113
		 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.13356113
		 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.13356113
		 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.16503125
		 0.0083770752 0.16503111 0.0083770752 0.16503096 0.0083770752 0.16503125 0.0083770752
		 0.16503115 0.0083770752 0.16503125 0.0083770752 0.16503125 0.0083770752 0.16503125
		 0.0083770752 0.16503115 0.0083770752;
	setAttr ".uvst[0].uvsp[750:999]" 0.16503096 0.0083770752 0.16503111 0.0083770752
		 0.16503125 0.0083770752 0.16503125 0.0083770752 0.16503096 0.0083770752 0.16503125
		 0.0083770752 0.16503096 0.0083770752 0.16503125 0.0083770752 0.16503125 0.0083770752
		 0.049621582 0.18945313 0.049621582 0.18945313 0.049621582 0.18945313 0.049621582
		 0.18945313 0.049621582 0.18945313 0.049621582 0.18945313 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.027467728 0.27552652 0.027467728 0.27552658 0.027467728 0.27552658 0.027467728
		 0.27552652 0.027467728 0.27552652 0.027467728 0.27552658 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211879
		 0.35161388 0.10211885 0.35161388 0.10211879 0.35161388 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211883 0.35161388 0.10211883 0.35161388 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211879
		 0.35161388 0.10211885 0.35161388 0.10211879 0.35161388 0.10211883 0.35161388 0.10211885
		 0.35161388 0.10211883 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885
		 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211885 0.35161388 0.10211879
		 0.35161388 0.10211885 0.35161388 0.10211879 0.35161388 0.10211883 0.35161388 0.10211885
		 0.35161388 0.10211883 0.35161388 0.10211885 0.35161388 0.068865299 0.17482376 0.068865299
		 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.027467728 0.27552652 0.027467251
		 0.27552652 0.027466774 0.27552652 0.027467251 0.27552652 0.026717823 0.24812001 0.026717823
		 0.24812001 0.026717823 0.24811953 0.026717823 0.24811953 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068865299
		 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068864822 0.17482376 0.068865299
		 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068864822 0.17482376 0.068865299
		 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.026717823 0.24811953 0.026717823
		 0.24812001 0.026717823 0.24811953 0.026717823 0.24812001 0.027467728 0.27552652 0.027467728
		 0.27552652 0.027466774 0.27552652 0.027467728 0.27552652 0.068864822 0.17482376 0.068864822
		 0.17482758 0.068864822 0.17482376 0.068864822 0.17482758 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482758 0.068864822 0.17482758 0.068864822 0.17482758 0.068865538
		 0.17482758 0.068864822 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068865299
		 0.17482376 0.068865538 0.17482758 0.068865538 0.17482758 0.068864822 0.17482758 0.068864822
		 0.17482376 0.068865538 0.17482758 0.068865299 0.17482376 0.068864822 0.17482758 0.068864822
		 0.17482376 0.068864822 0.17482758 0.068864822 0.17482376 0.068864822 0.18252683 0.068864822
		 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822
		 0.18252683 0.068864822 0.18252677 0.068864822 0.18252677 0.068864822 0.18252677 0.068864822
		 0.18252677 0.068864822 0.18252677 0.068864822 0.18252671 0.068865299 0.18252671 0.068864822
		 0.18252671 0.068865299 0.18252677 0.068864822 0.18252677 0.068865299 0.18252683 0.068865299
		 0.18252671 0.068865299 0.18252683 0.068865299 0.18252677 0.068865299 0.18252683 0.068864822
		 0.18252683 0.068865299 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822
		 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822 0.18252677 0.068864822
		 0.18252677 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822 0.18252677 0.068864822
		 0.18252677 0.068864822 0.18252677 0.068864822 0.18252677 0.068865299 0.18252677 0.068864822
		 0.18252677 0.068865299 0.18252677 0.068864822 0.18252677 0.068865299 0.18252683 0.068865299
		 0.18252677 0.068865299 0.18252683 0.068865299 0.18252677 0.068864822 0.18252683 0.068864822
		 0.18252683 0.068865299 0.18252683 0.068865299 0.18252683 0.068865299 0.17482376 0.068865299
		 0.17482388 0.068864822 0.17482376 0.068864822 0.17482388 0.068864822 0.17482388 0.068864822
		 0.17482376 0.068864822 0.17482388 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482388 0.068864822 0.17482376 0.068864822 0.17482382 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482382 0.068864822 0.17482382 0.068865299 0.17482376 0.068864822
		 0.17482376 0.068865299 0.17482382;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.068864822 0.17482382 0.068865299 0.17482376
		 0.068865299 0.17482376 0.068865299 0.17482388 0.068865299 0.17482382 0.068864822
		 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822
		 0.18252683 0.068864822 0.18252683 0.068864822 0.18252677 0.068864822 0.18252677 0.068864822
		 0.18252677 0.068864822 0.18252671 0.068864822 0.18252677 0.068864822 0.18252671 0.068864822
		 0.18252671 0.068864822 0.18252671 0.068865299 0.18252671 0.068865299 0.18252671 0.068865299
		 0.18252671 0.068865299 0.18252683 0.068865299 0.18252671 0.068865299 0.18252683 0.068865299
		 0.18252683 0.068864822 0.18252683 0.068865299 0.18252683 0.068864822 0.18252683 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037326813 0.37633049 0.037326813 0.37633049 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037326813
		 0.37633049 0.037326813 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.027467728
		 0.27552652 0.027467251 0.27552652 0.027467728 0.27552652 0.027467251 0.27552652 0.027467251
		 0.27552652 0.027467251 0.27552652 0.027467251 0.275527 0.027467251 0.275527 0.027467251
		 0.275527 0.027467251 0.275527 0.027467251 0.275527 0.027466774 0.275527 0.027467728
		 0.27552652 0.027467728 0.27552652 0.027467728 0.27552652 0.027467728 0.27552652 0.027466774
		 0.275527 0.027466774 0.275527 0.027467251 0.275527 0.027466774 0.275527 0.027466774
		 0.275527 0.027466774 0.275527 0.027467728 0.27552652 0.027467728 0.27552652 0.068865299
		 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.027467728
		 0.27552652 0.027466774 0.27552652 0.027467251 0.27552652 0.027467251 0.27552652 0.026717823
		 0.24812001 0.026717823 0.24811953 0.026717823 0.24812001 0.026717823 0.24811953 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068865299
		 0.17482376 0.068865299 0.17482376 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068865299 0.17482376 0.068865299 0.17482376 0.026717823
		 0.24811953 0.026717823 0.24811953 0.026717823 0.24812001 0.026717823 0.24812001 0.027467728
		 0.27552652 0.027466774 0.27552652 0.027467728 0.27552652 0.027467728 0.27552652 0.068864822
		 0.17482758 0.068864822 0.17482758 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482758 0.068864822 0.17482376 0.068864822 0.17482758 0.068864822
		 0.17482758 0.068864822 0.17482376 0.068865538 0.17482758 0.068865299 0.17482376 0.068865538
		 0.17482758 0.068865299 0.17482376 0.068865538 0.17482758 0.068865299 0.17482376 0.068865299
		 0.17482376 0.068864822 0.17482376 0.068865538 0.17482758 0.068864822 0.17482758 0.068864822
		 0.17482376 0.068864822 0.17482376 0.068864822 0.17482758 0.068864822 0.17482758 0.068864822
		 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822
		 0.18252683 0.068864822 0.18252677 0.068864822 0.18252683 0.068864822 0.18252677 0.068864822
		 0.18252671 0.068864822 0.18252677 0.068864822 0.18252677 0.068864822 0.18252677 0.068864822
		 0.18252677 0.068864822 0.18252671 0.068865299 0.18252677 0.068865299 0.18252671 0.068865299
		 0.18252677 0.068865299 0.18252671 0.068865299 0.18252683 0.068865299 0.18252683 0.068864822
		 0.18252683 0.068864822 0.18252683 0.068865299 0.18252683 0.068865299 0.18252683 0.068864822
		 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822
		 0.18252677 0.068864822 0.18252683 0.068864822 0.18252677 0.068864822 0.18252683 0.068864822
		 0.18252677 0.068864822 0.18252677 0.068864822 0.18252677 0.068864822 0.18252677 0.068864822
		 0.18252677 0.068864822 0.18252677 0.068865299 0.18252677 0.068865299 0.18252677 0.068865299
		 0.18252677 0.068865299 0.18252677 0.068865299 0.18252683 0.068865299 0.18252683 0.068864822
		 0.18252683 0.068865299 0.18252683 0.068864822 0.18252683 0.068865299 0.18252683 0.068864822
		 0.17482388 0.068865299 0.17482388 0.068864822 0.17482376 0.068865299 0.17482376 0.068864822
		 0.17482388 0.068864822 0.17482388 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482382 0.068864822 0.17482388 0.068864822 0.17482376 0.068864822 0.17482376 0.068864822
		 0.17482376 0.068864822 0.17482382 0.068864822 0.17482376 0.068864822 0.17482382 0.068864822
		 0.17482382 0.068864822 0.17482376 0.068865299 0.17482382 0.068865299 0.17482376 0.068865299
		 0.17482382 0.068865299 0.17482376 0.068865299 0.17482388 0.068865299 0.17482376 0.068864822
		 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822 0.18252683 0.068864822
		 0.18252683 0.068864822 0.18252677 0.068864822 0.18252683 0.068864822 0.18252677 0.068864822
		 0.18252671 0.068864822 0.18252671 0.068864822 0.18252677 0.068864822 0.18252677 0.068864822
		 0.18252671 0.068865299 0.18252671 0.068864822 0.18252671 0.068865299 0.18252671 0.068865299
		 0.18252683 0.068865299 0.18252683 0.068865299 0.18252671 0.068865299 0.18252671 0.068864822
		 0.18252683 0.068864822 0.18252683 0.068865299 0.18252683 0.068865299 0.18252683 0.037325859
		 0.37633049 0.037326813 0.37633049 0.037325859 0.37633049 0.037326813 0.37633049 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037326813
		 0.37633049 0.037325859 0.37633049 0.037326813 0.37633049 0.037325859 0.37633049 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.027467251
		 0.27552652;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.027467251 0.27552652 0.027467728 0.27552652
		 0.027467728 0.27552652 0.027467251 0.27552652 0.027467251 0.275527 0.027467251 0.27552652
		 0.027467251 0.275527 0.027467251 0.275527 0.027467251 0.275527 0.027467251 0.275527
		 0.027466774 0.275527 0.027467728 0.27552652 0.027467728 0.27552652 0.027467728 0.27552652
		 0.027467728 0.27552652 0.027466774 0.275527 0.027466774 0.275527 0.027467251 0.275527
		 0.027466774 0.275527 0.027466774 0.275527 0.027467728 0.27552652 0.027466774 0.275527
		 0.027467728 0.27552652 0.050118476 0.19873464 0.050118476 0.1987347 0.050118476 0.19873464
		 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.1987347 0.050118476 0.1987347 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.1987347 0.050118476 0.19873464 0.050118476 0.1987347 0.050118476
		 0.19873464 0.050118476 0.1987347 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.1987347 0.050118476
		 0.19873464 0.050118476 0.1987347 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.1987347 0.050118476 0.1987347 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.1987347 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.1987347 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476 0.19873464 0.050118476
		 0.19873464 0.050118476 0.19873464 0.057649612 0.17175293 0.05765152 0.17175293 0.057651035
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.057650566 0.17175293 0.057651035
		 0.17175293 0.057650037 0.17175293 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026 0.10214996 0.35202026 0.057649612 0.17175293 0.057649612 0.17175293 0.057650037
		 0.17175293 0.057651035 0.17175293 0.057651035 0.17175293 0.057650037 0.17175293 0.057651035
		 0.17175293 0.057650037 0.17175293 0.057650037 0.17175293 0.057650037 0.17175293 0.057650566
		 0.17175293 0.057650566 0.17175293 0.057650566 0.17175293 0.057650566 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.057651035
		 0.17175293 0.057651035 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.057649612 0.17175293 0.057651035 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.057650037 0.17175293 0.057650566 0.17175293 0.057651035
		 0.17175293 0.05765152 0.17175293 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.10214996 0.35202026 0.057649612 0.17175293
		 0.057650037 0.17175293 0.057649612 0.17175293 0.057651035 0.17175293 0.057650037
		 0.17175293 0.057650037 0.17175293 0.057651035 0.17175293 0.057651035 0.17175293 0.057650037
		 0.17175293 0.057650566 0.17175293 0.057650037 0.17175293 0.057650566 0.17175293 0.057650566
		 0.17175293 0.05765152 0.17175293 0.057650566 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.057651035 0.17175293 0.05765152 0.17175293 0.057651035 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.020769268 0.18586051 0.020769268 0.18586051
		 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.020769268 0.18586051 0.020769268 0.18586051
		 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.020769268 0.18586051 0.020769268 0.18586051
		 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293;
	setAttr ".uvst[0].uvsp[2500:2749]" 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.020769268 0.18586057 0.020769268 0.18586057
		 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586051 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.13356113 0.25039673 0.13356113
		 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.13384905 0.25483692 0.13384905
		 0.25483692 0.13384905 0.25483692 0.13384905 0.25483692 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.059298515 0.17565918 0.059298813
		 0.17565918 0.059298515 0.17565918 0.059298813 0.17565918 0.057649612 0.17175293 0.057649553
		 0.17175293 0.057649612 0.17175293 0.057649553 0.17175293 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649553 0.17173767 0.057649553 0.17173767 0.057649612 0.17173767 0.057649553
		 0.17173767 0.057649612 0.17173767 0.057649553 0.17173767 0.057579517 0.17198944 0.057579041
		 0.17198944 0.057579517 0.17199707 0.057579041 0.17199707 0.057579517 0.17198944 0.057579041
		 0.17198944 0.057579517 0.17198944 0.057579041 0.17198944 0.057579517 0.17198944 0.057579041
		 0.17198944 0.057579517 0.17198944 0.057579041 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579041 0.17198944 0.057649612 0.17173767 0.057649553
		 0.17173767 0.057649612 0.17173767 0.057649553 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649553 0.17173767 0.057649553 0.17173767 0.057732105 0.17397308 0.057732105
		 0.17397308 0.057732344 0.17397308 0.057732344 0.17397308 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.068865329 0.17482758 0.068864822
		 0.17482758 0.068865329 0.17482758 0.068865299 0.17482758 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.05765152 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.057649612 0.17175293 0.05765152
		 0.17175293 0.057649612 0.17175293 0.05765152 0.17175293 0.057649612 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.16503096 0.0083770752 0.16503239
		 0.0083770752 0.16503096 0.0083770752 0.16503239 0.0083770752 0.057649612 0.17173767
		 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.057649612 0.17175293 0.05765152 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17173767 0.057649612 0.17173767;
	setAttr ".uvst[0].uvsp[2750:2999]" 0.057649612 0.17173767 0.057649612 0.17173767
		 0.068864822 0.17482758 0.068864822 0.17482758 0.068864822 0.17482758 0.068864822
		 0.17482758 0.068865299 0.17482758 0.068864822 0.17482758 0.068864822 0.17482758 0.068864822
		 0.17482758 0.057649612 0.17173767 0.057649612 0.17173767 0.05765152 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.05765152
		 0.17173767 0.057732105 0.17397308 0.057732105 0.17397308 0.057732344 0.17397308 0.057732344
		 0.17397308 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.05765152 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17173767 0.057649553 0.17175293 0.057649553
		 0.17173767 0.057732105 0.17397308 0.057732105 0.17397308 0.057731628 0.17397308 0.057731628
		 0.17397308 0.057731628 0.17397308 0.057731628 0.17397308 0.057732582 0.17397308 0.057731628
		 0.17397308 0.057732582 0.17397308 0.057731628 0.17397308 0.057732105 0.17397308 0.057732582
		 0.17397308 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.021255255 0.16581911 0.021255255 0.16581905 0.021255255
		 0.16581905 0.068865299 0.17482758 0.068865299 0.17482758 0.068865538 0.17482758 0.068865538
		 0.17482758 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166
		 0.19092476 0.020769268 0.16390145 0.020769268 0.16390145 0.020769268 0.16390145 0.020769268
		 0.16390145 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166
		 0.19092476 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268
		 0.18586051 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255
		 0.16581905 0.13384905 0.25483692 0.13384905 0.25483692 0.13384905 0.25483692 0.13384905
		 0.25483692 0.13384905 0.25483692 0.13384905 0.25483692 0.13384905 0.25483692 0.13384905
		 0.25483692 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.059298813 0.17565918 0.059298813 0.17565918 0.059298515 0.17565918 0.059298515
		 0.17565918 0.057649553 0.17175293 0.057649553 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17173767 0.057649553 0.17173767 0.057649612 0.17173767 0.057649553
		 0.17173767 0.057649553 0.17173767 0.057649553 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.046815515 0.1745224 0.046815515 0.17453003 0.046815872 0.1745224 0.046815872
		 0.17453003 0.046815872 0.1745224 0.046815872 0.1745224 0.046815515 0.1745224 0.046815515
		 0.1745224 0.046815872 0.1745224 0.046815395 0.1745224 0.046815515 0.1745224 0.046815515
		 0.1745224 0.045027971 0.1834259 0.045027971 0.1834259 0.045027912 0.1834259 0.045027912
		 0.1834259 0.057649553 0.17173767 0.057649553 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649553 0.17173767 0.057649612 0.17173767 0.057649553
		 0.17173767 0.057732105 0.17397308 0.057732344 0.17397308 0.057732105 0.17397308 0.057732344
		 0.17397308 0.16503143 0.0083847046 0.16503119 0.0083847046 0.16503125 0.0083847046
		 0.16503125 0.0083847046 0.16503125 0.0083847046 0.16503119 0.0083847046 0.16503125
		 0.0083847046 0.16503096 0.0083847046 0.068865299 0.17482758 0.068865299 0.17482758
		 0.068865329 0.17482758 0.068865329 0.17482758 0.020769268 0.18586057 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.050293166
		 0.19092476 0.050293166 0.19092476 0.050293166 0.19092476 0.057649612 0.17173767 0.05765152
		 0.17175293 0.05765152 0.17173767 0.05765152 0.17175293 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.05765152 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17175293 0.057649612 0.17173767 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.16503096 0.0083770752 0.16503096
		 0.0083770752 0.16503239 0.0083770752 0.16503239 0.0083770752 0.057649612 0.17173767
		 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767;
	setAttr ".uvst[0].uvsp[3000:3249]" 0.057649612 0.17173767 0.057649612 0.17173767
		 0.057649612 0.17173767 0.057649612 0.17173767 0.05765152 0.17175293 0.05765152 0.17175293
		 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293
		 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.068864822 0.17482758 0.068864822
		 0.17482758 0.068864822 0.17482758 0.068864822 0.17482758 0.068865299 0.17482758 0.068864822
		 0.17482758 0.068864822 0.17482758 0.068864822 0.17482758 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057732105 0.17397308 0.057732344
		 0.17397308 0.057732105 0.17397308 0.057732344 0.17397308 0.057649612 0.17173767 0.057649612
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.05765152
		 0.17173767 0.057649612 0.17173767 0.057649612 0.17173767 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.057649553 0.17173767 0.057649612
		 0.17173767 0.057649553 0.17175293 0.057649612 0.17175293 0.057732582 0.17397308 0.057732105
		 0.17397308 0.057732582 0.17397308 0.057732105 0.17397308 0.057732582 0.17397308 0.057732582
		 0.17397308 0.057732582 0.17397308 0.057732582 0.17397308 0.057732105 0.17397308 0.057732105
		 0.17397308 0.057732582 0.17397308 0.057732582 0.17397308 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255
		 0.16581905 0.021255255 0.16581905 0.068865299 0.17482758 0.068865299 0.17482758 0.068865538
		 0.17482758 0.068865538 0.17482758 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.046815515 0.1745224 0.046815872 0.1745224 0.046815515
		 0.17453003 0.046815872 0.17453003 0.046815515 0.1745224 0.046815872 0.1745224 0.046815515
		 0.1745224 0.046815872 0.1745224 0.046815515 0.1745224 0.046815872 0.1745224 0.046815515
		 0.1745224 0.046815872 0.1745224 0.045027912 0.1834259 0.045027733 0.1834259 0.045027912
		 0.1834259 0.045027733 0.1834259 0.16503125 0.0083847046 0.16503096 0.0083847046 0.16503125
		 0.0083847046 0.16503096 0.0083847046 0.16503125 0.0083847046 0.16503125 0.0083847046
		 0.16503096 0.0083847046 0.16503096 0.0083847046 0.057579517 0.17198944 0.057579517
		 0.17199707 0.057579041 0.17198944 0.057579041 0.17199707 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579041 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.059298515 0.17565918 0.059298515
		 0.17565918 0.059298813 0.17565918 0.059298813 0.17565918 0.057579517 0.17199707 0.057579517
		 0.17198944 0.057579517 0.17199707 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057732344 0.17397308 0.057732344
		 0.17397308 0.057732105 0.17397308 0.057732105 0.17397308 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579041 0.17198944 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.059298515 0.17565918 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.057732105 0.17397308 0.057732105
		 0.17397308 0.057731628 0.17397308 0.057731628 0.17397308 0.057731628 0.17397308 0.057731628
		 0.17397308 0.057731628 0.17397308 0.057731628 0.17397308 0.057731628 0.17397308 0.057731628
		 0.17397308 0.057732582 0.17397308 0.057732582 0.17397308 0.057579041 0.17198944 0.057579041
		 0.17198944 0.057579517 0.17198944 0.057579041 0.17198944 0.059298515 0.17565918 0.059298813
		 0.17565918 0.059298515 0.17565918 0.059298813 0.17565918 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057732344 0.17397308 0.057732105
		 0.17397308 0.057732344 0.17397308 0.057732105 0.17397308 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.059298515 0.17565918 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.057732105 0.17397308 0.057732582
		 0.17397308 0.057732105 0.17397308 0.057732582 0.17397308 0.057732582 0.17397308 0.057732582
		 0.17397308 0.057732582 0.17397308 0.057732582 0.17397308 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579041 0.17198944 0.057579517 0.17198944 0.057732582 0.17397308 0.057732105
		 0.17397308 0.057732582 0.17397308 0.057732105 0.17397308 0.057579517 0.17199707 0.057579517
		 0.17199707 0.057579517 0.17199707 0.057579517 0.17199707 0.057579517 0.17199707 0.057579517
		 0.17199707 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944;
	setAttr ".uvst[0].uvsp[3250:3499]" 0.057579517 0.17198944 0.057579517 0.17198944
		 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298813 0.17565918 0.059298813 0.17565918 0.059298813
		 0.17565918 0.059298813 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057579517
		 0.17199707 0.057579041 0.17199707 0.057579517 0.17199707 0.057579041 0.17199707 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515
		 0.17565918 0.059298813 0.17565918 0.059298515 0.17565918 0.059298813 0.17565918 0.059298813
		 0.17565918 0.059298515 0.17565918 0.059298813 0.17565918 0.059298515 0.17565918 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057579517
		 0.17199707 0.057579517 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298813
		 0.17565918 0.059298515 0.17565918 0.059298813 0.17565918 0.059298515 0.17565918 0.059298813
		 0.17565918 0.059298813 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057579517
		 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298813
		 0.17565918 0.059298813 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298813
		 0.17565918 0.059298515 0.17565918 0.059298813 0.17565918 0.059298515 0.17565918 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057579517
		 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515
		 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.059298515 0.17565918 0.020769268
		 0.18586057 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586051 0.020769268 0.18586057 0.020769268 0.18586057 0.020769268
		 0.18586051 0.020769268 0.18586057 0.020769268 0.18586051 0.020769268 0.18586057 0.057579041
		 0.17199707 0.057579041 0.17199707 0.057579041 0.17198944 0.057579041 0.17198944 0.057579041
		 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579041
		 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579041
		 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579517 0.17198944 0.057579041
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579041
		 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579517
		 0.17199707 0.057579517 0.17199707 0.057579517 0.17199707 0.057579517 0.17199707 0.057579041
		 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041
		 0.17199707 0.057579041 0.17198944 0.057579041 0.17199707 0.057579041 0.17198944 0.057579041
		 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579041
		 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579517 0.17198944 0.057579041
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057579517
		 0.17199707 0.057579517 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041
		 0.17199707 0.057579041 0.17199707 0.057579517 0.17199707 0.057579041 0.17199707 0.057579041
		 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057649612
		 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057649612 0.17175293 0.057579041
		 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579517
		 0.17199707 0.057579041 0.17199707 0.057579517 0.17199707 0.057579041 0.17199707 0.021255255
		 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021008372
		 0.1872406;
	setAttr ".uvst[0].uvsp[3500:3749]" 0.021008492 0.1872406 0.021008372 0.1872406
		 0.021008492 0.1872406 0.021008492 0.1872406 0.021008492 0.1872406 0.021008372 0.1872406
		 0.021008372 0.1872406 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905
		 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255 0.16581905 0.021255255
		 0.16581905 0.16503125 0.0083847046 0.16503125 0.0083847046 0.16503096 0.0083847046
		 0.16503096 0.0083847046 0.16503125 0.0083847046 0.16503096 0.0083847046 0.16503125
		 0.0083847046 0.16503096 0.0083847046 0.050302319 0.19019967 0.050302319 0.19019967
		 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319
		 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319
		 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319
		 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319
		 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319
		 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319
		 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.050302319
		 0.19019967 0.050302319 0.19019967 0.050302319 0.19019967 0.013987737 0.011820912
		 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737
		 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912
		 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737
		 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912
		 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737
		 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912
		 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737
		 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912
		 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737
		 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912
		 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737 0.011820912 0.013987737
		 0.011820912 0.026717823 0.24812001 0.026717823 0.24812001 0.026717823 0.24812001
		 0.026717823 0.24812001 0.026717823 0.24812001 0.026717823 0.24812001 0.026717823
		 0.24812001 0.026717823 0.24812001 0.026717823 0.24812001 0.026717823 0.24812001 0.026717823
		 0.24812001 0.026717823 0.24812001 0.026717823 0.24812001 0.026717823 0.24812001 0.026717823
		 0.24812001 0.026717823 0.24812001 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.057651035 0.17175293 0.05765152
		 0.17175293 0.057651035 0.17175293 0.057651035 0.17175293 0.05765152 0.17175293 0.057651035
		 0.17175293 0.05765152 0.17175293 0.057651035 0.17175293 0.057651035 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.057651035
		 0.17175293 0.057651035 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152 0.17175293 0.05765152
		 0.17175293 0.05765152 0.17175293 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996 0.35202026 0.10214996
		 0.35202026 0.10214996 0.35202026 0.13356121 0.25039673 0.13356121 0.25039673 0.13356113
		 0.25039673 0.13356113 0.25039673 0.13356133 0.25039673 0.13356137 0.25039673 0.13356121
		 0.25039673 0.13356113 0.25039673 0.13356137 0.25039673 0.13356113 0.25039673 0.13356137
		 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.13356113 0.25039673 0.13356113
		 0.25039673 0.13356113 0.25039673 0.13356121 0.25039673 0.13356121 0.25039673 0.13356113
		 0.25039673 0.13356113 0.25039673 0.13356121 0.25039673 0.13356113 0.25039673 0.13356121
		 0.25039673 0.13356113 0.25039673 0.13356133 0.25039673 0.13356137 0.25039673 0.13356133
		 0.25039673 0.13356137 0.25039673 0.13356121 0.25039673 0.13356121 0.25039673 0.13356113
		 0.25039673 0.13356113 0.25039673 0.13356121 0.25039673 0.13356121 0.25039673 0.13356128
		 0.25039673 0.13356128 0.25039673 0.13356128 0.25039673 0.13356133 0.25039673 0.13356128
		 0.25039673 0.13356121 0.25039673 0.13356128 0.25039673 0.13356133 0.25039673 0.13356128
		 0.25039673 0.13356133 0.25039673 0.13356121 0.25039673 0.13356121 0.25039673 0.13356128
		 0.25039673 0.13356128 0.25039673 0.13356121 0.25039673 0.13356121 0.25039673 0.13356128
		 0.25039673 0.13356128 0.25039673 0.13356128 0.25039673 0.13356121 0.25039673 0.13356128
		 0.25039673 0.13356121 0.25039673 0.057579041 0.17199707 0.057579517 0.17199707 0.057579041
		 0.17199707 0.057579517 0.17199707 0.057579517 0.17199707 0.057579041 0.17199707 0.057579517
		 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041
		 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041 0.17199707 0.057579041
		 0.17199707 0.057579041 0.17199707 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944;
	setAttr ".uvst[0].uvsp[3750:3836]" 0.057579041 0.17198944 0.057579041 0.17198944
		 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579041 0.17198944 0.057579041 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.057579517
		 0.17198944 0.057579517 0.17198944 0.057579517 0.17198944 0.049621582 0.18945313 0.049621582
		 0.18945313 0.049621582 0.18945313 0.049621582 0.18945313 0.027467251 0.27552658 0.027467251
		 0.27552652 0.027467251 0.27552658 0.027467251 0.27552652 0.027467251 0.27552658 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037326813 0.37633049 0.037326813 0.37633049 0.037326813
		 0.37633049 0.037326813 0.37633049 0.037326813 0.37633049 0.037326813 0.37633049 0.027467728
		 0.27552652 0.027467728 0.27552658 0.027467728 0.27552658 0.027467728 0.27552652 0.027467728
		 0.27552658 0.027467251 0.27552658 0.027467251 0.27552652 0.027467251 0.27552658 0.027467251
		 0.27552652 0.027467251 0.27552658 0.037325859 0.37633049 0.037326813 0.37633049 0.037325859
		 0.37633049 0.037326813 0.37633049 0.037325859 0.37633049 0.037326813 0.37633049 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037326813 0.37633049 0.037325859 0.37633049 0.037325859
		 0.37633049 0.037326813 0.37633049 0.037325859 0.37633049 0.037326813 0.37633049 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859
		 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037325859 0.37633049 0.037326813
		 0.37633049 0.037326813 0.37633049 0.037326813 0.37633049 0.037326813 0.37633049 0.037326813
		 0.37633049 0.037326813 0.37633049;
	setAttr ".uvst[1].uvsn" -type "string" "LightMapUV";
	setAttr -s 3837 ".uvst[1].uvsp";
	setAttr ".uvst[1].uvsp[0:249]" -type "float2" 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[250:499]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[500:749]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[750:999]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26728287
		 0 1 0 0 0.34969682 0 0 0.99999994 0 0.026262308 0.4298774 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[1000:1249]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[1250:1499]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[1500:1749]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[1750:1999]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[2000:2249]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[2250:2499]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[2500:2749]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[2750:2999]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[3000:3249]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[3250:3499]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[3500:3749]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[1].uvsp[3750:3836]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.90079063
		 0.39767337 0 0 1 0.26517844 0.92508554 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "DiffuseUV";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet0";
	setAttr -s 5403 ".clst[0].clsp";
	setAttr ".clst[0].clsp[0:124]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[125:249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[250:374]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[375:499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[500:624]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[625:749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[750:874]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[875:999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[1000:1124]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[1125:1249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[1250:1374]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[1375:1499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[1500:1624]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[1625:1749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[1750:1874]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[1875:1999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[2000:2124]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[2125:2249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[2250:2374]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[2375:2499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[2500:2624]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[2625:2749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[2750:2874]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[2875:2999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[3000:3124]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[3125:3249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[3250:3374]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[3375:3499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[3500:3624]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[3625:3749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[3750:3874]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[3875:3999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[4000:4124]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[4125:4249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[4250:4374]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[4375:4499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[4500:4624]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[4625:4749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[4750:4874]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[4875:4999]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[5000:5124]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[5125:5249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[5250:5374]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[5375:5402]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1;
	setAttr -s 3837 ".vt";
	setAttr ".vt[0:165]"  6.24481201 5.99796295 42.70347595 5.49291992 0.50385332 40.14610291
		 7.067749023 1.76442134 44.35089493 5.61279297 6.96408796 38.19497299 5.42950439 9.14916801 29.65756416
		 5.49291992 0.50385332 40.14610291 8.018554688 6.60089493 6.56778383 7.41802979 8.6576376 1.27391982
		 7.17193651 1.59990382 9.89914322 6.24481201 5.99796295 42.70347595 5.61279297 6.96408796 38.19497299
		 5.49291992 0.50385332 40.14610291 16.66217041 6.96408796 38.19497299 15.90661621 5.99796295 42.70347595
		 16.43963623 1.2174418 40.14610291 10.43035889 -12.79288101 3.54260874 7.46295166 -12.86569977 3.359061
		 7.53118896 -13.43244934 1.27391994 15.90661621 5.99796295 42.70347595 15.14550686 1.53581548 44.1116066
		 16.43963623 1.2174418 40.14610291 17.27532959 9.099180222 28.14627838 16.66217041 6.96408796 38.19497299
		 16.43963623 1.2174418 40.14610291 15.73346043 8.9023695 1.27391982 15.087890625 6.83224154 6.56778383
		 15.82586575 2.28256631 9.89914322 9.79675293 8.57357311 59.39028931 16.82409668 6.23168182 60.57230377
		 15.90661621 5.99796295 42.70347595 11.65588284 11.17529202 28.64988327 5.42950439 9.14916801 29.65756416
		 5.61279297 6.96408796 38.19497299 7.41802979 8.6576376 1.27391982 8.018554688 6.60089493 6.56778383
		 11.50421143 8.56880856 6.56778383 15.14550686 1.53581548 44.1116066 11.27892971 -1.66975999 46.79209137
		 11.059570313 -2.43864655 42.99221039 7.067749023 1.76442134 44.35089493 11.059570313 -2.43864655 42.99221039
		 11.27892971 -1.66975999 46.79209137 11.50421143 8.56880856 6.56778383 15.087890625 6.83224154 6.56778383
		 15.73346043 8.9023695 1.27391982 16.66217041 6.96408796 38.19497299 11.65588284 11.17529202 28.64988327
		 5.61279297 6.96408796 38.19497299 7.41802979 8.6576376 1.27391982 11.50421143 8.56880856 6.56778383
		 15.73346043 8.9023695 1.27391982 16.66217041 6.96408796 38.19497299 17.27532959 9.099180222 28.14627838
		 11.65588284 11.17529202 28.64988327 3.50744605 6.6000638 59.10909653 9.79675293 8.57357311 59.39028931
		 6.24481201 5.99796295 42.70347595 9.79675293 8.57357311 59.39028931 15.90661621 5.99796295 42.70347595
		 6.24481201 5.99796295 42.70347595 15.90661621 5.99796295 42.70347595 16.14544678 -0.036900282 46.57811356
		 15.14550686 1.53581548 44.1116066 15.14550686 1.53581548 44.1116066 16.14544678 -0.036900282 46.57811356
		 11.27892971 -1.66975999 46.79209137 6.68426514 1.39072609 46.54836655 7.067749023 1.76442134 44.35089493
		 11.27892971 -1.66975999 46.79209137 6.24481201 5.99796295 42.70347595 7.067749023 1.76442134 44.35089493
		 6.68426514 1.39072609 46.54836655 16.78833008 -13.18771362 1.27391994 16.66723633 -12.63362885 2.68204689
		 10.43035889 -12.79288101 3.54260874 16.78833008 -13.18771362 1.27391994 10.43035889 -12.79288101 3.54260874
		 7.53118896 -13.43244934 1.27391994 15.82586575 2.28256631 9.89914322 16.44567871 -7.80275536 3.79991484
		 16.54278564 -3.90012121 1.27391994 7.28564501 -4.14485455 1.27391994 7.31982422 -8.038384438 4.66047716
		 7.17193651 1.59990382 9.89914322 7.41802979 8.6576376 1.27391982 7.28564501 -4.14485455 1.27391994
		 7.17193651 1.59990382 9.89914322 15.73346043 8.9023695 1.27391982 15.82586575 2.28256631 9.89914322
		 16.54278564 -3.90012121 1.27391994 -6.24481201 5.99796295 42.70347595 -7.067749023 1.76442134 44.35089493
		 -5.49291992 0.50385332 40.14610291 -5.61279297 6.96408796 38.19497299 -5.49291992 0.50385332 40.14610291
		 -5.42950439 9.14916801 29.65756416 -8.018554688 6.60089493 6.56778383 -7.17193651 1.59990382 9.89914322
		 -7.41802979 8.6576376 1.27391982 -6.24481201 5.99796295 42.70347595 -5.49291992 0.50385332 40.14610291
		 -5.61279297 6.96408796 38.19497299 -16.66217041 6.96408796 38.19497299 -16.43963623 1.2174418 40.14610291
		 -15.90661621 5.99796295 42.70347595 -10.43035889 -12.79288101 3.54260874 -7.53118896 -13.43244934 1.27391994
		 -7.46295166 -12.86569977 3.359061 -15.90661621 5.99796295 42.70347595 -16.43963623 1.2174418 40.14610291
		 -15.14550686 1.53581548 44.1116066 -17.27532959 9.099180222 28.14627838 -16.43963623 1.2174418 40.14610291
		 -16.66217041 6.96408796 38.19497299 -15.73346043 8.9023695 1.27391982 -15.82586575 2.28256631 9.89914322
		 -15.087890625 6.83224154 6.56778383 -9.79675293 8.57357311 59.39028931 -15.90661621 5.99796295 42.70347595
		 -16.82409668 6.23168182 60.57230377 -11.65588284 11.17529202 28.64988327 -5.61279297 6.96408796 38.19497299
		 -5.42950439 9.14916801 29.65756416 -7.41802979 8.6576376 1.27391982 -11.50421143 8.56880856 6.56778383
		 -8.018554688 6.60089493 6.56778383 -15.14550686 1.53581548 44.1116066 -11.059570313 -2.43864655 42.99221039
		 -11.27892971 -1.66975999 46.79209137 -7.067749023 1.76442134 44.35089493 -11.27892971 -1.66975999 46.79209137
		 -11.059570313 -2.43864655 42.99221039 -11.50421143 8.56880856 6.56778383 -15.73346043 8.9023695 1.27391982
		 -15.087890625 6.83224154 6.56778383 -16.66217041 6.96408796 38.19497299 -5.61279297 6.96408796 38.19497299
		 -11.65588284 11.17529202 28.64988327 -7.41802979 8.6576376 1.27391982 -15.73346043 8.9023695 1.27391982
		 -11.50421143 8.56880856 6.56778383 -16.66217041 6.96408796 38.19497299 -11.65588284 11.17529202 28.64988327
		 -17.27532959 9.099180222 28.14627838 -3.50744605 6.6000638 59.10909653 -6.24481201 5.99796295 42.70347595
		 -9.79675293 8.57357311 59.39028931 -9.79675293 8.57357311 59.39028931 -6.24481201 5.99796295 42.70347595
		 -15.90661621 5.99796295 42.70347595 -15.90661621 5.99796295 42.70347595 -15.14550686 1.53581548 44.1116066
		 -16.14544678 -0.036900282 46.57811356 -15.14550686 1.53581548 44.1116066 -11.27892971 -1.66975999 46.79209137
		 -16.14544678 -0.036900282 46.57811356 -6.68426514 1.39072609 46.54836655 -11.27892971 -1.66975999 46.79209137
		 -7.067749023 1.76442134 44.35089493 -6.24481201 5.99796295 42.70347595 -6.68426514 1.39072609 46.54836655
		 -7.067749023 1.76442134 44.35089493 -16.78833008 -13.18771362 1.27391994 -10.43035889 -12.79288101 3.54260874
		 -16.66723633 -12.63362885 2.68204689 -16.78833008 -13.18771362 1.27391994;
	setAttr ".vt[166:331]" -7.53118896 -13.43244934 1.27391994 -10.43035889 -12.79288101 3.54260874
		 -15.82586575 2.28256631 9.89914322 -16.54278564 -3.90012121 1.27391994 -16.44567871 -7.80275536 3.79991484
		 -7.28564501 -4.14485455 1.27391994 -7.17193651 1.59990382 9.89914322 -7.31982422 -8.038384438 4.66047716
		 -7.41802979 8.6576376 1.27391982 -7.17193651 1.59990382 9.89914322 -7.28564501 -4.14485455 1.27391994
		 -15.73346043 8.9023695 1.27391982 -16.54278564 -3.90012121 1.27391994 -15.82586575 2.28256631 9.89914322
		 0 14.7016964 171.2066803 -3.81787109 5.95506573 182.087539673 2.61407471 6.53926563 183.053131104
		 -6.43194628 5.85998631 179.86268616 0 14.7016964 171.2066803 -8.020690918 5.85998631 180.50985718
		 -5.42346191 -5.76568317 176.31228638 -5.58752441 -5.42486858 178.69909668 -7.1762085 -5.42486858 179.3462677
		 0 -5.97735786 177.47706604 10.84686279 -5.55400944 175.14750671 10.84686279 -5.55400944 173.36326599
		 10.84686279 -5.55400944 175.14750671 10.91375732 -1.40712094 167.54963684 10.84686279 -5.55400944 173.36326599
		 -5.58752441 -5.42486858 178.69909668 -5.42346191 -5.76568317 176.31228638 -2.97338867 -5.32978916 181.47990417
		 0 14.7016964 171.2066803 -6.43194628 5.85998631 179.86268616 -3.81787109 5.95506573 182.087539673
		 -5.42346191 -5.76568317 176.31228638 0 -5.97735786 177.47706604 0 -11.67099285 173.3621521
		 2.33117676 -5.95296383 180.92332458 -2.97338867 -5.32978916 181.47990417 2.1963501 -10.95584774 178.17810059
		 -10.84686279 -5.55401039 175.14750671 -5.42346191 -5.76568317 176.31228638 -9.46722412 -8.7788496 172.92068481
		 -7.1762085 -5.42486858 179.3462677 -12.76373291 -5.23080158 178.016311646 -11.041564941 -8.51338291 175.27697754
		 12.98431492 3.35859323 145.011642456 13.44848633 5.93331814 146.19578552 10.62683105 6.49594212 146.30253601
		 8.33746338 14.84312439 140.62487793 10.62683105 6.49594212 146.30253601 16.84063721 13.94336796 140.10919189
		 10.62683105 6.49594212 146.30253601 13.44848633 5.93331814 146.19578552 16.84063721 13.94336796 140.10919189
		 13.44848633 5.93331814 146.19578552 16.93359375 5.67458439 146.007598877 16.84063721 13.94336796 140.10919189
		 19.58300781 -1.57329547 139.65901184 22.81524658 -0.43271518 138.61064148 22.11810493 2.77940965 142.59805298
		 10.079711914 -2.46203542 141.84472656 12.98431492 3.35859323 145.011642456 10.62683105 6.49594212 146.30253601
		 -12.98431492 3.35859323 145.011642456 -10.62683105 6.49594212 146.30253601 -13.44848633 5.93331814 146.19578552
		 -8.33746338 14.84312439 140.62487793 -16.84063721 13.94336796 140.10919189 -10.62683105 6.49594212 146.30253601
		 -10.62683105 6.49594212 146.30253601 -16.84063721 13.94336796 140.10919189 -13.44848633 5.93331814 146.19578552
		 -16.84063721 13.94336796 140.10919189 -16.93359375 5.67458439 146.007598877 -13.44848633 5.93331814 146.19578552
		 -19.58300781 -1.57329547 139.65901184 -22.11810493 2.77940965 142.59805298 -22.81524658 -0.43271518 138.61064148
		 -10.079711914 -2.46203494 141.84472656 -10.62683105 6.49594212 146.30253601 -12.98431492 3.35859323 145.011642456
		 54.71966171 11.034690857 134.89549255 50.76514053 11.77939034 137.37922668 54.58270264 9.77108574 137.85501099
		 54.58270264 9.77108574 137.85501099 56.43164063 5.52288342 141.05821228 57.018436432 9.12574768 137.88963318
		 55.094547272 3.52778697 130.15626526 54.061096191 8.77476597 132.25418091 56.38318253 8.12495041 132.45724487
		 79.2265625 6.026581764 134.62736511 69.20672607 7.19319153 135.28431702 79.60168457 6.41727543 136.63342285
		 50.081787109 10.77901268 130.89974976 50.76514053 11.77939034 137.37922668 54.71966171 11.034690857 134.89549255
		 50.081787109 10.77901268 130.89974976 54.71966171 11.034690857 134.89549255 54.061096191 8.77476597 132.25418091
		 93.96917725 -7.43793106 131.1653595 88.55047607 -6.94781017 131.5736084 92.51733398 -7.50330925 130.19436646
		 87.37060547 0.037686586 133.62104797 90.81219482 2.73973966 134.72187805 89.70556641 -0.97306466 134.76823425
		 90.16662598 5.40753078 138.41236877 83.072814941 4.33594418 138.96601868 90.39916992 1.99615085 138.72935486
		 88.35046387 -5.45580864 134.89546204 89.44494629 -2.79524207 134.86703491 87.96148682 -2.6501925 136.53988647
		 87.48114014 -2.64662337 131.98078918 87.37060547 0.037686586 133.62104797 89.70556641 -0.97306466 134.76823425
		 90.77111816 6.014046669 134.29512024 82.64251709 7.71267509 133.70547485 89.82507324 8.9479599 133.76460266
		 82.72247314 1.13035452 132.49890137 82.64251709 7.71267509 133.70547485 90.81219482 2.73973966 134.72187805
		 87.96148682 -2.6501925 136.53988647 89.70556641 -0.97306466 134.76823425 89.22497559 -0.91167426 137.99807739
		 93.96917725 -7.43793106 131.1653595 94.66674805 -4.84246826 132.49188232 94.30578613 -7.10606003 132.78674316
		 82.33001709 -1.2280519 136.97155762 87.96148682 -2.6501925 136.53988647 89.22497559 -0.91167426 137.99807739
		 88.35046387 -5.45580864 134.89546204 87.96148682 -2.6501925 136.53988647 82.33001709 -1.2280519 136.97155762
		 89.70556641 -0.97306466 134.76823425 89.44494629 -2.79524207 134.86703491 87.48114014 -2.64662337 131.98078918
		 89.44494629 -2.79524207 134.86703491 89.70556641 -0.97306466 134.76823425 87.96148682 -2.6501925 136.53988647
		 89.97564697 -6.42468023 134.52680969 93.96917725 -7.43793106 131.1653595 94.30578613 -7.10606003 132.78674316
		 89.97564697 -6.42468023 134.52680969 88.55047607 -6.94781017 131.5736084 93.96917725 -7.43793106 131.1653595
		 92.51733398 -7.50330925 130.19436646 92.76733398 -4.88906193 129.51431274 93.96917725 -7.43793106 131.1653595
		 93.96917725 -7.43793106 131.1653595 92.76733398 -4.88906193 129.51431274 94.66674805 -4.84246826 132.49188232
		 101.37432861 -2.39691567 134.39125061 97.28271484 -1.80989575 134.33988953 100.43371582 -1.99401236 133.65762329
		 101.011047363 1.29094589 133.54110718 98.26574707 1.43828094 134.29133606 102.0062942505 1.20132625 134.30412292
		 87.48114014 -2.64662337 131.98078918 82.72247314 1.13035452 132.49890137 87.37060547 0.037686586 133.62104797
		 82.72247314 1.13035452 132.49890137 90.81219482 2.73973966 134.72187805 87.37060547 0.037686586 133.62104797
		 94.75976563 2.29336882 135.54426575 90.81219482 2.73973966 134.72187805;
	setAttr ".vt[332:497]" 94.69122314 5.5960598 134.99046326 90.77111816 6.014046669 134.29512024
		 94.69122314 5.5960598 134.99046326 90.81219482 2.73973966 134.72187805 83.044067383 8.61053371 137.40776062
		 89.53094482 7.7997694 137.32261658 88.90081787 9.51194954 136.42727661 94.69122314 5.5960598 134.99046326
		 90.77111816 6.014046669 134.29512024 93.59002686 8.082290649 134.5219574 90.81219482 2.73973966 134.72187805
		 82.64251709 7.71267509 133.70547485 90.77111816 6.014046669 134.29512024 -54.71966171 11.034690857 134.89549255
		 -54.58270264 9.77108669 137.85501099 -50.76514053 11.77939034 137.37922668 -54.58270264 9.77108669 137.85501099
		 -57.018436432 9.12574768 137.88963318 -56.43164063 5.52288437 141.05821228 -55.094547272 3.52778649 130.15626526
		 -56.38318253 8.12495041 132.45724487 -54.061096191 8.77476406 132.25418091 -79.2265625 6.026581764 134.62736511
		 -79.60168457 6.41727543 136.63342285 -69.20672607 7.19319153 135.28431702 -50.081787109 10.77901268 130.89974976
		 -54.71966171 11.034690857 134.89549255 -50.76514053 11.77939034 137.37922668 -50.081787109 10.77901268 130.89974976
		 -54.061096191 8.77476406 132.25418091 -54.71966171 11.034690857 134.89549255 -93.96917725 -7.43793106 131.1653595
		 -92.51733398 -7.50330925 130.19436646 -88.55047607 -6.94781017 131.5736084 -87.37060547 0.037686586 133.62104797
		 -89.70556641 -0.97306466 134.76823425 -90.81219482 2.73973966 134.72187805 -90.16662598 5.40753078 138.41236877
		 -90.39916992 1.99615085 138.72935486 -83.072814941 4.33594418 138.96601868 -88.35046387 -5.45580864 134.89546204
		 -87.96148682 -2.6501925 136.53988647 -89.44494629 -2.79524207 134.86703491 -87.48114014 -2.64662337 131.98078918
		 -89.70556641 -0.97306466 134.76823425 -87.37060547 0.037686586 133.62104797 -90.77111816 6.014046669 134.29512024
		 -89.82507324 8.9479599 133.76460266 -82.64251709 7.71267509 133.70547485 -82.72247314 1.13035452 132.49890137
		 -90.81219482 2.73973966 134.72187805 -82.64251709 7.71267509 133.70547485 -87.96148682 -2.6501925 136.53988647
		 -89.22497559 -0.91167426 137.99807739 -89.70556641 -0.97306466 134.76823425 -93.96917725 -7.43793106 131.1653595
		 -94.30578613 -7.10606003 132.78674316 -94.66674805 -4.84246826 132.49188232 -82.33001709 -1.2280519 136.97155762
		 -89.22497559 -0.91167426 137.99807739 -87.96148682 -2.6501925 136.53988647 -88.35046387 -5.45580864 134.89546204
		 -82.33001709 -1.2280519 136.97155762 -87.96148682 -2.6501925 136.53988647 -89.70556641 -0.97306466 134.76823425
		 -87.48114014 -2.64662337 131.98078918 -89.44494629 -2.79524207 134.86703491 -89.44494629 -2.79524207 134.86703491
		 -87.96148682 -2.6501925 136.53988647 -89.70556641 -0.97306466 134.76823425 -89.97564697 -6.42468023 134.52680969
		 -94.30578613 -7.10606003 132.78674316 -93.96917725 -7.43793106 131.1653595 -89.97564697 -6.42468023 134.52680969
		 -93.96917725 -7.43793106 131.1653595 -88.55047607 -6.94781017 131.5736084 -92.51733398 -7.50330925 130.19436646
		 -93.96917725 -7.43793106 131.1653595 -92.76733398 -4.88906193 129.51431274 -93.96917725 -7.43793106 131.1653595
		 -94.66674805 -4.84246826 132.49188232 -92.76733398 -4.88906193 129.51431274 -101.37432861 -2.39691567 134.39125061
		 -100.43371582 -1.99401236 133.65762329 -97.28271484 -1.80989575 134.33988953 -101.011047363 1.29094589 133.54110718
		 -102.0062942505 1.20132625 134.30412292 -98.26574707 1.43828094 134.29133606 -87.48114014 -2.64662337 131.98078918
		 -87.37060547 0.037686586 133.62104797 -82.72247314 1.13035452 132.49890137 -82.72247314 1.13035452 132.49890137
		 -87.37060547 0.037686586 133.62104797 -90.81219482 2.73973966 134.72187805 -94.75976563 2.29336882 135.54426575
		 -94.69122314 5.5960598 134.99046326 -90.81219482 2.73973966 134.72187805 -90.77111816 6.014046669 134.29512024
		 -90.81219482 2.73973966 134.72187805 -94.69122314 5.5960598 134.99046326 -83.044067383 8.61053371 137.40776062
		 -88.90081787 9.51194954 136.42727661 -89.53094482 7.7997694 137.32261658 -94.69122314 5.5960598 134.99046326
		 -93.59002686 8.082290649 134.5219574 -90.77111816 6.014046669 134.29512024 -90.81219482 2.73973966 134.72187805
		 -90.77111816 6.014046669 134.29512024 -82.64251709 7.71267509 133.70547485 11.092955589 -1.11077046 159.19769287
		 10.53601074 -2.46816564 159.45747375 10.38916016 -0.91460484 159.011993408 10.53601074 -2.46816564 159.45747375
		 11.092955589 -1.11077046 159.19769287 10.72491455 -1.93764329 163.50354004 11.092955589 -1.11077046 159.19769287
		 13.4101572 2.020276785 160.3782959 10.72491455 -1.93764329 163.50354004 13.4101572 2.020276785 160.3782959
		 14.15423584 3.91688991 166.57754517 10.72491455 -1.93764329 163.50354004 10.72491455 -1.93764329 163.50354004
		 14.15423584 3.91688991 166.57754517 10.91375732 -1.40712094 167.54963684 14.15423584 3.91688991 166.57754517
		 13.32946682 2.72491717 168.68161011 10.91375732 -1.40712094 167.54963684 10.91375732 -1.40712094 167.54963684
		 13.32946682 2.72491717 168.68161011 11.36437988 3.32235837 168.74110413 5.45410156 -5.092852592 151.6153717
		 9.84100342 -3.19913745 154.51304626 8.65771484 -9.4216404 152.62583923 15.22229004 -9.52626514 129.87559509
		 15.6973877 -2.25078058 141.88247681 5.72106934 -5.57582664 137.84706116 1.58380115 8.36008835 78.039558411
		 0 -4.79577732 75.7881546 0 11.26042175 78.97369385 5.12811279 -11.9782114 91.53930664
		 8.09564209 -10.97508717 82.42089081 7.32379198 -12.44577789 91.74349213 9.84100342 -3.19913745 154.51304626
		 10.53601074 -2.46816564 159.45747375 8.65771484 -9.4216404 152.62583923 16.32495117 -5.62407589 124.12385559
		 18.68145752 4.54329157 123.36599731 17.51373291 -3.75348592 128.84069824 17.51373291 -3.75348592 128.84069824
		 18.68145752 4.54329157 123.36599731 19.64758301 3.42707419 127.96007538 12.41094971 -10.85935116 124.31658173
		 16.32495117 -5.62407589 124.12385559 15.22229004 -9.52626514 129.87559509 15.22229004 -9.52626514 129.87559509
		 16.32495117 -5.62407589 124.12385559 17.51373291 -3.75348592 128.84069824 5.72106934 -5.57582664 137.84706116
		 15.6973877 -2.25078058 141.88247681 10.079711914 -2.46203542 141.84472656 0 -5.84168053 139.68997192
		 2.71624756 -5.81015301 138.73068237 5.055603027 -4.050958633 140.98173523 12.41094971 -10.85935116 124.31658173
		 10.74413967 -9.9612751 121.57449341 16.32495117 -5.62407589 124.12385559;
	setAttr ".vt[498:663]" 14.26294041 -11.35639668 129.87559509 6.83795118 -6.68165684 139.56416321
		 6.54345703 -10.072651863 130.27500916 7.78033447 -3.50344229 141.49485779 5.72106934 -5.57582664 137.84706116
		 9.62109375 -2.023079157 141.19007874 6.50524855 11.22046471 79.15821838 1.58380115 8.36008835 78.039558411
		 0 11.26042175 78.97369385 8.19421387 -5.73058128 77.96364594 16.39562988 -1.75216138 79.36686707
		 16.41973877 -3.49706626 82.33260345 7.13745117 13.85529327 85.011528015 7.020812988 12.98141479 92.9118576
		 16.97741699 5.81606865 89.54592133 18.53637695 12.8819437 131.082870483 19.64758301 3.42707419 127.96007538
		 18.68145752 4.54329157 123.36599731 8.87011719 16.15712738 124.5613327 18.53637695 12.8819437 131.082870483
		 18.68145752 4.54329157 123.36599731 1.58380115 8.36008835 78.039558411 1.84851074 -3.60659981 75.48327637
		 0 -4.79577732 75.7881546 1.58380115 8.36008835 78.039558411 6.50524855 11.22046471 79.15821838
		 3.60095191 6.64142323 74.47633362 8.19421387 -5.73058128 77.96364594 0 -4.79577732 75.7881546
		 1.84851074 -3.60659981 75.48327637 16.39562988 -1.75216138 79.36686707 8.19421387 -5.73058128 77.96364594
		 8.94702148 -4.54061747 76.16576385 6.50524855 11.22046471 79.15821838 8.86724854 9.1408577 76.77679443
		 3.60095191 6.64142323 74.47633362 8.19421387 -5.73058128 77.96364594 3.21588135 -2.42819715 74.43054962
		 8.94702148 -4.54061747 76.16576385 8.33746338 14.84312439 140.62487793 6.97540283 9.70086384 147.25073242
		 10.62683105 6.49594212 146.30253601 22.01776123 11.29488277 132.3613739 22.27703857 11.84458733 140.32098389
		 24.0076904297 11.36059761 138.85809326 19.293396 -2.60623765 135.0043640137 22.81524658 -0.43271518 138.61064148
		 19.58300781 -1.57329547 139.65901184 20.59979248 -1.46576953 133.029418945 22.81524658 -0.43271518 138.61064148
		 19.293396 -2.60623765 135.0043640137 18.53637695 12.8819437 131.082870483 8.87011719 16.15712738 124.5613327
		 8.83081055 16.72996521 133.53860474 8.19421387 -5.73058128 77.96364594 1.84851074 -3.60659981 75.48327637
		 3.21588135 -2.42819715 74.43054962 -11.092955589 -1.11077046 159.19769287 -10.38916016 -0.91460484 159.011993408
		 -10.53601074 -2.46816564 159.45747375 -10.53601074 -2.46816564 159.45747375 -10.72491455 -1.93764329 163.50354004
		 -11.092955589 -1.11077046 159.19769287 -11.092955589 -1.11077046 159.19769287 -10.72491455 -1.93764329 163.50354004
		 -13.4101572 2.020276785 160.3782959 -13.4101572 2.020276785 160.3782959 -10.72491455 -1.93764329 163.50354004
		 -14.15423584 3.91688991 166.57754517 -10.72491455 -1.93764329 163.50354004 -10.91375732 -1.40712094 167.54963684
		 -14.15423584 3.91688991 166.57754517 -14.15423584 3.91688991 166.57754517 -10.91375732 -1.40712094 167.54963684
		 -13.32946682 2.72491717 168.68161011 -10.91375732 -1.40712094 167.54963684 -11.36437988 3.32235837 168.74110413
		 -13.32946682 2.72491717 168.68161011 -15.22229004 -9.52626514 129.87559509 -5.72106934 -5.57582664 137.84706116
		 -15.6973877 -2.25078058 141.88247681 -1.58380115 8.36008835 78.039558411 0 11.26042175 78.97369385
		 0 -4.79577732 75.7881546 -10.84747314 9.078814507 160.91529846 -9.84100342 -3.19913745 154.51304626
		 -10.87017822 2.96460485 159.93466187 -10.87017822 2.96460485 159.93466187 -9.84100342 -3.19913745 154.51304626
		 -10.38916016 -0.91460484 159.011993408 -9.84100342 -3.19913745 154.51304626 -10.53601074 -2.46816564 159.45747375
		 -10.38916016 -0.91460484 159.011993408 -5.72106934 -5.57582664 137.84706116 -10.079711914 -2.46203494 141.84472656
		 -15.6973877 -2.25078058 141.88247681 0 -5.84168053 139.68997192 -5.055603027 -4.050958633 140.98173523
		 -2.71624756 -5.81015301 138.73068237 -12.41094971 -10.8593502 124.31658173 -16.32495117 -5.62407589 124.12385559
		 -10.74413967 -9.9612751 121.57449341 -5.72106934 -5.57582664 137.84706116 -5.90441895 -9.3129425 130.0041809082
		 0 -7.042589188 136.085586548 -7.78033447 -3.50344229 141.49485779 -9.62109375 -2.023079157 141.19007874
		 -5.72106934 -5.57582664 137.84706116 -6.50524855 11.22046471 79.15821838 0 11.26042175 78.97369385
		 -1.58380115 8.36008835 78.039558411 -8.19421387 -5.73058128 77.96364594 -16.41973877 -3.49706626 82.33260345
		 -16.39562988 -1.75216138 79.36686707 -7.13745117 13.85529327 85.011528015 -16.97741699 5.81606865 89.54592133
		 -7.020812988 12.98141479 92.9118576 -18.53637695 12.8819437 131.082870483 -18.68145752 4.54329157 123.36599731
		 -19.64758301 3.42707419 127.96007538 -8.87011719 16.15712738 124.5613327 -18.68145752 4.54329157 123.36599731
		 -18.53637695 12.8819437 131.082870483 -1.58380115 8.36008835 78.039558411 0 -4.79577732 75.7881546
		 -1.84851074 -3.60659981 75.48327637 -1.58380115 8.36008835 78.039558411 -3.60095191 6.64142323 74.47633362
		 -6.50524855 11.22046471 79.15821838 -8.19421387 -5.73058128 77.96364594 -1.84851074 -3.60659981 75.48327637
		 0 -4.79577732 75.7881546 -16.39562988 -1.75216138 79.36686707 -8.94702148 -4.54061747 76.16576385
		 -8.19421387 -5.73058128 77.96364594 -6.50524855 11.22046471 79.15821838 -3.60095191 6.64142323 74.47633362
		 -8.86724854 9.1408577 76.77679443 -8.19421387 -5.73058128 77.96364594 -8.94702148 -4.54061747 76.16576385
		 -3.21588135 -2.42819715 74.43054962 -8.33746338 14.84312439 140.62487793 -10.62683105 6.49594212 146.30253601
		 -6.97540283 9.70086384 147.25073242 -22.01776123 11.29488277 132.3613739 -24.0076904297 11.36059761 138.85809326
		 -22.27703857 11.84458733 140.32098389 -19.293396 -2.60623765 135.0043640137 -19.58300781 -1.57329547 139.65901184
		 -22.81524658 -0.43271518 138.61064148 -20.59979248 -1.46576977 133.029418945 -19.293396 -2.60623765 135.0043640137
		 -22.81524658 -0.43271518 138.61064148 -18.53637695 12.8819437 131.082870483 -8.83081055 16.72996521 133.53860474
		 -8.87011719 16.15712738 124.5613327 -8.19421387 -5.73058128 77.96364594 -3.21588135 -2.42819715 74.43054962
		 -1.84851074 -3.60659981 75.48327637 -9.84100342 -3.19913745 154.51304626 -5.45410156 -5.092852592 151.6153717
		 -8.65771484 -9.4216404 152.62583923 -10.53601074 -2.46816564 159.45747375 -9.84100342 -3.19913745 154.51304626
		 -8.65771484 -9.4216404 152.62583923 10.84747314 9.078814507 160.91529846;
	setAttr ".vt[664:829]" 10.87017822 2.96460485 159.93466187 9.84100342 -3.19913745 154.51304626
		 10.87017822 2.96460485 159.93466187 10.38916016 -0.91460484 159.011993408 9.84100342 -3.19913745 154.51304626
		 10.38916016 -0.91460484 159.011993408 10.53601074 -2.46816564 159.45747375 9.84100342 -3.19913745 154.51304626
		 5.90441895 -9.3129425 130.0041809082 5.72106934 -5.57582664 137.84706116 0 -7.042589188 136.085586548
		 -14.26294041 -11.35639668 129.87559509 -6.54345703 -10.072651863 130.27500916 -6.83795118 -6.68176842 139.56420898
		 -8.09564209 -10.97508717 82.42089081 -5.12811279 -11.9782114 91.53930664 -7.32379198 -12.44577789 91.74349213
		 5.72106934 -5.57582664 137.84706116 6.83795118 -6.68165684 139.56416321 5.66210938 -6.31770468 140.16786194
		 -5.72106934 -5.57582664 137.84706116 -5.66210938 -6.31770468 140.16786194 -6.83795118 -6.68176842 139.56420898
		 8.09564209 -10.97508717 82.42089081 7.35473633 -11.17984581 91.74349213 7.32379198 -12.44577789 91.74349213
		 -7.35473633 -11.17984581 91.74349213 -8.09564209 -10.97508717 82.42089081 -7.32379198 -12.44577789 91.74349213
		 7.1998291 -9.085627556 82.54538727 8.09564209 -10.97508717 82.42089081 7.1998291 -10.040492058 82.54538727
		 -8.09564209 -10.97508717 82.42089081 -7.1998291 -9.085627556 82.54538727 -7.1998291 -10.04049778 82.54538727
		 9.95697021 -10.081291199 169.47897339 8.85430908 -10.24903584 170.75976563 8.40478516 -12.17559814 170.21508789
		 -9.95697021 -10.081291199 169.47897339 -8.40478516 -12.17559814 170.21508789 -8.85430908 -10.24903584 170.75976563
		 8.84118652 -0.47068092 9.51464844 8.87097168 -6.43146133 6.050601006 8.84118652 -2.56631684 10.19976425
		 14.57952881 -6.33101177 5.37676668 14.21228123 -0.051237822 9.35126495 14.21228123 -2.14687347 10.036380768
		 -8.87097168 -6.43146133 6.050601006 -8.84118652 -0.47068092 9.51464844 -8.84118652 -2.56631684 10.19976425
		 -14.21228123 -0.051237822 9.35126495 -14.57952881 -6.33101177 5.37676668 -14.21228123 -2.14687347 10.036380768
		 -5.55786133 -4.40005779 141.18692017 -6.8562007 -2.72597241 142.75202942 -7.35900831 -3.51028585 142.30940247
		 -5.72106934 -5.57582664 137.84706116 -4.025268555 -5.89981365 137.835495 -7.78033447 -3.50344229 141.49485779
		 7.78033447 -3.50344229 141.49485779 4.025268555 -5.89981365 137.835495 5.72106934 -5.57582664 137.84706116
		 6.8562007 -2.72597289 142.75202942 5.55786133 -4.40005779 141.18692017 7.35900831 -3.51028848 142.30941772
		 7.043579102 7.378088 147.53623962 6.21179199 -2.69480491 142.52046204 6.8562007 -2.72597289 142.75202942
		 7.78033447 -3.50344229 141.49485779 8.29772949 7.41380548 146.64923096 7.35900831 -3.51028848 142.30941772
		 -6.21179199 -2.69480491 142.52046204 -7.043579102 7.378088 147.53623962 -6.8562007 -2.72597241 142.75202942
		 -8.29772949 7.41380548 146.64923096 -7.78033447 -3.50344229 141.49485779 -7.35900831 -3.51028585 142.30940247
		 0 -7.042589188 136.085586548 -4.025268555 -5.89981365 137.835495 -5.72106934 -5.57582664 137.84706116
		 0 -5.84168053 139.68997192 -2.71624756 -5.81015301 138.73068237 0 -6.4042263 137.93087769
		 0 -5.84168053 139.68997192 0 -6.4042263 137.93087769 2.71624756 -5.81015301 138.73068237
		 5.72106934 -5.57582664 137.84706116 4.025268555 -5.89981365 137.835495 0 -7.042589188 136.085586548
		 0 -7.042589188 136.085586548 -5.90441895 -9.3129425 130.0041809082 0 -9.61139107 130.16029358
		 5.90441895 -9.3129425 130.0041809082 0 -7.042589188 136.085586548 0 -9.61139107 130.16029358
		 9.95697021 -10.081291199 169.47897339 9.39343262 -10.14352322 166.70916748 8.85430908 -10.24903584 170.75976563
		 9.39343262 -10.14352322 166.70916748 0 -11.31041431 166.012619019 8.85430908 -10.24903584 170.75976563
		 25.30657959 5.55192566 142.21080017 23.057067871 5.18184185 144.10174561 22.11810493 2.77940965 142.59805298
		 22.81524658 -0.43271518 138.61064148 22.11810493 2.77940965 142.59805298 -25.30657959 5.55192566 142.21080017
		 -22.11810493 2.77940965 142.59805298 -23.057067871 5.18184185 144.10174561 -22.81524658 -0.43271518 138.61064148
		 -25.30657959 5.55192566 142.21080017 79.60168457 6.41727543 136.63342285 69.20672607 7.19319153 135.28431702
		 69.40948486 7.21305323 136.88398743 69.20672607 7.19319153 135.28431702 60.51398087 7.91751242 137.22613525
		 60.077209473 8.0017547607 135.25247192 -79.60168457 6.41727543 136.63342285 -69.40948486 7.21305323 136.88398743
		 -69.20672607 7.19319153 135.28431702 -60.51398087 7.91751242 137.22613525 -69.20672607 7.19319153 135.28431702
		 -60.077209473 8.0017547607 135.25247192 16.44567871 -7.80275536 3.79991484 16.64227295 -7.66137934 1.27391994
		 16.54278564 -3.90012121 1.27391994 16.44567871 -7.80275536 3.79991484 16.66723633 -12.63362885 2.68204689
		 16.78833008 -13.18771362 1.27391994 68.91217041 6.60354519 133.80528259 69.20672607 7.19319153 135.28431702
		 79.2265625 6.026581764 134.62736511 60.077209473 8.0017547607 135.25247192 59.92480469 7.18315315 133.38842773
		 69.20672607 7.19319153 135.28431702 -68.91217041 6.60354519 133.80528259 -79.2265625 6.026581764 134.62736511
		 -69.20672607 7.19319153 135.28431702 -60.077209473 8.0017547607 135.25247192 -69.20672607 7.19319153 135.28431702
		 -59.92480469 7.18315315 133.38842773 -4.9060688 -12.13042068 97.39585114 -4.82946014 -12.27129745 98.56069183
		 -5.9610672 -12.53546906 97.48795319 -5.88445854 -12.65213394 98.65279388 -5.88445854 -12.65213394 98.65279388
		 -6.6713872 -11.90006828 99.042671204 -5.9610672 -12.53546906 97.48795319 -6.79736376 -11.67401981 97.12718201
		 -5.0625 -10.98563862 96.9757309 -4.9364624 -11.24299908 98.89122009 -4.9060688 -12.13042068 97.39585114
		 -4.82946014 -12.27129745 98.56069183 -4.82946014 -12.27129745 98.56069183 -4.9364624 -11.24299908 98.89122009
		 -5.88445854 -12.65213394 98.65279388 -6.6713872 -11.90006828 99.042671204 -4.9060688 -12.13042068 97.39585114
		 -5.9610672 -12.53546906 97.48795319 -5.0625 -10.98563862 96.9757309 -6.79736376 -11.67401981 97.12718201
		 -6.5584197 -12.38636303 116.94730377 -6.70388222 -12.36805725 118.053833008 -7.65280771 -12.55458736 116.80619049
		 -7.79826975 -12.53628063 117.91273499 -7.65280771 -12.55458736 116.80619049;
	setAttr ".vt[830:995]" -7.79826975 -12.53628063 117.91273499 -8.15869141 -11.52493477 116.31642914
		 -8.40911865 -11.49341774 118.22141266 -6.27459717 -11.23531818 116.55934143 -6.52502489 -11.20380211 118.46432495
		 -6.5584197 -12.38636303 116.94730377 -6.70388222 -12.36805725 118.053833008 -6.70388222 -12.36805725 118.053833008
		 -6.52502489 -11.20380211 118.46432495 -7.79826975 -12.53628063 117.91273499 -8.40911865 -11.49341774 118.22141266
		 -6.27459717 -11.23531818 116.55934143 -6.5584197 -12.38636303 116.94730377 -8.15869141 -11.52493477 116.31642914
		 -7.65280771 -12.55458736 116.80619049 -10.75029182 -10.29604244 135.61367798 -10.08188343 -9.87761593 136.48094177
		 -11.55001354 -10.64287663 136.39736938 -10.88160515 -10.22445011 137.26463318 -11.55001354 -10.64287663 136.39736938
		 -10.88160515 -10.22445011 137.26463318 -12.52715969 -9.90423012 136.28762817 -11.43139744 -9.21827412 137.70939636
		 -11.21612644 -9.33564377 135.0028686523 -10.12036133 -8.64968777 136.42463684 -10.75029182 -10.29604244 135.61367798
		 -10.08188343 -9.87761593 136.48094177 -10.08188343 -9.87761593 136.48094177 -10.12036133 -8.64968777 136.42463684
		 -10.88160515 -10.22445011 137.26463318 -11.43139744 -9.21827412 137.70939636 -11.21612644 -9.33564377 135.0028686523
		 -10.75029182 -10.29604244 135.61367798 -12.52715969 -9.90423012 136.28762817 -11.55001354 -10.64287663 136.39736938
		 4.66101074 -0.67821193 59.35396957 3.50744605 6.6000638 59.10909653 6.68426514 1.39072609 46.54836655
		 6.24481201 5.99796295 42.70347595 15.90661621 5.99796295 42.70347595 16.82409668 6.23168182 60.57230377
		 16.14544678 -0.036900282 46.57811356 16.15002441 -1.15432906 61.32728958 10.62231445 -7.95389175 4.75225115
		 7.31982422 -8.038384438 4.66047716 10.43035889 -12.79288101 3.54260874 7.46295166 -12.86569977 3.359061
		 11.55401611 -2.89514995 10.80389214 8.84118652 -2.56631684 10.19976425 11.095214844 -6.40592003 6.055531502
		 8.87097168 -6.43146133 6.050601006 16.43963623 1.2174418 40.14610291 15.14550686 1.53581548 44.1116066
		 10.9662466 -1.65024745 40.14610291 11.059570313 -2.43864655 42.99221039 16.15002441 -1.15432906 61.32728958
		 10.42089844 -3.57306457 60.26939011 16.14544678 -0.036900282 46.57811356 11.27892971 -1.66975999 46.79209137
		 16.66217041 6.96408796 38.19497299 5.61279297 6.96408796 38.19497299 15.90661621 5.99796295 42.70347595
		 6.24481201 5.99796295 42.70347595 11.059570313 -2.43864655 42.99221039 7.067749023 1.76442134 44.35089493
		 10.9662466 -1.65024745 40.14610291 5.49291992 0.50385332 40.14610291 10.42089844 -3.57306457 60.26939011
		 4.66101074 -0.67821193 59.35396957 11.27892971 -1.66975999 46.79209137 6.68426514 1.39072609 46.54836655
		 14.57952881 -6.33101177 5.37676668 14.21228123 -2.14687347 10.036380768 11.095214844 -6.40592003 6.055531502
		 11.55401611 -2.89514995 10.80389214 16.66723633 -12.63362885 2.68204689 16.44567871 -7.80275536 3.79991484
		 10.43035889 -12.79288101 3.54260874 10.62231445 -7.95389175 4.75225115 16.82409668 6.23168182 60.57230377
		 17.11157227 5.56237459 79.42021179 16.15002441 -1.15432906 61.32728958 16.39562988 -1.75216138 79.36686707
		 10.42089844 -3.57306457 60.26939011 16.15002441 -1.15432906 61.32728958 8.94702148 -4.54061747 76.16576385
		 16.39562988 -1.75216138 79.36686707 8.94702148 -4.54061747 76.16576385 3.21588135 -2.42819715 74.43054962
		 10.42089844 -3.57306457 60.26939011 4.66101074 -0.67821193 59.35396957 3.50744605 6.6000638 59.10909653
		 4.66101074 -0.67821193 59.35396957 3.60095191 6.64142323 74.47633362 3.21588135 -2.42819715 74.43054962
		 8.86724854 9.1408577 76.77679443 9.79675293 8.57357311 59.39028931 3.60095191 6.64142323 74.47633362
		 3.50744605 6.6000638 59.10909653 17.11157227 5.56237459 79.42021179 16.82409668 6.23168182 60.57230377
		 8.86724854 9.1408577 76.77679443 9.79675293 8.57357311 59.39028931 16.097108841 0.79348499 11.49743271
		 16.055847168 1.25786972 18.44350815 11.035827637 -1.34240556 12.2610302 11.030944824 -1.24511671 18.64399529
		 16.055847168 1.25786972 18.44350815 16.097108841 0.79348499 11.49743271 17.78930664 9.29781342 14.099107742
		 18.16650391 7.60954857 6.84070826 18.16650391 7.60954857 6.84070826 11.6776123 9.81306744 6.21597672
		 17.78930664 9.29781342 14.099107742 11.66705322 11.64954472 14.115798 5.039306641 9.25476551 14.57364368
		 11.66705322 11.64954472 14.115798 4.69677734 7.59815121 7.13145638 11.6776123 9.81306744 6.21597672
		 6.0012817383 0.58308268 18.48384285 5.039306641 9.25476551 14.57364368 5.96813965 0.19757342 11.69224834
		 4.69677734 7.59815121 7.13145638 5.96813965 0.19757342 11.69224834 11.035827637 -1.34240556 12.2610302
		 6.0012817383 0.58308268 18.48384285 11.030944824 -1.24511671 18.64399529 15.82586575 2.28256631 9.89914322
		 16.097108841 0.79348499 11.49743271 11.53479004 0.58332014 11.35602665 11.035827637 -1.34240556 12.2610302
		 15.087890625 6.83224154 6.56778383 18.16650391 7.60954857 6.84070826 15.82586575 2.28256631 9.89914322
		 16.097108841 0.79348499 11.49743271 11.50421143 8.56880856 6.56778383 11.6776123 9.81306744 6.21597672
		 15.087890625 6.83224154 6.56778383 18.16650391 7.60954857 6.84070826 4.69677734 7.59815121 7.13145638
		 11.6776123 9.81306744 6.21597672 8.018554688 6.60089493 6.56778383 11.50421143 8.56880856 6.56778383
		 5.96813965 0.19757342 11.69224834 4.69677734 7.59815121 7.13145638 7.17193651 1.59990382 9.89914322
		 8.018554688 6.60089493 6.56778383 11.53479004 0.58332014 11.35602665 11.035827637 -1.34240556 12.2610302
		 7.17193651 1.59990382 9.89914322 5.96813965 0.19757342 11.69224834 5.49291992 0.50385332 40.14610291
		 7.10284424 1.30437732 18.99963188 10.9662466 -1.65024745 40.14610291 11.10894775 -0.15679932 19.056043625
		 15.11126804 1.84280396 18.99963188 16.43963623 1.2174418 40.14610291 11.10894775 -0.15679932 19.056043625
		 10.9662466 -1.65024745 40.14610291 16.43963623 1.2174418 40.14610291 15.11126804 1.84280396 18.99963188
		 17.27532959 9.099180222 28.14627838 16.49200439 8.44167709 14.71475983 11.65588284 11.17529202 28.64988327
		 17.27532959 9.099180222 28.14627838 11.61566162 10.31069756 14.88916588;
	setAttr ".vt[996:1161]" 16.49200439 8.44167709 14.71475983 5.42950439 9.14916801 29.65756416
		 11.65588284 11.17529202 28.64988327 6.33666945 8.38489723 15.23815536 11.61566162 10.31069756 14.88916588
		 5.49291992 0.50385332 40.14610291 5.42950439 9.14916801 29.65756416 7.10284424 1.30437732 18.99963188
		 6.33666945 8.38489723 15.23815536 11.10894775 -0.15679932 19.056043625 11.030944824 -1.24511671 18.64399529
		 15.11126804 1.84280396 18.99963188 16.055847168 1.25786972 18.44350815 15.11126804 1.84280396 18.99963188
		 16.055847168 1.25786972 18.44350815 16.49200439 8.44167709 14.71475983 17.78930664 9.29781342 14.099107742
		 17.78930664 9.29781342 14.099107742 11.66705322 11.64954472 14.115798 16.49200439 8.44167709 14.71475983
		 11.61566162 10.31069756 14.88916588 11.61566162 10.31069756 14.88916588 11.66705322 11.64954472 14.115798
		 6.33666945 8.38489723 15.23815536 5.039306641 9.25476551 14.57364368 5.039306641 9.25476551 14.57364368
		 6.0012817383 0.58308268 18.48384285 6.33666945 8.38489723 15.23815536 7.10284424 1.30437732 18.99963188
		 6.0012817383 0.58308268 18.48384285 11.030944824 -1.24511671 18.64399529 7.10284424 1.30437732 18.99963188
		 11.10894775 -0.15679932 19.056043625 7.53118896 -13.43244934 1.27391994 7.53118896 -13.43244934 0.001137197
		 16.78833008 -13.18771362 1.27391994 16.78833008 -13.18771362 0.001137197 7.41802979 8.6576376 1.27391982
		 7.41802979 8.6576376 0.0011369586 7.28564501 -4.14485455 1.27391994 7.28564501 -4.14485455 0.0011370778
		 16.54278564 -3.90012121 1.27391994 16.54278564 -3.90012121 0.0011370778 15.73346043 8.9023695 1.27391982
		 15.73346043 8.9023695 0.0011369586 15.73346043 8.9023695 1.27391982 15.73346043 8.9023695 0.0011369586
		 7.41802979 8.6576376 1.27391982 7.41802979 8.6576376 0.0011369586 11.095214844 -6.40592003 6.055531502
		 8.87097168 -6.43146133 6.050601006 10.62231445 -7.95389175 4.75225115 7.31982422 -8.038384438 4.66047716
		 7.31982422 -8.038384438 4.66047716 8.87097168 -6.43146133 6.050601006 7.17193651 1.59990382 9.89914322
		 8.84118652 -0.47068092 9.51464844 7.17193651 1.59990382 9.89914322 8.84118652 -0.47068092 9.51464844
		 11.53479004 0.58332014 11.35602665 11.55401611 -0.79951423 10.11877823 16.44567871 -7.80275536 3.79991484
		 14.57952881 -6.33101177 5.37676668 10.62231445 -7.95389175 4.75225115 11.095214844 -6.40592003 6.055531502
		 11.55401611 -0.79951423 10.11877823 14.21228123 -0.051237822 9.35126495 11.53479004 0.58332014 11.35602665
		 15.82586575 2.28256631 9.89914322 15.82586575 2.28256631 9.89914322 14.21228123 -0.051237822 9.35126495
		 16.44567871 -7.80275536 3.79991484 14.57952881 -6.33101177 5.37676668 -4.66101074 -0.67821193 59.35396957
		 -6.68426514 1.39072609 46.54836655 -3.50744605 6.6000638 59.10909653 -6.24481201 5.99796295 42.70347595
		 -15.90661621 5.99796295 42.70347595 -16.14544678 -0.036900282 46.57811356 -16.82409668 6.23168182 60.57230377
		 -16.15002441 -1.15432906 61.32728958 -10.62231445 -7.95389175 4.75225115 -10.43035889 -12.79288101 3.54260874
		 -7.31982422 -8.038384438 4.66047716 -7.46295166 -12.86569977 3.359061 -11.55401611 -2.89514995 10.80389214
		 -11.095214844 -6.40592003 6.055531502 -8.84118652 -2.56631684 10.19976425 -8.87097168 -6.43146133 6.050601006
		 -16.43963623 1.2174418 40.14610291 -10.9662466 -1.65024745 40.14610291 -15.14550686 1.53581548 44.1116066
		 -11.059570313 -2.43864655 42.99221039 -11.27892971 -1.66975999 46.79209137 -10.42089844 -3.57306457 60.26939011
		 -16.14544678 -0.036900282 46.57811356 -16.15002441 -1.15432906 61.32728958 -6.24481201 5.99796295 42.70347595
		 -5.61279297 6.96408796 38.19497299 -15.90661621 5.99796295 42.70347595 -16.66217041 6.96408796 38.19497299
		 -11.059570313 -2.43864655 42.99221039 -10.9662466 -1.65024745 40.14610291 -7.067749023 1.76442134 44.35089493
		 -5.49291992 0.50385332 40.14610291 -10.42089844 -3.57306457 60.26939011 -11.27892971 -1.66975999 46.79209137
		 -4.66101074 -0.67821193 59.35396957 -6.68426514 1.39072609 46.54836655 -14.57952881 -6.33101177 5.37676668
		 -11.095214844 -6.40592003 6.055531502 -14.21228123 -2.14687347 10.036380768 -11.55401611 -2.89514995 10.80389214
		 -16.66723633 -12.63362885 2.68204689 -10.43035889 -12.79288101 3.54260874 -16.44567871 -7.80275536 3.79991484
		 -10.62231445 -7.95389175 4.75225115 -16.39562988 -1.75216138 79.36686707 -17.11157227 5.56237459 79.42021179
		 -16.15002441 -1.15432906 61.32728958 -16.82409668 6.23168182 60.57230377 -10.42089844 -3.57306457 60.26939011
		 -8.94702148 -4.54061747 76.16576385 -16.15002441 -1.15432906 61.32728958 -16.39562988 -1.75216138 79.36686707
		 -8.94702148 -4.54061747 76.16576385 -10.42089844 -3.57306457 60.26939011 -3.21588135 -2.42819715 74.43054962
		 -4.66101074 -0.67821193 59.35396957 -3.21588135 -2.42819715 74.43054962 -4.66101074 -0.67821193 59.35396957
		 -3.60095191 6.64142323 74.47633362 -3.50744605 6.6000638 59.10909653 -3.50744605 6.6000638 59.10909653
		 -9.79675293 8.57357311 59.39028931 -3.60095191 6.64142323 74.47633362 -8.86724854 9.1408577 76.77679443
		 -9.79675293 8.57357311 59.39028931 -16.82409668 6.23168182 60.57230377 -8.86724854 9.1408577 76.77679443
		 -17.11157227 5.56237459 79.42021179 -16.097108841 0.79348499 11.49743271 -11.035827637 -1.34240556 12.2610302
		 -16.055847168 1.25786972 18.44350815 -11.030944824 -1.24511671 18.64399529 -16.055847168 1.25786972 18.44350815
		 -17.78930664 9.29781342 14.099107742 -16.097108841 0.79348499 11.49743271 -18.16650391 7.60954857 6.84070826
		 -11.66705322 11.64954472 14.115798 -11.6776123 9.81306744 6.21597672 -17.78930664 9.29781342 14.099107742
		 -18.16650391 7.60954857 6.84070826 -11.6776123 9.81306744 6.21597672 -11.66705322 11.64954472 14.115798
		 -4.69677734 7.59815121 7.13145638 -5.039306641 9.25476551 14.57364368 -4.69677734 7.59815121 7.13145638
		 -5.039306641 9.25476551 14.57364368 -5.96813965 0.19757342 11.69224834 -6.0012817383 0.58308268 18.48384285
		 -11.030944824 -1.24511671 18.64399529 -11.035827637 -1.34240556 12.2610302 -6.0012817383 0.58308268 18.48384285
		 -5.96813965 0.19757342 11.69224834 -15.82586575 2.28256631 9.89914322;
	setAttr ".vt[1162:1327]" -11.53479004 0.58332014 11.35602665 -16.097108841 0.79348499 11.49743271
		 -11.035827637 -1.34240556 12.2610302 -15.087890625 6.83224154 6.56778383 -15.82586575 2.28256631 9.89914322
		 -18.16650391 7.60954857 6.84070826 -16.097108841 0.79348499 11.49743271 -11.50421143 8.56880856 6.56778383
		 -15.087890625 6.83224154 6.56778383 -11.6776123 9.81306744 6.21597672 -18.16650391 7.60954857 6.84070826
		 -11.50421143 8.56880856 6.56778383 -11.6776123 9.81306744 6.21597672 -8.018554688 6.60089493 6.56778383
		 -4.69677734 7.59815121 7.13145638 -8.018554688 6.60089493 6.56778383 -4.69677734 7.59815121 7.13145638
		 -7.17193651 1.59990382 9.89914322 -5.96813965 0.19757342 11.69224834 -11.53479004 0.58332014 11.35602665
		 -7.17193651 1.59990382 9.89914322 -11.035827637 -1.34240556 12.2610302 -5.96813965 0.19757342 11.69224834
		 -11.10894775 -0.15679932 19.056043625 -7.10284424 1.30437732 18.99963188 -10.9662466 -1.65024745 40.14610291
		 -5.49291992 0.50385332 40.14610291 -15.11126804 1.84280396 18.99963188 -11.10894775 -0.15679932 19.056043625
		 -16.43963623 1.2174418 40.14610291 -10.9662466 -1.65024745 40.14610291 -16.49200439 8.44167709 14.71475983
		 -15.11126804 1.84280396 18.99963188 -17.27532959 9.099180222 28.14627838 -16.43963623 1.2174418 40.14610291
		 -11.65588284 11.17529202 28.64988327 -11.61566162 10.31069756 14.88916588 -17.27532959 9.099180222 28.14627838
		 -16.49200439 8.44167709 14.71475983 -11.61566162 10.31069756 14.88916588 -11.65588284 11.17529202 28.64988327
		 -6.33666945 8.38489723 15.23815536 -5.42950439 9.14916801 29.65756416 -6.33666945 8.38489723 15.23815536
		 -5.42950439 9.14916801 29.65756416 -7.10284424 1.30437732 18.99963188 -5.49291992 0.50385332 40.14610291
		 -11.10894775 -0.15679932 19.056043625 -15.11126804 1.84280396 18.99963188 -11.030944824 -1.24511671 18.64399529
		 -16.055847168 1.25786972 18.44350815 -15.11126804 1.84280396 18.99963188 -16.49200439 8.44167709 14.71475983
		 -16.055847168 1.25786972 18.44350815 -17.78930664 9.29781342 14.099107742 -11.61566162 10.31069756 14.88916588
		 -11.66705322 11.64954472 14.115798 -16.49200439 8.44167709 14.71475983 -17.78930664 9.29781342 14.099107742
		 -11.61566162 10.31069756 14.88916588 -6.33666945 8.38489723 15.23815536 -11.66705322 11.64954472 14.115798
		 -5.039306641 9.25476551 14.57364368 -7.10284424 1.30437732 18.99963188 -6.0012817383 0.58308268 18.48384285
		 -6.33666945 8.38489723 15.23815536 -5.039306641 9.25476551 14.57364368 -11.10894775 -0.15679932 19.056043625
		 -11.030944824 -1.24511671 18.64399529 -7.10284424 1.30437732 18.99963188 -6.0012817383 0.58308268 18.48384285
		 -7.53118896 -13.43244934 1.27391994 -16.78833008 -13.18771362 1.27391994 -7.53118896 -13.43244934 0.001137197
		 -16.78833008 -13.18771362 0.001137197 -7.41802979 8.6576376 1.27391982 -7.28564501 -4.14485455 1.27391994
		 -7.41802979 8.6576376 0.0011369586 -7.28564501 -4.14485455 0.0011370778 -16.54278564 -3.90012121 1.27391994
		 -15.73346043 8.9023695 1.27391982 -16.54278564 -3.90012121 0.0011370778 -15.73346043 8.9023695 0.0011369586
		 -15.73346043 8.9023695 1.27391982 -7.41802979 8.6576376 1.27391982 -15.73346043 8.9023695 0.0011369586
		 -7.41802979 8.6576376 0.0011369586 -7.31982422 -8.038384438 4.66047716 -8.87097168 -6.43146133 6.050601006
		 -10.62231445 -7.95389175 4.75225115 -11.095214844 -6.40592003 6.055531502 -7.31982422 -8.038384438 4.66047716
		 -7.17193651 1.59990382 9.89914322 -8.87097168 -6.43146133 6.050601006 -8.84118652 -0.47068092 9.51464844
		 -7.17193651 1.59990382 9.89914322 -11.53479004 0.58332014 11.35602665 -8.84118652 -0.47068092 9.51464844
		 -11.55401611 -0.79951423 10.11877823 -16.44567871 -7.80275536 3.79991484 -10.62231445 -7.95389175 4.75225115
		 -14.57952881 -6.33101177 5.37676668 -11.095214844 -6.40592003 6.055531502 -15.82586575 2.28256631 9.89914322
		 -14.21228123 -0.051237822 9.35126495 -11.53479004 0.58332014 11.35602665 -11.55401611 -0.79951423 10.11877823
		 -15.82586575 2.28256631 9.89914322 -16.44567871 -7.80275536 3.79991484 -14.21228123 -0.051237822 9.35126495
		 -14.57952881 -6.33101177 5.37676668 13.23822021 12.3457222 168.89331055 0 14.7016964 171.2066803
		 12.86395168 5.27578545 178.013626099 2.61407471 6.53926563 183.053131104 13.23822021 12.3457222 168.89331055
		 11.044006348 10.20675278 162.19244385 0 14.7016964 171.2066803 0 13.098711014 161.65638733
		 12.86395168 5.27578545 178.013626099 2.61407471 6.53926563 183.053131104 11.17498779 -5.23080158 177.36915588
		 2.33117676 -5.95296383 180.92332458 11.17498779 -5.23080158 177.36915588 13.42663574 -0.88327217 169.86999512
		 12.86395168 5.27578545 178.013626099 13.81817627 3.14619994 170.14871216 12.86395168 5.27578545 178.013626099
		 13.81817627 3.14619994 170.14871216 13.23822021 12.3457222 168.89331055 13.8421011 5.82720375 166.83021545
		 13.23822021 12.3457222 168.89331055 13.8421011 5.82720375 166.83021545 11.044006348 10.20675278 162.19244385
		 13.49273586 4.87244797 161.54484558 -14.45263577 5.2757864 178.66079712 -8.020690918 5.85998631 180.50985718
		 -13.23822021 12.3457222 168.89331055 0 14.7016964 171.2066803 -13.23822021 12.3457222 168.89331055
		 0 14.7016964 171.2066803 -11.044006348 10.20675182 162.19242859 0 13.098711014 161.65638733
		 -7.1762085 -5.42486858 179.3462677 -8.020690918 5.85998631 180.50985718 -12.76373291 -5.23080158 178.016311646
		 -14.45263577 5.2757864 178.66079712 -12.76373291 -5.23080158 178.016311646 -14.45263577 5.2757864 178.66079712
		 -13.42663574 -0.8832736 169.86999512 -13.81817627 3.14619851 170.14871216 -14.45263577 5.2757864 178.66079712
		 -13.23822021 12.3457222 168.89331055 -13.81817627 3.14619851 170.14871216 -13.8421011 5.82720184 166.83021545
		 -13.23822021 12.3457222 168.89331055 -11.044006348 10.20675182 162.19242859 -13.8421011 5.82720184 166.83021545
		 -13.49273586 4.87244701 161.54486084 10.84747314 9.078814507 160.91529846 0 10.68899632 159.74467468
		 11.044006348 10.20675278 162.19244385 0 13.098711014 161.65638733 0 -11.67099285 173.3621521
		 8.86517334 -10.50799561 171.62628174 2.1963501 -10.95584774 178.17810059;
	setAttr ".vt[1328:1493]" 9.63366699 -10.84302139 175.11277771 10.91375732 -1.40712094 167.54963684
		 13.42663574 -0.88327217 169.86999512 10.84686279 -5.55400944 173.36326599 11.17498779 -5.23080158 177.36915588
		 10.91375732 -1.40712094 167.54963684 11.36437988 3.32235837 168.74110413 13.42663574 -0.88327217 169.86999512
		 13.81817627 3.14619994 170.14871216 11.42651367 5.140769 166.48936462 13.8421011 5.82720375 166.83021545
		 11.36437988 3.32235837 168.74110413 13.81817627 3.14619994 170.14871216 10.87017822 2.96460485 159.93466187
		 13.49273586 4.87244797 161.54484558 11.42651367 5.140769 166.48936462 13.8421011 5.82720375 166.83021545
		 10.87017822 2.96460485 159.93466187 10.84747314 9.078814507 160.91529846 13.49273586 4.87244797 161.54484558
		 11.044006348 10.20675278 162.19244385 -10.84747314 9.078814507 160.91529846 -11.044006348 10.20675182 162.19242859
		 0 10.68899632 159.74467468 0 13.098711014 161.65638733 -10.91375732 -1.40712094 167.54963684
		 -13.42663574 -0.8832736 169.86999512 -11.36437988 3.32235837 168.74110413 -13.81817627 3.14619851 170.14871216
		 -9.52215576 -6.71365023 168.66226196 -9.46722412 -8.7788496 172.92068481 -11.58605957 -6.28338957 170.56809998
		 -11.041564941 -8.51338291 175.27697754 -11.42651367 5.140769 166.48936462 -11.36437988 3.32235837 168.74110413
		 -13.8421011 5.82720184 166.83021545 -13.81817627 3.14619851 170.14871216 -10.87017822 2.96460485 159.93466187
		 -13.49273586 4.87244701 161.54486084 -10.84747314 9.078814507 160.91529846 -11.044006348 10.20675182 162.19242859
		 -10.87017822 2.96460485 159.93466187 -11.42651367 5.140769 166.48936462 -13.49273586 4.87244701 161.54486084
		 -13.8421011 5.82720184 166.83021545 -3.81787109 5.95506573 182.087539673 -2.97338867 -5.32978916 181.47990417
		 2.61407471 6.53926563 183.053131104 2.33117676 -5.95296383 180.92332458 -5.58752441 -5.42486858 178.69909668
		 -6.43194628 5.85998631 179.86268616 -7.1762085 -5.42486858 179.3462677 -8.020690918 5.85998631 180.50985718
		 -5.58752441 -5.42486858 178.69909668 -2.97338867 -5.32978916 181.47990417 -6.43194628 5.85998631 179.86268616
		 -3.81787109 5.95506573 182.087539673 10.84686279 -5.55400944 173.36326599 8.86517334 -10.50799561 171.62628174
		 0 -5.97735786 177.47706604 0 -11.67099285 173.3621521 14.95391941 -7.84819221 178.34259033
		 14.36517429 -11.46563244 176.70176697 15.72149658 -8.11613178 176.90892029 15.13275242 -11.73357487 175.26808167
		 11.17498779 -5.23080158 177.36915588 2.33117676 -5.95296383 180.92332458 9.63366699 -10.84302139 175.11277771
		 2.1963501 -10.95584774 178.17810059 -2.97338867 -5.32978916 181.47990417 -5.42346191 -5.76568317 176.31228638
		 2.1963501 -10.95584774 178.17810059 0 -11.67099285 173.3621521 10.84686279 -5.55400944 173.36326599
		 11.17498779 -5.23080158 177.36915588 15.72149658 -8.11613178 176.90892029 14.95391941 -7.84819221 178.34259033
		 11.17498779 -5.23080158 177.36915588 9.63366699 -10.84302139 175.11277771 14.95391941 -7.84819221 178.34259033
		 14.36517429 -11.46563244 176.70176697 8.86517334 -10.50799561 171.62628174 15.13275242 -11.73357487 175.26808167
		 9.63366699 -10.84302139 175.11277771 14.36517429 -11.46563244 176.70176697 8.86517334 -10.50799561 171.62628174
		 10.84686279 -5.55400944 173.36326599 15.13275242 -11.73357487 175.26808167 15.72149658 -8.11613178 176.90892029
		 -7.1762085 -5.42486858 179.3462677 -11.041564941 -8.51338291 175.27697754 -5.42346191 -5.76568317 176.31228638
		 -9.46722412 -8.7788496 172.92068481 -10.91375732 -1.40712094 167.54963684 -10.84686279 -5.55401039 175.14750671
		 -9.52215576 -6.71365023 168.66226196 -9.46722412 -8.7788496 172.92068481 -13.42663574 -0.8832736 169.86999512
		 -11.58605957 -6.28338957 170.56809998 -12.76373291 -5.23080158 178.016311646 -11.041564941 -8.51338291 175.27697754
		 -13.42663574 -0.8832736 169.86999512 -10.91375732 -1.40712094 167.54963684 -11.58605957 -6.28338957 170.56809998
		 -9.52215576 -6.71365023 168.66226196 15.6973877 -2.25078058 141.88247681 19.58300781 -1.57329547 139.65901184
		 16.61865234 3.078720331 145.31298828 22.11810493 2.77940965 142.59805298 23.057067871 5.18184185 144.10174561
		 22.27703857 11.84458733 140.32098389 16.93359375 5.67458439 146.007598877 16.84063721 13.94336796 140.10919189
		 24.0076904297 11.36059761 138.85809326 22.27703857 11.84458733 140.32098389 25.30657959 5.55192566 142.21080017
		 23.057067871 5.18184185 144.10174561 17.10180664 5.49277306 146.90170288 13.49120998 5.75575542 146.76849365
		 16.82495117 2.9968133 146.45851135 13.07989502 3.28103828 146.31417847 21.36712646 2.72657681 146.1463623
		 21.6652832 4.16974115 146.43345642 19.54302979 2.93921471 146.73548889 19.62414551 4.53251839 146.92007446
		 10.079711914 -2.46203542 141.84472656 15.6973877 -2.25078058 141.88247681 12.98431492 3.35859323 145.011642456
		 16.61865234 3.078720331 145.31298828 16.82495117 2.9968133 146.45851135 13.07989502 3.28103828 146.31417847
		 16.61865234 3.078720331 145.31298828 12.98431492 3.35859323 145.011642456 12.98431492 3.35859323 145.011642456
		 13.07989502 3.28103828 146.31417847 13.44848633 5.93331814 146.19578552 13.49120998 5.75575542 146.76849365
		 13.44848633 5.93331814 146.19578552 13.49120998 5.75575542 146.76849365 16.93359375 5.67458439 146.007598877
		 17.10180664 5.49277306 146.90170288 22.11810493 2.77940965 142.59805298 22.21838379 2.39058805 144.94552612
		 16.61865234 3.078720331 145.31298828 16.82495117 2.9968133 146.45851135 17.10180664 5.49277306 146.90170288
		 23.054992676 4.69977665 145.39143372 16.93359375 5.67458439 146.007598877 23.057067871 5.18184185 144.10174561
		 23.054992676 4.69977665 145.39143372 22.21838379 2.39058805 144.94552612 23.057067871 5.18184185 144.10174561
		 22.11810493 2.77940965 142.59805298 -15.6973877 -2.25078058 141.88247681 -16.61865234 3.078720331 145.31298828
		 -19.58300781 -1.57329547 139.65901184 -22.11810493 2.77940965 142.59805298 -16.84063721 13.94336796 140.10919189
		 -22.27703857 11.84458733 140.32098389 -16.93359375 5.67458439 146.007598877 -23.057067871 5.18184185 144.10174561
		 -23.057067871 5.18184185 144.10174561 -22.27703857 11.84458733 140.32098389 -25.30657959 5.55192566 142.21080017
		 -24.0076904297 11.36059761 138.85809326 -13.07989502 3.28103828 146.31417847;
	setAttr ".vt[1494:1659]" -13.49120998 5.75575542 146.76849365 -16.82495117 2.9968133 146.45851135
		 -17.10180664 5.49277306 146.90170288 -21.36712646 2.72657657 146.1463623 -19.54302979 2.93921423 146.73548889
		 -21.6652832 4.16974115 146.43345642 -19.62414551 4.53251553 146.92007446 -10.079711914 -2.46203494 141.84472656
		 -12.98431492 3.35859323 145.011642456 -15.6973877 -2.25078058 141.88247681 -16.61865234 3.078720331 145.31298828
		 -12.98431492 3.35859323 145.011642456 -13.07989502 3.28103828 146.31417847 -16.61865234 3.078720331 145.31298828
		 -16.82495117 2.9968133 146.45851135 -12.98431492 3.35859323 145.011642456 -13.44848633 5.93331814 146.19578552
		 -13.07989502 3.28103828 146.31417847 -13.49120998 5.75575542 146.76849365 -13.44848633 5.93331814 146.19578552
		 -16.93359375 5.67458439 146.007598877 -13.49120998 5.75575542 146.76849365 -17.10180664 5.49277306 146.90170288
		 -22.11810493 2.77940965 142.59805298 -16.61865234 3.078720331 145.31298828 -22.21838379 2.39058805 144.94552612
		 -16.82495117 2.9968133 146.45851135 -23.057067871 5.18184185 144.10174561 -23.054992676 4.69977665 145.39143372
		 -16.93359375 5.67458439 146.007598877 -17.10180664 5.49277306 146.90170288 -22.11810493 2.77940965 142.59805298
		 -22.21838379 2.39058805 144.94552612 -23.057067871 5.18184185 144.10174561 -23.054992676 4.69977665 145.39143372
		 29.32513428 0.90873939 137.96920776 41.24456787 0.060637593 138.64376831 30.69433594 5.95870209 140.55935669
		 41.52191162 5.91230011 141.057952881 28.74890327 -0.7954874 133.069854736 29.040893555 4.14704037 130.66433716
		 40.67944336 -0.87143826 132.31207275 40.58807373 3.64361262 129.90246582 30.10290527 10.36787128 137.89416504
		 30.69433594 5.95870209 140.55935669 41.076477051 10.19710732 137.57574463 41.52191162 5.91230011 141.057952881
		 29.34008789 9.42504883 132.75827026 40.61730957 9.51461601 131.7752533 29.040893555 4.14704037 130.66433716
		 40.58807373 3.64361262 129.90246582 29.34008789 9.42504883 132.75827026 30.10290527 10.36787128 137.89416504
		 40.61730957 9.51461601 131.7752533 41.076477051 10.19710732 137.57574463 52.33655167 -2.54207063 132.04574585
		 52.9309082 -0.66058421 138.07244873 50.25799179 -1.067352057 132.60824585 50.7265625 0.4559958 137.86000061
		 51.65930557 4.70841503 141.6177063 52.9309082 -0.66058421 138.07244873 56.43164063 5.52288342 141.05821228
		 56.79187012 -0.015374421 138.25418091 50.62463379 2.72997975 128.93077087 55.094547272 3.52778697 130.15626526
		 52.33655167 -2.54207063 132.04574585 56.36120224 -1.97105086 132.87857056 50.76514053 11.77939034 137.37922668
		 51.65930557 4.70841503 141.6177063 54.58270264 9.77108574 137.85501099 56.43164063 5.52288342 141.05821228
		 50.081787109 10.77901268 130.89974976 54.061096191 8.77476597 132.25418091 50.62463379 2.72997975 128.93077087
		 55.094547272 3.52778697 130.15626526 52.33655167 -2.54207063 132.04574585 56.36120224 -1.97105086 132.87857056
		 52.9309082 -0.66058421 138.07244873 56.79187012 -0.015374421 138.25418091 68.93310547 1.36132705 136.89181519
		 79.28009033 0.9940455 136.58131409 69.45324707 4.7081213 138.53253174 80.032409668 4.010931969 137.76428223
		 68.73413086 0.11931038 134.011032104 69.055175781 3.3275497 132.60211182 79.023742676 0.045720816 134.46626282
		 79.25482178 2.74246693 133.81567383 69.40948486 7.21305323 136.88398743 69.45324707 4.7081213 138.53253174
		 79.60168457 6.41727543 136.63342285 80.032409668 4.010931969 137.76428223 68.91217041 6.60354519 133.80528259
		 79.2265625 6.026581764 134.62736511 69.055175781 3.3275497 132.60211182 79.25482178 2.74246693 133.81567383
		 68.73413086 0.11931038 134.011032104 79.023742676 0.045720816 134.46626282 68.93310547 1.36132705 136.89181519
		 79.28009033 0.9940455 136.58131409 54.71966171 11.034690857 134.89549255 54.58270264 9.77108574 137.85501099
		 57.035945892 9.35839844 135.074615479 57.018436432 9.12574768 137.88963318 54.71966171 11.034690857 134.89549255
		 57.035945892 9.35839844 135.074615479 54.061096191 8.77476597 132.25418091 56.38318253 8.12495041 132.45724487
		 28.74890327 -0.7954874 133.069854736 40.67944336 -0.87143826 132.31207275 29.32513428 0.90873939 137.96920776
		 41.24456787 0.060637593 138.64376831 52.9309082 -0.66058421 138.07244873 51.65930557 4.70841503 141.6177063
		 50.7265625 0.4559958 137.86000061 50.16241837 4.97691059 140.54446411 50.16241837 4.97691059 140.54446411
		 51.65930557 4.70841503 141.6177063 49.46673584 10.15620327 137.14707947 50.76514053 11.77939034 137.37922668
		 50.76514053 11.77939034 137.37922668 50.081787109 10.77901268 130.89974976 49.46673584 10.15620327 137.14707947
		 48.88775635 9.27433968 130.9339447 50.081787109 10.77901268 130.89974976 50.62463379 2.72997975 128.93077087
		 48.88775635 9.27433968 130.9339447 49.18139648 3.36606884 129.38716125 49.18139648 3.36606884 129.38716125
		 50.62463379 2.72997975 128.93077087 50.25799179 -1.067352057 132.60824585 52.33655167 -2.54207063 132.04574585
		 56.36120224 -1.97105086 132.87857056 60.68896866 -2.049031734 132.89732361 56.79187012 -0.015374421 138.25418091
		 61.22686768 -0.086037636 138.068222046 55.094547272 3.52778697 130.15626526 59.54785156 3.351336 130.30152893
		 56.36120224 -1.97105086 132.87857056 60.68896866 -2.049031734 132.89732361 55.094547272 3.52778697 130.15626526
		 56.38318253 8.12495041 132.45724487 59.54785156 3.351336 130.30152893 59.3143959 8.48340797 132.36096191
		 56.38318253 8.12495041 132.45724487 57.035945892 9.35839844 135.074615479 59.3143959 8.48340797 132.36096191
		 59.8470459 9.66126919 135.0038604736 57.035945892 9.35839844 135.074615479 57.018436432 9.12574768 137.88963318
		 59.8470459 9.66126919 135.0038604736 60.11859131 9.5156002 137.87397766 56.43164063 5.52288342 141.05821228
		 60.98913574 5.37714005 140.83377075 57.018436432 9.12574768 137.88963318 60.11859131 9.5156002 137.87397766
		 56.43164063 5.52288342 141.05821228 56.79187012 -0.015374421 138.25418091 60.98913574 5.37714005 140.83377075
		 61.22686768 -0.086037636 138.068222046 80.032409668 4.010931969 137.76428223 79.28009033 0.9940455 136.58131409
		 83.072814941 4.33594418 138.96601868 82.33001709 -1.2280519 136.97155762 80.032409668 4.010931969 137.76428223
		 83.072814941 4.33594418 138.96601868 79.60168457 6.41727543 136.63342285;
	setAttr ".vt[1660:1825]" 83.044067383 8.61053371 137.40776062 79.2265625 6.026581764 134.62736511
		 79.60168457 6.41727543 136.63342285 82.64251709 7.71267509 133.70547485 83.044067383 8.61053371 137.40776062
		 79.2265625 6.026581764 134.62736511 82.64251709 7.71267509 133.70547485 79.25482178 2.74246693 133.81567383
		 82.72247314 1.13035452 132.49890137 79.25482178 2.74246693 133.81567383 82.72247314 1.13035452 132.49890137
		 79.023742676 0.045720816 134.46626282 81.89801025 -3.1285603 133.54916382 79.28009033 0.9940455 136.58131409
		 79.023742676 0.045720816 134.46626282 82.33001709 -1.2280519 136.97155762 81.89801025 -3.1285603 133.54916382
		 89.79498291 -3.19143796 130.84515381 92.76733398 -4.88906193 129.51431274 88.55047607 -6.94781017 131.5736084
		 92.51733398 -7.50330925 130.19436646 89.22497559 -0.91167426 137.99807739 94.36224365 -1.19122529 137.80760193
		 90.39916992 1.99615085 138.72935486 94.95257568 1.37132144 137.89379883 89.53094482 7.7997694 137.32261658
		 90.16662598 5.40753078 138.41236877 93.42346191 8.54925442 136.43989563 94.87664795 5.85250759 137.13380432
		 82.72247314 1.13035452 132.49890137 87.48114014 -2.64662337 131.98078918 81.89801025 -3.1285603 133.54916382
		 87.10253906 -5.73008633 132.64723206 82.33001709 -1.2280519 136.97155762 81.89801025 -3.1285603 133.54916382
		 88.35046387 -5.45580864 134.89546204 87.10253906 -5.73008633 132.64723206 82.33001709 -1.2280519 136.97155762
		 89.22497559 -0.91167426 137.99807739 83.072814941 4.33594418 138.96601868 90.39916992 1.99615085 138.72935486
		 83.044067383 8.61053371 137.40776062 88.90081787 9.51194954 136.42727661 82.64251709 7.71267509 133.70547485
		 89.82507324 8.9479599 133.76460266 90.65588379 -3.17975831 134.3057251 89.97564697 -6.42468023 134.52680969
		 94.66674805 -4.84246826 132.49188232 94.30578613 -7.10606003 132.78674316 88.35046387 -5.45580864 134.89546204
		 87.10253906 -5.73008633 132.64723206 89.97564697 -6.42468023 134.52680969 88.55047607 -6.94781017 131.5736084
		 94.36224365 -1.19122529 137.80760193 89.22497559 -0.91167426 137.99807739 93.69482422 -1.47237563 134.97972107
		 89.70556641 -0.97306466 134.76823425 89.70556641 -0.97306466 134.76823425 90.81219482 2.73973966 134.72187805
		 93.69482422 -1.47237563 134.97972107 94.45239258 1.7531848 135.22932434 93.59002686 8.082290649 134.5219574
		 90.77111816 6.014046669 134.29512024 91.68756104 9.38669109 134.21455383 89.82507324 8.9479599 133.76460266
		 91.68756104 9.38669109 134.21455383 89.82507324 8.9479599 133.76460266 91.90649414 10.21364021 135.91932678
		 88.90081787 9.51194954 136.42727661 94.36224365 -1.19122529 137.80760193 98.06854248 -1.58887768 136.88362122
		 94.95257568 1.37132144 137.89379883 98.74853516 1.043942213 136.88124084 93.42346191 8.54925442 136.43989563
		 94.87664795 5.85250759 137.13380432 97.23199463 8.81181812 135.48461914 98.54736328 5.99691486 136.0065612793
		 93.69482422 -1.47237563 134.97972107 97.28271484 -1.80989575 134.33988953 94.36224365 -1.19122529 137.80760193
		 98.06854248 -1.58887768 136.88362122 93.69482422 -1.47237563 134.97972107 94.45239258 1.7531848 135.22932434
		 97.28271484 -1.80989575 134.33988953 98.26574707 1.43828094 134.29133606 96.40753174 8.55500698 133.88623047
		 93.59002686 8.082290649 134.5219574 94.70739746 10.36855221 133.53875732 91.68756104 9.38669109 134.21455383
		 91.68756104 9.38669109 134.21455383 91.90649414 10.21364021 135.91932678 94.70739746 10.36855221 133.53875732
		 95.16876221 10.88729095 135.011367798 102.0062942505 1.20132625 134.30412292 102.37602997 0.8275429 135.48608398
		 101.37432861 -2.39691567 134.39125061 101.85943604 -2.13516712 135.51541138 99.69274902 9.35360527 134.62106323
		 99.075744629 9.045987129 133.16685486 97.68609619 11.29397869 134.14878845 97.10247803 10.86401272 132.7953949
		 92.76733398 -4.88906193 129.51431274 89.79498291 -3.19143796 130.84515381 94.66674805 -4.84246826 132.49188232
		 90.65588379 -3.17975831 134.3057251 98.26574707 1.43828094 134.29133606 94.45239258 1.7531848 135.22932434
		 98.74853516 1.043942213 136.88124084 94.95257568 1.37132144 137.89379883 90.39916992 1.99615085 138.72935486
		 90.81219482 2.73973966 134.72187805 95.10552979 2.55858016 137.51313782 94.75976563 2.29336882 135.54426575
		 95.10552979 2.55858016 137.51313782 94.75976563 2.29336882 135.54426575 99.80950928 2.5561626 136.15536499
		 99.12640381 2.36734438 134.34394836 94.95257568 1.37132144 137.89379883 94.45239258 1.7531848 135.22932434
		 90.39916992 1.99615085 138.72935486 90.81219482 2.73973966 134.72187805 97.28271484 -1.80989575 134.33988953
		 101.37432861 -2.39691567 134.39125061 98.06854248 -1.58887768 136.88362122 101.85943604 -2.13516712 135.51541138
		 98.06854248 -1.58887768 136.88362122 101.85943604 -2.13516712 135.51541138 98.74853516 1.043942213 136.88124084
		 102.37602997 0.8275429 135.48608398 98.26574707 1.43828094 134.29133606 98.74853516 1.043942213 136.88124084
		 102.0062942505 1.20132625 134.30412292 102.37602997 0.8275429 135.48608398 97.28271484 -1.80989575 134.33988953
		 98.26574707 1.43828094 134.29133606 100.43371582 -1.99401236 133.65762329 101.011047363 1.29094589 133.54110718
		 99.075744629 9.045987129 133.16685486 96.40753174 8.55500698 133.88623047 97.10247803 10.86401272 132.7953949
		 94.70739746 10.36855221 133.53875732 99.12640381 2.36734438 134.34394836 101.65002441 2.49320459 133.53334045
		 99.80950928 2.5561626 136.15536499 102.3627243 2.66927242 135.25190735 97.23199463 8.81181812 135.48461914
		 98.54736328 5.99691486 136.0065612793 99.69274902 9.35360527 134.62106323 101.58929443 6.25822449 135.040939331
		 94.70739746 10.36855221 133.53875732 95.16876221 10.88729095 135.011367798 97.10247803 10.86401272 132.7953949
		 97.68609619 11.29397869 134.14878845 101.011047363 1.29094589 133.54110718 102.0062942505 1.20132625 134.30412292
		 100.43371582 -1.99401236 133.65762329 101.37432861 -2.39691567 134.39125061 89.44494629 -2.79524207 134.86703491
		 88.35046387 -5.45580864 134.89546204 90.65588379 -3.17975831 134.3057251 89.97564697 -6.42468023 134.52680969
		 89.44494629 -2.79524207 134.86703491 90.65588379 -3.17975831 134.3057251 87.48114014 -2.64662337 131.98078918
		 89.79498291 -3.19143796 130.84515381 87.48114014 -2.64662337 131.98078918;
	setAttr ".vt[1826:1991]" 89.79498291 -3.19143796 130.84515381 87.10253906 -5.73008633 132.64723206
		 88.55047607 -6.94781017 131.5736084 83.044067383 8.61053371 137.40776062 83.072814941 4.33594418 138.96601868
		 89.53094482 7.7997694 137.32261658 90.16662598 5.40753078 138.41236877 94.87664795 5.85250759 137.13380432
		 90.16662598 5.40753078 138.41236877 95.10552979 2.55858016 137.51313782 90.39916992 1.99615085 138.72935486
		 94.87664795 5.85250759 137.13380432 95.10552979 2.55858016 137.51313782 98.54736328 5.99691486 136.0065612793
		 99.80950928 2.5561626 136.15536499 98.54736328 5.99691486 136.0065612793 99.80950928 2.5561626 136.15536499
		 101.58929443 6.25822449 135.040939331 102.3627243 2.66927242 135.25190735 102.3627243 2.66927242 135.25190735
		 101.65002441 2.49320459 133.53334045 101.58929443 6.25822449 135.040939331 100.93878174 6.072952271 133.48590088
		 101.65002441 2.49320459 133.53334045 99.12640381 2.36734438 134.34394836 100.93878174 6.072952271 133.48590088
		 98.22363281 5.84530258 134.27819824 99.12640381 2.36734438 134.34394836 94.75976563 2.29336882 135.54426575
		 98.22363281 5.84530258 134.27819824 94.69122314 5.5960598 134.99046326 101.58929443 6.25822449 135.040939331
		 100.93878174 6.072952271 133.48590088 99.69274902 9.35360527 134.62106323 99.075744629 9.045987129 133.16685486
		 95.16876221 10.88729095 135.011367798 97.23199463 8.81181812 135.48461914 97.68609619 11.29397869 134.14878845
		 99.69274902 9.35360527 134.62106323 91.90649414 10.21364021 135.91932678 93.42346191 8.54925442 136.43989563
		 95.16876221 10.88729095 135.011367798 97.23199463 8.81181812 135.48461914 88.90081787 9.51194954 136.42727661
		 89.53094482 7.7997694 137.32261658 91.90649414 10.21364021 135.91932678 93.42346191 8.54925442 136.43989563
		 100.93878174 6.072952271 133.48590088 98.22363281 5.84530258 134.27819824 99.075744629 9.045987129 133.16685486
		 96.40753174 8.55500698 133.88623047 98.22363281 5.84530258 134.27819824 94.69122314 5.5960598 134.99046326
		 96.40753174 8.55500698 133.88623047 93.59002686 8.082290649 134.5219574 60.077209473 8.0017547607 135.25247192
		 59.8470459 9.66126919 135.0038604736 60.51398087 7.91751242 137.22613525 60.11859131 9.5156002 137.87397766
		 61.098510742 4.98485661 139.31690979 60.51398087 7.91751242 137.22613525 60.98913574 5.37714005 140.83377075
		 60.11859131 9.5156002 137.87397766 61.19030762 1.0064412355 137.27113342 61.098510742 4.98485661 139.31690979
		 61.22686768 -0.086037636 138.068222046 60.98913574 5.37714005 140.83377075 60.68896866 -2.049031734 132.89732361
		 60.83868027 -0.47122791 133.63952637 61.22686768 -0.086037636 138.068222046 61.19030762 1.0064412355 137.27113342
		 60.086975098 3.39759183 131.88143921 60.83868027 -0.47122791 133.63952637 59.54785156 3.351336 130.30152893
		 60.68896866 -2.049031734 132.89732361 59.3143959 8.48340797 132.36096191 59.92480469 7.18315315 133.38842773
		 59.54785156 3.351336 130.30152893 60.086975098 3.39759183 131.88143921 60.077209473 8.0017547607 135.25247192
		 59.92480469 7.18315315 133.38842773 59.8470459 9.66126919 135.0038604736 59.3143959 8.48340797 132.36096191
		 69.45324707 4.7081213 138.53253174 69.40948486 7.21305323 136.88398743 61.098510742 4.98485661 139.31690979
		 60.51398087 7.91751242 137.22613525 61.19030762 1.0064412355 137.27113342 68.93310547 1.36132705 136.89181519
		 61.098510742 4.98485661 139.31690979 69.45324707 4.7081213 138.53253174 60.83868027 -0.47122791 133.63952637
		 68.73413086 0.11931038 134.011032104 61.19030762 1.0064412355 137.27113342 68.93310547 1.36132705 136.89181519
		 60.086975098 3.39759183 131.88143921 69.055175781 3.3275497 132.60211182 60.83868027 -0.47122791 133.63952637
		 68.73413086 0.11931038 134.011032104 59.92480469 7.18315315 133.38842773 68.91217041 6.60354519 133.80528259
		 60.086975098 3.39759183 131.88143921 69.055175781 3.3275497 132.60211182 49.18139648 3.36606884 129.38716125
		 50.25799179 -1.067352057 132.60824585 48.19641113 3.18075275 128.79534912 49.28070068 -2.35849977 131.7538147
		 49.28070068 -2.35849977 131.7538147 50.25799179 -1.067352057 132.60824585 49.93963623 -0.42881057 138.62307739
		 50.7265625 0.4559958 137.86000061 50.7265625 0.4559958 137.86000061 50.16241837 4.97691059 140.54446411
		 49.93963623 -0.42881057 138.62307739 49.39550781 5.39315414 141.87335205 50.16241837 4.97691059 140.54446411
		 49.46673584 10.15620327 137.14707947 49.39550781 5.39315414 141.87335205 48.69274902 11.35291672 137.57846069
		 48.69274902 11.35291672 137.57846069 49.46673584 10.15620327 137.14707947 48.011047363 10.48715115 130.9413147
		 48.88775635 9.27433968 130.9339447 48.011047363 10.48715115 130.9413147 48.88775635 9.27433968 130.9339447
		 48.19641113 3.18075275 128.79534912 49.18139648 3.36606884 129.38716125 45.6395874 3.51170969 129.90803528
		 48.19641113 3.18075275 128.79534912 46.20587158 -1.20876598 132.38522339 49.28070068 -2.35849977 131.7538147
		 49.28070068 -2.35849977 131.7538147 49.93963623 -0.42881057 138.62307739 46.20587158 -1.20876598 132.38522339
		 46.69647217 0.39727151 138.2651825 49.93963623 -0.42881057 138.62307739 49.39550781 5.39315414 141.87335205
		 46.69647217 0.39727151 138.2651825 46.49890137 5.36358643 140.85600281 49.39550781 5.39315414 141.87335205
		 48.69274902 11.35291672 137.57846069 46.49890137 5.36358643 140.85600281 46.0022583008 10.046652794 137.32923889
		 48.69274902 11.35291672 137.57846069 48.011047363 10.48715115 130.9413147 46.0022583008 10.046652794 137.32923889
		 45.54620361 9.32430553 131.67947388 48.011047363 10.48715115 130.9413147 48.19641113 3.18075275 128.79534912
		 45.54620361 9.32430553 131.67947388 45.6395874 3.51170969 129.90803528 41.875 3.18920588 128.5262146
		 45.6395874 3.51170969 129.90803528 42.56738281 -2.087085962 131.50021362 46.20587158 -1.20876598 132.38522339
		 42.56738281 -2.087085962 131.50021362 46.20587158 -1.20876598 132.38522339 43.2243042 -0.94063908 139.062850952
		 46.69647217 0.39727151 138.2651825 46.69647217 0.39727151 138.2651825 46.49890137 5.36358643 140.85600281
		 43.2243042 -0.94063908 139.062850952 43.10174561 5.80936241 142.31858826 46.49890137 5.36358643 140.85600281
		 46.0022583008 10.046652794 137.32923889 43.10174561 5.80936241 142.31858826;
	setAttr ".vt[1992:2157]" 42.42053223 11.76895428 137.83128357 46.0022583008 10.046652794 137.32923889
		 45.54620361 9.32430553 131.67947388 42.42053223 11.76895428 137.83128357 41.79400635 10.85840702 130.79779053
		 41.79400635 10.85840702 130.79779053 45.54620361 9.32430553 131.67947388 41.875 3.18920588 128.5262146
		 45.6395874 3.51170969 129.90803528 40.58807373 3.64361262 129.90246582 41.875 3.18920588 128.5262146
		 40.67944336 -0.87143826 132.31207275 42.56738281 -2.087085962 131.50021362 41.24456787 0.060637593 138.64376831
		 40.67944336 -0.87143826 132.31207275 43.2243042 -0.94063908 139.062850952 42.56738281 -2.087085962 131.50021362
		 41.52191162 5.91230011 141.057952881 41.24456787 0.060637593 138.64376831 43.10174561 5.80936241 142.31858826
		 43.2243042 -0.94063908 139.062850952 41.076477051 10.19710732 137.57574463 41.52191162 5.91230011 141.057952881
		 42.42053223 11.76895428 137.83128357 43.10174561 5.80936241 142.31858826 41.076477051 10.19710732 137.57574463
		 42.42053223 11.76895428 137.83128357 40.61730957 9.51461601 131.7752533 41.79400635 10.85840702 130.79779053
		 40.58807373 3.64361262 129.90246582 40.61730957 9.51461601 131.7752533 41.875 3.18920588 128.5262146
		 41.79400635 10.85840702 130.79779053 -41.52191162 5.91230011 141.057952881 -41.24456787 0.060637478 138.64376831
		 -30.69433594 5.95870209 140.55935669 -29.32513428 0.90873939 137.96920776 -28.74890327 -0.7954877 133.069854736
		 -40.67944336 -0.87143826 132.31207275 -29.040893555 4.14704037 130.66433716 -40.58807373 3.64361262 129.90246582
		 -30.10290527 10.36787128 137.89416504 -41.076477051 10.19710732 137.57574463 -30.69433594 5.95870209 140.55935669
		 -41.52191162 5.91230011 141.057952881 -40.58807373 3.64361262 129.90246582 -40.61730957 9.51461601 131.7752533
		 -29.040893555 4.14704037 130.66433716 -29.34008789 9.42504883 132.75827026 -29.34008789 9.42504883 132.75827026
		 -40.61730957 9.51461601 131.7752533 -30.10290527 10.36787128 137.89416504 -41.076477051 10.19710732 137.57574463
		 -50.7265625 0.4559958 137.86000061 -52.9309082 -0.66058445 138.07244873 -50.25799179 -1.067352057 132.60824585
		 -52.33655167 -2.5420711 132.04574585 -51.65930557 4.70841599 141.6177063 -56.43164063 5.52288437 141.05821228
		 -52.9309082 -0.66058445 138.07244873 -56.79187012 -0.015374541 138.25418091 -60.98913574 5.37714005 140.83377075
		 -61.22686768 -0.086037397 138.068222046 -56.43164063 5.52288437 141.05821228 -56.36120224 -1.97105086 132.87857056
		 -55.094547272 3.52778649 130.15626526 -52.33655167 -2.5420711 132.04574585 -50.62463379 2.72997856 128.93077087
		 -50.76514053 11.77939034 137.37922668 -54.58270264 9.77108669 137.85501099 -51.65930557 4.70841599 141.6177063
		 -56.43164063 5.52288437 141.05821228 -55.094547272 3.52778649 130.15626526 -54.061096191 8.77476406 132.25418091
		 -50.62463379 2.72997856 128.93077087 -50.081787109 10.77901268 130.89974976 -56.79187012 -0.015374541 138.25418091
		 -56.36120224 -1.97105086 132.87857056 -52.9309082 -0.66058445 138.07244873 -52.33655167 -2.5420711 132.04574585
		 -80.032409668 4.010931969 137.76428223 -79.28009033 0.9940455 136.58131409 -69.45324707 4.7081213 138.53253174
		 -68.93310547 1.36132705 136.89181519 -68.73413086 0.11931038 134.011032104 -79.023742676 0.045720816 134.46626282
		 -69.055175781 3.3275497 132.60211182 -79.25482178 2.74246693 133.81567383 -69.40948486 7.21305323 136.88398743
		 -79.60168457 6.41727543 136.63342285 -69.45324707 4.7081213 138.53253174 -80.032409668 4.010931969 137.76428223
		 -79.25482178 2.74246693 133.81567383 -79.2265625 6.026581764 134.62736511 -69.055175781 3.3275497 132.60211182
		 -68.91217041 6.60354519 133.80528259 -79.28009033 0.9940455 136.58131409 -79.023742676 0.045720816 134.46626282
		 -68.93310547 1.36132705 136.89181519 -68.73413086 0.11931038 134.011032104 -57.018436432 9.12574768 137.88963318
		 -54.58270264 9.77108669 137.85501099 -57.035945892 9.35839844 135.074615479 -54.71966171 11.034690857 134.89549255
		 -56.38318253 8.12495041 132.45724487 -57.035945892 9.35839844 135.074615479 -54.061096191 8.77476406 132.25418091
		 -54.71966171 11.034690857 134.89549255 -41.24456787 0.060637478 138.64376831 -40.67944336 -0.87143826 132.31207275
		 -29.32513428 0.90873939 137.96920776 -28.74890327 -0.7954877 133.069854736 -50.16241837 4.97691059 140.54446411
		 -51.65930557 4.70841599 141.6177063 -50.7265625 0.4559958 137.86000061 -52.9309082 -0.66058445 138.07244873
		 -50.16241837 4.97691059 140.54446411 -49.46673584 10.15620327 137.14707947 -51.65930557 4.70841599 141.6177063
		 -50.76514053 11.77939034 137.37922668 -48.88775635 9.27433968 130.9339447 -50.081787109 10.77901268 130.89974976
		 -49.46673584 10.15620327 137.14707947 -50.76514053 11.77939034 137.37922668 -49.18139648 3.36606884 129.38716125
		 -50.62463379 2.72997856 128.93077087 -48.88775635 9.27433968 130.9339447 -50.081787109 10.77901268 130.89974976
		 -49.18139648 3.36606884 129.38716125 -50.25799179 -1.067352057 132.60824585 -50.62463379 2.72997856 128.93077087
		 -52.33655167 -2.5420711 132.04574585 -61.22686768 -0.086037397 138.068222046 -60.68896866 -2.049032688 132.89732361
		 -56.79187012 -0.015374541 138.25418091 -56.36120224 -1.97105086 132.87857056 -60.68896866 -2.049032688 132.89732361
		 -59.5479126 3.35133553 130.30152893 -56.36120224 -1.97105086 132.87857056 -55.094547272 3.52778649 130.15626526
		 -55.094547272 3.52778649 130.15626526 -59.5479126 3.35133553 130.30152893 -56.38318253 8.12495041 132.45724487
		 -59.3143959 8.48340893 132.36096191 -56.38318253 8.12495041 132.45724487 -59.3143959 8.48340893 132.36096191
		 -57.035945892 9.35839844 135.074615479 -59.8470459 9.66127014 135.0038604736 -60.11859131 9.5156002 137.87397766
		 -57.018436432 9.12574768 137.88963318 -59.8470459 9.66127014 135.0038604736 -57.035945892 9.35839844 135.074615479
		 -60.11859131 9.5156002 137.87397766 -60.98913574 5.37714005 140.83377075 -57.018436432 9.12574768 137.88963318
		 -56.43164063 5.52288437 141.05821228 -80.032409668 4.010931969 137.76428223 -83.072814941 4.33594418 138.96601868
		 -79.28009033 0.9940455 136.58131409 -82.33001709 -1.2280519 136.97155762 -80.032409668 4.010931969 137.76428223
		 -79.60168457 6.41727543 136.63342285 -83.072814941 4.33594418 138.96601868 -83.044067383 8.61053371 137.40776062
		 -79.2265625 6.026581764 134.62736511 -82.64251709 7.71267509 133.70547485;
	setAttr ".vt[2158:2323]" -79.60168457 6.41727543 136.63342285 -83.044067383 8.61053371 137.40776062
		 -82.72247314 1.13035452 132.49890137 -82.64251709 7.71267509 133.70547485 -79.25482178 2.74246693 133.81567383
		 -79.2265625 6.026581764 134.62736511 -81.89801025 -3.1285603 133.54916382 -82.72247314 1.13035452 132.49890137
		 -79.023742676 0.045720816 134.46626282 -79.25482178 2.74246693 133.81567383 -79.28009033 0.9940455 136.58131409
		 -82.33001709 -1.2280519 136.97155762 -79.023742676 0.045720816 134.46626282 -81.89801025 -3.1285603 133.54916382
		 -92.51733398 -7.50330925 130.19436646 -92.76733398 -4.88906193 129.51431274 -88.55047607 -6.94781017 131.5736084
		 -89.79498291 -3.19143796 130.84515381 -94.95257568 1.37132144 137.89379883 -94.36224365 -1.19122529 137.80760193
		 -90.39916992 1.99615085 138.72935486 -89.22497559 -0.91167426 137.99807739 -94.87664795 5.85250759 137.13380432
		 -90.16662598 5.40753078 138.41236877 -93.42346191 8.54925442 136.43989563 -89.53094482 7.7997694 137.32261658
		 -87.10253906 -5.73008633 132.64723206 -87.48114014 -2.64662337 131.98078918 -81.89801025 -3.1285603 133.54916382
		 -82.72247314 1.13035452 132.49890137 -82.33001709 -1.2280519 136.97155762 -88.35046387 -5.45580864 134.89546204
		 -81.89801025 -3.1285603 133.54916382 -87.10253906 -5.73008633 132.64723206 -90.39916992 1.99615085 138.72935486
		 -89.22497559 -0.91167426 137.99807739 -83.072814941 4.33594418 138.96601868 -82.33001709 -1.2280519 136.97155762
		 -89.82507324 8.9479599 133.76460266 -88.90081787 9.51194954 136.42727661 -82.64251709 7.71267509 133.70547485
		 -83.044067383 8.61053371 137.40776062 -94.30578613 -7.10606003 132.78674316 -89.97564697 -6.42468023 134.52680969
		 -94.66674805 -4.84246826 132.49188232 -90.65588379 -3.17975831 134.3057251 -88.35046387 -5.45580864 134.89546204
		 -89.97564697 -6.42468023 134.52680969 -87.10253906 -5.73008633 132.64723206 -88.55047607 -6.94781017 131.5736084
		 -94.36224365 -1.19122529 137.80760193 -93.69482422 -1.47237563 134.97972107 -89.22497559 -0.91167426 137.99807739
		 -89.70556641 -0.97306466 134.76823425 -94.45239258 1.7531848 135.22932434 -90.81219482 2.73973966 134.72187805
		 -93.69482422 -1.47237563 134.97972107 -89.70556641 -0.97306466 134.76823425 -93.59002686 8.082290649 134.5219574
		 -91.68756104 9.38669109 134.21455383 -90.77111816 6.014046669 134.29512024 -89.82507324 8.9479599 133.76460266
		 -91.68756104 9.38669109 134.21455383 -91.90649414 10.21364021 135.91932678 -89.82507324 8.9479599 133.76460266
		 -88.90081787 9.51194954 136.42727661 -98.74853516 1.043942213 136.88124084 -98.06854248 -1.58887768 136.88362122
		 -94.95257568 1.37132144 137.89379883 -94.36224365 -1.19122529 137.80760193 -98.54736328 5.99691486 136.0065612793
		 -94.87664795 5.85250759 137.13380432 -97.23199463 8.81181812 135.48461914 -93.42346191 8.54925442 136.43989563
		 -98.06854248 -1.58887768 136.88362122 -97.28271484 -1.80989575 134.33988953 -94.36224365 -1.19122529 137.80760193
		 -93.69482422 -1.47237563 134.97972107 -93.69482422 -1.47237563 134.97972107 -97.28271484 -1.80989575 134.33988953
		 -94.45239258 1.7531848 135.22932434 -98.26574707 1.43828094 134.29133606 -96.40753174 8.55500698 133.88623047
		 -94.70739746 10.36855221 133.53875732 -93.59002686 8.082290649 134.5219574 -91.68756104 9.38669109 134.21455383
		 -91.68756104 9.38669109 134.21455383 -94.70739746 10.36855221 133.53875732 -91.90649414 10.21364021 135.91932678
		 -95.16876221 10.88729095 135.011367798 -101.85943604 -2.13516712 135.51541138 -102.37602997 0.8275429 135.48608398
		 -101.37432861 -2.39691567 134.39125061 -102.0062942505 1.20132625 134.30412292 -99.69274902 9.35360527 134.62106323
		 -97.68609619 11.29397869 134.14878845 -99.075744629 9.045987129 133.16685486 -97.10247803 10.86401272 132.7953949
		 -92.76733398 -4.88906193 129.51431274 -94.66674805 -4.84246826 132.49188232 -89.79498291 -3.19143796 130.84515381
		 -90.65588379 -3.17975831 134.3057251 -98.26574707 1.43828094 134.29133606 -98.74853516 1.043942213 136.88124084
		 -94.45239258 1.7531848 135.22932434 -94.95257568 1.37132144 137.89379883 -90.39916992 1.99615085 138.72935486
		 -95.10552979 2.55858016 137.51313782 -90.81219482 2.73973966 134.72187805 -94.75976563 2.29336882 135.54426575
		 -95.10552979 2.55858016 137.51313782 -99.80950928 2.5561626 136.15536499 -94.75976563 2.29336882 135.54426575
		 -99.12640381 2.36734438 134.34394836 -94.95257568 1.37132144 137.89379883 -90.39916992 1.99615085 138.72935486
		 -94.45239258 1.7531848 135.22932434 -90.81219482 2.73973966 134.72187805 -101.85943604 -2.13516712 135.51541138
		 -101.37432861 -2.39691567 134.39125061 -98.06854248 -1.58887768 136.88362122 -97.28271484 -1.80989575 134.33988953
		 -102.37602997 0.8275429 135.48608398 -101.85943604 -2.13516712 135.51541138 -98.74853516 1.043942213 136.88124084
		 -98.06854248 -1.58887768 136.88362122 -102.37602997 0.8275429 135.48608398 -98.74853516 1.043942213 136.88124084
		 -102.0062942505 1.20132625 134.30412292 -98.26574707 1.43828094 134.29133606 -97.28271484 -1.80989575 134.33988953
		 -100.43371582 -1.99401236 133.65762329 -98.26574707 1.43828094 134.29133606 -101.011047363 1.29094589 133.54110718
		 -99.075744629 9.045987129 133.16685486 -97.10247803 10.86401272 132.7953949 -96.40753174 8.55500698 133.88623047
		 -94.70739746 10.36855221 133.53875732 -102.3627243 2.66927242 135.25190735 -101.65002441 2.49320459 133.53334045
		 -99.80950928 2.5561626 136.15536499 -99.12640381 2.36734438 134.34394836 -101.58929443 6.25822449 135.040939331
		 -98.54736328 5.99691486 136.0065612793 -99.69274902 9.35360527 134.62106323 -97.23199463 8.81181812 135.48461914
		 -94.70739746 10.36855221 133.53875732 -97.10247803 10.86401272 132.7953949 -95.16876221 10.88729095 135.011367798
		 -97.68609619 11.29397869 134.14878845 -101.37432861 -2.39691567 134.39125061 -102.0062942505 1.20132625 134.30412292
		 -100.43371582 -1.99401236 133.65762329 -101.011047363 1.29094589 133.54110718 -89.97564697 -6.42468023 134.52680969
		 -88.35046387 -5.45580864 134.89546204 -90.65588379 -3.17975831 134.3057251 -89.44494629 -2.79524207 134.86703491
		 -89.79498291 -3.19143796 130.84515381 -90.65588379 -3.17975831 134.3057251 -87.48114014 -2.64662337 131.98078918
		 -89.44494629 -2.79524207 134.86703491 -87.48114014 -2.64662337 131.98078918 -87.10253906 -5.73008633 132.64723206
		 -89.79498291 -3.19143796 130.84515381 -88.55047607 -6.94781017 131.5736084;
	setAttr ".vt[2324:2489]" -83.044067383 8.61053371 137.40776062 -89.53094482 7.7997694 137.32261658
		 -83.072814941 4.33594418 138.96601868 -90.16662598 5.40753078 138.41236877 -94.87664795 5.85250759 137.13380432
		 -95.10552979 2.55858016 137.51313782 -90.16662598 5.40753078 138.41236877 -90.39916992 1.99615085 138.72935486
		 -99.80950928 2.5561626 136.15536499 -95.10552979 2.55858016 137.51313782 -98.54736328 5.99691486 136.0065612793
		 -94.87664795 5.85250759 137.13380432 -102.3627243 2.66927242 135.25190735 -99.80950928 2.5561626 136.15536499
		 -101.58929443 6.25822449 135.040939331 -98.54736328 5.99691486 136.0065612793 -102.3627243 2.66927242 135.25190735
		 -101.58929443 6.25822449 135.040939331 -101.65002441 2.49320459 133.53334045 -100.93878174 6.072952271 133.48590088
		 -101.65002441 2.49320459 133.53334045 -100.93878174 6.072952271 133.48590088 -99.12640381 2.36734438 134.34394836
		 -98.22363281 5.84530258 134.27819824 -99.12640381 2.36734438 134.34394836 -98.22363281 5.84530258 134.27819824
		 -94.75976563 2.29336882 135.54426575 -94.69122314 5.5960598 134.99046326 -101.58929443 6.25822449 135.040939331
		 -99.69274902 9.35360527 134.62106323 -100.93878174 6.072952271 133.48590088 -99.075744629 9.045987129 133.16685486
		 -95.16876221 10.88729095 135.011367798 -97.68609619 11.29397869 134.14878845 -97.23199463 8.81181812 135.48461914
		 -99.69274902 9.35360527 134.62106323 -91.90649414 10.21364021 135.91932678 -95.16876221 10.88729095 135.011367798
		 -93.42346191 8.54925442 136.43989563 -97.23199463 8.81181812 135.48461914 -88.90081787 9.51194954 136.42727661
		 -91.90649414 10.21364021 135.91932678 -89.53094482 7.7997694 137.32261658 -93.42346191 8.54925442 136.43989563
		 -100.93878174 6.072952271 133.48590088 -99.075744629 9.045987129 133.16685486 -98.22363281 5.84530258 134.27819824
		 -96.40753174 8.55500698 133.88623047 -98.22363281 5.84530258 134.27819824 -96.40753174 8.55500698 133.88623047
		 -94.69122314 5.5960598 134.99046326 -93.59002686 8.082290649 134.5219574 -60.077209473 8.0017547607 135.25247192
		 -60.51398087 7.91751242 137.22613525 -59.8470459 9.66127014 135.0038604736 -60.11859131 9.5156002 137.87397766
		 -60.11859131 9.5156002 137.87397766 -60.51398087 7.91751242 137.22613525 -60.98913574 5.37714005 140.83377075
		 -61.098510742 4.98485661 139.31690979 -60.98913574 5.37714005 140.83377075 -61.098510742 4.98485661 139.31690979
		 -61.22686768 -0.086037397 138.068222046 -61.19030762 1.0064412355 137.27113342 -60.68896866 -2.049032688 132.89732361
		 -61.22686768 -0.086037397 138.068222046 -60.83868027 -0.47122791 133.63952637 -61.19030762 1.0064412355 137.27113342
		 -60.68896866 -2.049032688 132.89732361 -60.83868027 -0.47122791 133.63952637 -59.5479126 3.35133553 130.30152893
		 -60.086975098 3.39759183 131.88143921 -59.3143959 8.48340893 132.36096191 -59.5479126 3.35133553 130.30152893
		 -59.92480469 7.18315315 133.38842773 -60.086975098 3.39759183 131.88143921 -59.3143959 8.48340893 132.36096191
		 -59.92480469 7.18315315 133.38842773 -59.8470459 9.66127014 135.0038604736 -60.077209473 8.0017547607 135.25247192
		 -60.51398087 7.91751242 137.22613525 -69.40948486 7.21305323 136.88398743 -61.098510742 4.98485661 139.31690979
		 -69.45324707 4.7081213 138.53253174 -61.19030762 1.0064412355 137.27113342 -61.098510742 4.98485661 139.31690979
		 -68.93310547 1.36132705 136.89181519 -69.45324707 4.7081213 138.53253174 -60.83868027 -0.47122791 133.63952637
		 -61.19030762 1.0064412355 137.27113342 -68.73413086 0.11931038 134.011032104 -68.93310547 1.36132705 136.89181519
		 -60.086975098 3.39759183 131.88143921 -60.83868027 -0.47122791 133.63952637 -69.055175781 3.3275497 132.60211182
		 -68.73413086 0.11931038 134.011032104 -59.92480469 7.18315315 133.38842773 -60.086975098 3.39759183 131.88143921
		 -68.91217041 6.60354519 133.80528259 -69.055175781 3.3275497 132.60211182 -49.28070068 -2.35849977 131.7538147
		 -50.25799179 -1.067352057 132.60824585 -48.19641113 3.18075371 128.79534912 -49.18139648 3.36606884 129.38716125
		 -49.28070068 -2.35849977 131.7538147 -49.93963623 -0.42881086 138.62307739 -50.25799179 -1.067352057 132.60824585
		 -50.7265625 0.4559958 137.86000061 -49.39550781 5.39315414 141.87335205 -50.16241837 4.97691059 140.54446411
		 -49.93963623 -0.42881086 138.62307739 -50.7265625 0.4559958 137.86000061 -48.69274902 11.35291672 137.57846069
		 -49.46673584 10.15620327 137.14707947 -49.39550781 5.39315414 141.87335205 -50.16241837 4.97691059 140.54446411
		 -48.69274902 11.35291672 137.57846069 -48.011047363 10.4871521 130.9413147 -49.46673584 10.15620327 137.14707947
		 -48.88775635 9.27433968 130.9339447 -48.011047363 10.4871521 130.9413147 -48.19641113 3.18075371 128.79534912
		 -48.88775635 9.27433968 130.9339447 -49.18139648 3.36606884 129.38716125 -45.6395874 3.51171017 129.90803528
		 -46.20587158 -1.20876575 132.38522339 -48.19641113 3.18075371 128.79534912 -49.28070068 -2.35849977 131.7538147
		 -46.69647217 0.39727151 138.2651825 -49.93963623 -0.42881086 138.62307739 -46.20587158 -1.20876575 132.38522339
		 -49.28070068 -2.35849977 131.7538147 -46.49890137 5.36358643 140.85600281 -49.39550781 5.39315414 141.87335205
		 -46.69647217 0.39727151 138.2651825 -49.93963623 -0.42881086 138.62307739 -46.0022583008 10.046652794 137.32923889
		 -48.69274902 11.35291672 137.57846069 -46.49890137 5.36358643 140.85600281 -49.39550781 5.39315414 141.87335205
		 -45.54620361 9.32430553 131.67947388 -48.011047363 10.4871521 130.9413147 -46.0022583008 10.046652794 137.32923889
		 -48.69274902 11.35291672 137.57846069 -45.6395874 3.51171017 129.90803528 -48.19641113 3.18075371 128.79534912
		 -45.54620361 9.32430553 131.67947388 -48.011047363 10.4871521 130.9413147 -41.875 3.18920612 128.5262146
		 -42.56738281 -2.087085962 131.50021362 -45.6395874 3.51171017 129.90803528 -46.20587158 -1.20876575 132.38522339
		 -42.56738281 -2.087085962 131.50021362 -43.2243042 -0.94063926 139.062850952 -46.20587158 -1.20876575 132.38522339
		 -46.69647217 0.39727151 138.2651825 -43.10174561 5.80936241 142.31858826 -46.49890137 5.36358643 140.85600281
		 -43.2243042 -0.94063926 139.062850952 -46.69647217 0.39727151 138.2651825 -42.42053223 11.76895428 137.83128357
		 -46.0022583008 10.046652794 137.32923889 -43.10174561 5.80936241 142.31858826 -46.49890137 5.36358643 140.85600281
		 -41.79400635 10.85840702 130.79779053 -45.54620361 9.32430553 131.67947388;
	setAttr ".vt[2490:2655]" -42.42053223 11.76895428 137.83128357 -46.0022583008 10.046652794 137.32923889
		 -41.79400635 10.85840702 130.79779053 -41.875 3.18920612 128.5262146 -45.54620361 9.32430553 131.67947388
		 -45.6395874 3.51171017 129.90803528 -42.56738281 -2.087085962 131.50021362 -41.875 3.18920612 128.5262146
		 -40.67944336 -0.87143826 132.31207275 -40.58807373 3.64361262 129.90246582 -41.24456787 0.060637478 138.64376831
		 -43.2243042 -0.94063926 139.062850952 -40.67944336 -0.87143826 132.31207275 -42.56738281 -2.087085962 131.50021362
		 -41.52191162 5.91230011 141.057952881 -43.10174561 5.80936241 142.31858826 -41.24456787 0.060637478 138.64376831
		 -43.2243042 -0.94063926 139.062850952 -41.076477051 10.19710732 137.57574463 -42.42053223 11.76895428 137.83128357
		 -41.52191162 5.91230011 141.057952881 -43.10174561 5.80936241 142.31858826 -41.79400635 10.85840702 130.79779053
		 -42.42053223 11.76895428 137.83128357 -40.61730957 9.51461601 131.7752533 -41.076477051 10.19710732 137.57574463
		 -40.58807373 3.64361262 129.90246582 -41.875 3.18920612 128.5262146 -40.61730957 9.51461601 131.7752533
		 -41.79400635 10.85840702 130.79779053 29.040893555 4.14704037 130.66433716 28.74890327 -0.7954874 133.069854736
		 20.9119873 3.32788944 131.53511047 20.59979248 -1.46576953 133.029418945 20.9119873 3.32788944 131.53511047
		 22.01776123 11.29488277 132.3613739 29.040893555 4.14704037 130.66433716 29.34008789 9.42504883 132.75827026
		 29.32513428 0.90873939 137.96920776 22.81524658 -0.43271518 138.61064148 28.74890327 -0.7954874 133.069854736
		 20.59979248 -1.46576953 133.029418945 22.81524658 -0.43271518 138.61064148 29.32513428 0.90873939 137.96920776
		 25.30657959 5.55192566 142.21080017 30.69433594 5.95870209 140.55935669 30.69433594 5.95870209 140.55935669
		 30.10290527 10.36787128 137.89416504 25.30657959 5.55192566 142.21080017 24.0076904297 11.36059761 138.85809326
		 22.01776123 11.29488277 132.3613739 24.0076904297 11.36059761 138.85809326 29.34008789 9.42504883 132.75827026
		 30.10290527 10.36787128 137.89416504 -20.59979248 -1.46576977 133.029418945 -28.74890327 -0.7954877 133.069854736
		 -20.9119873 3.32788944 131.53511047 -29.040893555 4.14704037 130.66433716 -20.9119873 3.32788944 131.53511047
		 -29.040893555 4.14704037 130.66433716 -22.01776123 11.29488277 132.3613739 -29.34008789 9.42504883 132.75827026
		 -20.59979248 -1.46576977 133.029418945 -22.81524658 -0.43271518 138.61064148 -28.74890327 -0.7954877 133.069854736
		 -29.32513428 0.90873939 137.96920776 -30.69433594 5.95870209 140.55935669 -29.32513428 0.90873939 137.96920776
		 -25.30657959 5.55192566 142.21080017 -22.81524658 -0.43271518 138.61064148 -30.69433594 5.95870209 140.55935669
		 -25.30657959 5.55192566 142.21080017 -30.10290527 10.36787128 137.89416504 -24.0076904297 11.36059761 138.85809326
		 -22.01776123 11.29488277 132.3613739 -29.34008789 9.42504883 132.75827026 -24.0076904297 11.36059761 138.85809326
		 -30.10290527 10.36787128 137.89416504 13.32946682 2.72491717 168.68161011 14.15423584 3.91688991 166.57754517
		 11.36437988 3.32235837 168.74110413 11.42651367 5.140769 166.48936462 14.15423584 3.91688991 166.57754517
		 13.4101572 2.020276785 160.3782959 11.42651367 5.140769 166.48936462 10.87017822 2.96460485 159.93466187
		 13.4101572 2.020276785 160.3782959 11.092955589 -1.11077046 159.19769287 10.87017822 2.96460485 159.93466187
		 10.38916016 -0.91460484 159.011993408 11.47424316 10.59647274 168.54026794 0 12.28084278 170.20411682
		 11.11749268 4.60984516 176.3394928 0 5.49158335 178.85134888 10.84747314 9.078814507 160.91529846
		 0 10.68899632 159.74467468 11.47424316 10.59647274 168.54026794 0 12.28084278 170.20411682
		 8.65771484 -9.4216404 152.62583923 6.83300781 -11.83711147 153.014938354 0 -10.64536858 149.44366455
		 0 -13.4553299 150.92666626 10.84686279 -5.55400944 175.14750671 11.11749268 4.60984516 176.3394928
		 0 -5.97735786 177.47706604 0 5.49158335 178.85134888 10.84686279 -5.55400944 175.14750671
		 0 -5.97735786 177.47706604 8.86517334 -10.50799561 171.62628174 0 -11.67099285 173.3621521
		 8.23858643 -11.32688713 162.32060242 8.86517334 -10.50799561 171.62628174 0 -12.71749306 162.14440918
		 0 -11.67099285 173.3621521 8.23858643 -11.32688713 162.32060242 10.14178467 -7.48782444 162.79693604
		 8.86517334 -10.50799561 171.62628174 10.84686279 -5.55400944 175.14750671 10.84747314 9.078814507 160.91529846
		 6.6427002 6.14454269 155.08543396 0 10.68899632 159.74467468 0 8.39335155 155.094116211
		 8.65771484 -9.4216404 152.62583923 0 -10.64536858 149.44366455 5.45410156 -5.092852592 151.6153717
		 0 -7.339499 150.27394104 7.043579102 7.378088 147.53623962 6.8562007 -2.72597289 142.75202942
		 8.29772949 7.41380548 146.64923096 7.35900831 -3.51028848 142.30941772 0 10.5966711 147.71418762
		 7.043579102 7.378088 147.53623962 0 10.79074955 146.84706116 8.29772949 7.41380548 146.64923096
		 6.21179199 -2.69480491 142.52046204 0 -4.79941654 142.57102966 5.055603027 -4.050958633 140.98173523
		 0 -5.84168053 139.68997192 8.33746338 14.84312439 140.62487793 0 14.65932083 140.80989075
		 6.97540283 9.70086384 147.25073242 0 12.36274719 147.41590881 8.83081055 16.72996521 133.53860474
		 0 16.62279129 133.42442322 8.33746338 14.84312439 140.62487793 0 14.65932083 140.80989075
		 8.87011719 16.15712738 124.5613327 6.47241163 11.31961441 113.72847748 0 16.067396164 124.14888
		 0 12.40099144 113.87462616 6.72656202 11.127285 105.15606689 0 12.64225388 105.30664825
		 6.47241163 11.31961441 113.72847748 0 12.40099144 113.87462616 6.25170898 -11.76477432 123.75719452
		 11.62878418 -12.68948174 124.31658173 6.54345703 -10.072651863 130.27500916 14.26294041 -11.35639668 129.87559509
		 6.08190918 -11.14801216 121.31909943 9.79614258 -11.79140568 121.57449341 6.25170898 -11.76477432 123.75719452
		 11.62878418 -12.68948174 124.31658173 4.73760986 -11.68622208 112.42604065 8.18206787 -11.75412178 112.62955475
		 6.08190918 -11.14801216 121.31909943 9.79614258 -11.79140568 121.57449341;
	setAttr ".vt[2656:2821]" 4.45220947 -11.55725002 102.65649414 7.30578613 -12.28422356 102.81832123
		 4.73760986 -11.68622208 112.42604065 8.18206787 -11.75412178 112.62955475 6.99224854 11.30022717 97.49239349
		 0 12.99118042 97.68334198 6.72656202 11.127285 105.15606689 0 12.64225388 105.30664825
		 6.99224854 11.30022717 97.49239349 7.020812988 12.98141479 92.9118576 0 12.99118042 97.68334198
		 0 14.0031776428 93.13626099 7.13745117 13.85529327 85.011528015 6.77862549 13.98077297 79.47125244
		 0 14.8463192 84.54638672 0 14.069608688 78.74694824 5.12811279 -11.9782114 91.53930664
		 7.32379198 -12.44577789 91.74349213 4.45220947 -11.55725002 102.65649414 7.30578613 -12.28422356 102.81832123
		 0 -4.79577732 75.7881546 8.19421387 -5.73058128 77.96364594 0 -8.61357307 81.41249847
		 7.1998291 -9.085627556 82.54538727 10.72491455 -1.93764329 163.50354004 10.91375732 -1.40712094 167.54963684
		 10.14178467 -7.48782444 162.79693604 10.84686279 -5.55400944 175.14750671 10.84686279 -5.55400944 175.14750671
		 10.91375732 -1.40712094 167.54963684 11.11749268 4.60984516 176.3394928 11.36437988 3.32235837 168.74110413
		 11.11749268 4.60984516 176.3394928 11.36437988 3.32235837 168.74110413 11.47424316 10.59647274 168.54026794
		 11.42651367 5.140769 166.48936462 11.47424316 10.59647274 168.54026794 11.42651367 5.140769 166.48936462
		 10.84747314 9.078814507 160.91529846 10.87017822 2.96460485 159.93466187 15.18847561 -4.90691805 112.57042694
		 15.83435059 3.19275045 112.78843689 16.32495117 -5.62407589 124.12385559 18.68145752 4.54329157 123.36599731
		 16.21759033 -6.33006525 93.033065796 16.78997993 4.63074493 96.15432739 14.76788425 -5.83742428 103.26298523
		 15.75811768 2.52242851 104.3806076 14.76788425 -5.83742428 103.26298523 15.75811768 2.52242851 104.3806076
		 15.18847561 -4.90691805 112.57042694 15.83435059 3.19275045 112.78843689 8.97387695 -9.93630981 112.62955475
		 15.18847561 -4.90691805 112.57042694 10.74413967 -9.9612751 121.57449341 16.32495117 -5.62407589 124.12385559
		 20.9119873 3.32788944 131.53511047 20.59979248 -1.46576953 133.029418945 19.64758301 3.42707419 127.96007538
		 17.51373291 -3.75348592 128.84069824 15.22229004 -9.52626514 129.87559509 19.293396 -2.60623765 135.0043640137
		 15.6973877 -2.25078058 141.88247681 19.58300781 -1.57329547 139.65901184 15.22229004 -9.52626514 129.87559509
		 17.51373291 -3.75348592 128.84069824 19.293396 -2.60623765 135.0043640137 20.59979248 -1.46576953 133.029418945
		 7.78033447 -3.50344229 141.49485779 9.62109375 -2.023079157 141.19007874 8.29772949 7.41380548 146.64923096
		 10.21374512 6.84176397 145.63499451 8.095214844 -10.46131611 102.81832123 14.76788425 -5.83742428 103.26298523
		 8.97387695 -9.93630981 112.62955475 15.18847561 -4.90691805 112.57042694 7.35473633 -11.17984581 91.74349213
		 16.21759033 -6.33006525 93.033065796 8.095214844 -10.46131611 102.81832123 14.76788425 -5.83742428 103.26298523
		 15.75811768 2.52242851 104.3806076 6.72656202 11.127285 105.15606689 15.83435059 3.19275045 112.78843689
		 6.47241163 11.31961441 113.72847748 18.53637695 12.8819437 131.082870483 16.84063721 13.94336796 140.10919189
		 22.01776123 11.29488277 132.3613739 22.27703857 11.84458733 140.32098389 18.53637695 12.8819437 131.082870483
		 8.83081055 16.72996521 133.53860474 16.84063721 13.94336796 140.10919189 8.33746338 14.84312439 140.62487793
		 6.72656202 11.127285 105.15606689 15.75811768 2.52242851 104.3806076 6.99224854 11.30022717 97.49239349
		 16.78997993 4.63074493 96.15432739 17.11157227 5.56237459 79.42021179 16.92523193 5.87797451 83.95496368
		 16.39562988 -1.75216138 79.36686707 16.41973877 -3.49706626 82.33260345 6.50524855 11.22046471 79.15821838
		 16.92523193 5.87797451 83.95496368 8.86724854 9.1408577 76.77679443 17.11157227 5.56237459 79.42021179
		 16.78997993 4.63074493 96.15432739 16.21759033 -6.33006525 93.033065796 16.97741699 5.81606865 89.54592133
		 16.60961914 -5.86815691 87.040596008 6.99224854 11.30022717 97.49239349 16.78997993 4.63074493 96.15432739
		 7.020812988 12.98141479 92.9118576 16.97741699 5.81606865 89.54592133 7.020812988 12.98141479 92.9118576
		 7.13745117 13.85529327 85.011528015 0 14.0031776428 93.13626099 0 14.8463192 84.54638672
		 16.21759033 -6.33006525 93.033065796 7.35473633 -11.17984581 91.74349213 16.60961914 -5.86815691 87.040596008
		 8.09564209 -10.97508717 82.42089081 8.87011719 16.15712738 124.5613327 18.68145752 4.54329157 123.36599731
		 6.47241163 11.31961441 113.72847748 15.83435059 3.19275045 112.78843689 18.53637695 12.8819437 131.082870483
		 22.01776123 11.29488277 132.3613739 19.64758301 3.42707419 127.96007538 20.9119873 3.32788944 131.53511047
		 8.83081055 16.72996521 133.53860474 8.87011719 16.15712738 124.5613327 0 16.62279129 133.42442322
		 0 16.067396164 124.14888 6.77862549 13.98077297 79.47125244 7.13745117 13.85529327 85.011528015
		 18.37811279 6.54520607 84.55604553 16.97741699 5.81606865 89.54592133 17.94360352 -5.7074728 82.96409607
		 18.37811279 6.54520607 84.55604553 16.60961914 -5.86815691 87.040596008 16.97741699 5.81606865 89.54592133
		 8.80426025 -10.94425583 78.3240509 17.94360352 -5.7074728 82.96409607 8.09564209 -10.97508717 82.42089081
		 16.60961914 -5.86815691 87.040596008 6.83300781 -11.83711147 153.014938354 8.65771484 -9.4216404 152.62583923
		 8.23858643 -11.32688713 162.32060242 10.14178467 -7.48782444 162.79693604 6.83300781 -11.83711147 153.014938354
		 3.12768555 -12.53290462 154.64529419 0 -13.4553299 150.92666626 0 -13.21003628 154.65602112
		 8.65771484 -9.4216404 152.62583923 10.53601074 -2.46816564 159.45747375 10.14178467 -7.48782444 162.79693604
		 10.72491455 -1.93764329 163.50354004 1.58380115 8.36008835 78.039558411 3.60095191 6.64142323 74.47633362
		 1.84851074 -3.60659981 75.48327637 3.21588135 -2.42819715 74.43054962 -13.32946682 2.72491717 168.68161011
		 -11.36437988 3.32235837 168.74110413 -14.15423584 3.91688991 166.57754517 -11.42651367 5.140769 166.48936462
		 -10.87017822 2.96460485 159.93466187 -13.4101572 2.020276785 160.3782959;
	setAttr ".vt[2822:2987]" -11.42651367 5.140769 166.48936462 -14.15423584 3.91688991 166.57754517
		 -13.4101572 2.020276785 160.3782959 -10.87017822 2.96460485 159.93466187 -11.092955589 -1.11077046 159.19769287
		 -10.38916016 -0.91460484 159.011993408 0 5.49158335 178.85134888 0 12.28084278 170.20411682
		 -11.11749268 4.60984516 176.3394928 -11.47424316 10.59647274 168.54026794 0 12.28084278 170.20411682
		 0 10.68899632 159.74467468 -11.47424316 10.59647274 168.54026794 -10.84747314 9.078814507 160.91529846
		 -8.65771484 -9.4216404 152.62583923 0 -10.64536858 149.44366455 -6.83300781 -11.83711147 153.014938354
		 0 -13.4553299 150.92666626 -10.84686279 -5.55401039 175.14750671 0 -5.97735786 177.47706604
		 -11.11749268 4.60984516 176.3394928 0 5.49158335 178.85134888 0 -11.67099285 173.3621521
		 0 -5.97735786 177.47706604 -8.86517334 -10.50799561 171.62628174 -10.84686279 -5.55401039 175.14750671
		 -8.23858643 -11.32688713 162.32060242 0 -12.71749306 162.14440918 -8.86517334 -10.50799561 171.62628174
		 0 -11.67099285 173.3621521 -10.84747314 9.078814507 160.91529846 -6.6427002 6.14454269 155.08543396
		 -9.84100342 -3.19913745 154.51304626 -5.45410156 -5.092852592 151.6153717 -10.84686279 -5.55401039 175.14750671
		 -10.14178467 -7.48782444 162.79693604 -8.86517334 -10.50799561 171.62628174 -8.23858643 -11.32688713 162.32060242
		 -10.84747314 9.078814507 160.91529846 0 10.68899632 159.74467468 -6.6427002 6.14454269 155.08543396
		 0 8.39335155 155.094116211 -8.65771484 -9.4216404 152.62583923 -5.45410156 -5.092852592 151.6153717
		 0 -10.64536858 149.44366455 0 -7.339499 150.27394104 -7.043579102 7.378088 147.53623962
		 -8.29772949 7.41380548 146.64923096 -6.8562007 -2.72597241 142.75202942 -7.35900831 -3.51028585 142.30940247
		 0 10.5966711 147.71418762 0 10.79074955 146.84706116 -7.043579102 7.378088 147.53623962
		 -8.29772949 7.41380548 146.64923096 -6.21179199 -2.69480491 142.52046204 -5.055603027 -4.050958633 140.98173523
		 0 -4.79941654 142.57102966 0 -5.84168053 139.68997192 0 12.36274719 147.41590881
		 0 14.65932083 140.80989075 -6.97540283 9.70086384 147.25073242 -8.33746338 14.84312439 140.62487793
		 0 14.65932083 140.80989075 0 16.62279129 133.42442322 -8.33746338 14.84312439 140.62487793
		 -8.83081055 16.72996521 133.53860474 -8.87011719 16.15712738 124.5613327 0 16.067396164 124.14888
		 -6.47241163 11.31961441 113.72847748 0 12.40099144 113.87462616 0 12.40099144 113.87462616
		 0 12.64225388 105.30664825 -6.47241163 11.31961441 113.72847748 -6.72656202 11.127285 105.15606689
		 0 -11.84622288 123.17977142 0 -9.61139107 130.16029358 -5.60333252 -11.0080633163 123.83575439
		 -5.90441895 -9.3129425 130.0041809082 -5.60333252 -11.0080633163 123.83575439 -5.60333252 -9.77701187 121.50749969
		 0 -11.84622288 123.17977142 0 -10.28460503 121.19419861 -5.60333252 -9.77701187 121.50749969
		 -4.32489014 -10.16953564 112.49734497 0 -10.28460503 121.19419861 0 -11.015911102 112.28669739
		 -4.32489014 -10.16953564 112.49734497 -3.9037478 -10.64240646 102.70689392 0 -11.015911102 112.28669739
		 0 -11.25376797 102.55545044 0 12.64225388 105.30664825 0 12.99118042 97.68334198
		 -6.72656202 11.127285 105.15606689 -6.99224854 11.30022717 97.49239349 -6.99224854 11.30022717 97.49239349
		 0 12.99118042 97.68334198 -7.020812988 12.98141479 92.9118576 0 14.0031776428 93.13626099
		 -7.13745117 13.85529327 85.011528015 0 14.8463192 84.54638672 -6.77862549 13.98077297 79.47125244
		 0 14.069608688 78.74694824 -3.9037478 -10.64240646 102.70689392 -4.26489258 -11.4436264 91.52280426
		 0 -11.25376797 102.55545044 0 -11.82662773 91.21161652 0 -11.82662773 91.21161652
		 -4.26489258 -11.4436264 91.52280426 0 -9.54583645 81.41249847 -7.1998291 -10.04049778 82.54538727
		 -7.1998291 -9.085627556 82.54538727 -8.19421387 -5.73058128 77.96364594 0 -8.61357307 81.41249847
		 0 -4.79577732 75.7881546 -10.72491455 -1.93764329 163.50354004 -10.14178467 -7.48782444 162.79693604
		 -10.91375732 -1.40712094 167.54963684 -10.84686279 -5.55401039 175.14750671 -10.84686279 -5.55401039 175.14750671
		 -11.11749268 4.60984516 176.3394928 -10.91375732 -1.40712094 167.54963684 -11.36437988 3.32235837 168.74110413
		 -11.11749268 4.60984516 176.3394928 -11.47424316 10.59647274 168.54026794 -11.36437988 3.32235837 168.74110413
		 -11.42651367 5.140769 166.48936462 -11.47424316 10.59647274 168.54026794 -10.84747314 9.078814507 160.91529846
		 -11.42651367 5.140769 166.48936462 -10.87017822 2.96460485 159.93466187 -16.32495117 -5.62407589 124.12385559
		 -17.51373291 -3.75348592 128.84069824 -18.68145752 4.54329157 123.36599731 -19.64758301 3.42707419 127.96007538
		 -15.18847561 -4.90691805 112.57042694 -16.32495117 -5.62407589 124.12385559 -15.83435059 3.19275045 112.78843689
		 -18.68145752 4.54329157 123.36599731 -15.75811768 2.52242851 104.3806076 -16.78997993 4.63074493 96.15432739
		 -14.76788425 -5.83742428 103.26298523 -16.21759033 -6.33006525 93.033065796 -15.83435059 3.19275045 112.78843689
		 -15.75811768 2.52242851 104.3806076 -15.18847561 -4.90691805 112.57042694 -14.76788425 -5.83742428 103.26298523
		 -16.32495117 -5.62407589 124.12385559 -15.18847561 -4.90691805 112.57042694 -10.74413967 -9.9612751 121.57449341
		 -8.97387695 -9.93630981 112.62955475 -12.41094971 -10.8593502 124.31658173 -15.22229004 -9.52626514 129.87559509
		 -16.32495117 -5.62407589 124.12385559 -17.51373291 -3.75348592 128.84069824 -17.51373291 -3.75348592 128.84069824
		 -20.59979248 -1.46576977 133.029418945 -19.64758301 3.42707419 127.96007538 -20.9119873 3.32788944 131.53511047
		 -19.58300781 -1.57329547 139.65901184 -19.293396 -2.60623765 135.0043640137 -15.6973877 -2.25078058 141.88247681
		 -15.22229004 -9.52626514 129.87559509 -15.22229004 -9.52626514 129.87559509 -19.293396 -2.60623765 135.0043640137
		 -17.51373291 -3.75348592 128.84069824 -20.59979248 -1.46576977 133.029418945;
	setAttr ".vt[2988:3153]" -7.78033447 -3.50344229 141.49485779 -8.29772949 7.41380548 146.64923096
		 -9.62109375 -2.023079157 141.19007874 -10.21374512 6.84176397 145.63499451 -15.18847561 -4.90691805 112.57042694
		 -14.76788425 -5.83742428 103.26298523 -8.97387695 -9.93630981 112.62955475 -8.095214844 -10.46131611 102.81832123
		 -7.35473633 -11.17984581 91.74349213 -8.095214844 -10.46131611 102.81832123 -16.21759033 -6.33006525 93.033065796
		 -14.76788425 -5.83742428 103.26298523 -15.75811768 2.52242851 104.3806076 -15.83435059 3.19275045 112.78843689
		 -6.72656202 11.127285 105.15606689 -6.47241163 11.31961441 113.72847748 -22.27703857 11.84458733 140.32098389
		 -16.84063721 13.94336796 140.10919189 -22.01776123 11.29488277 132.3613739 -18.53637695 12.8819437 131.082870483
		 -18.53637695 12.8819437 131.082870483 -16.84063721 13.94336796 140.10919189 -8.83081055 16.72996521 133.53860474
		 -8.33746338 14.84312439 140.62487793 -6.72656202 11.127285 105.15606689 -6.99224854 11.30022717 97.49239349
		 -15.75811768 2.52242851 104.3806076 -16.78997993 4.63074493 96.15432739 -16.41973877 -3.49706626 82.33260345
		 -16.92523193 5.87797451 83.95496368 -16.39562988 -1.75216138 79.36686707 -17.11157227 5.56237459 79.42021179
		 -6.50524855 11.22046471 79.15821838 -8.86724854 9.1408577 76.77679443 -16.92523193 5.87797451 83.95496368
		 -17.11157227 5.56237459 79.42021179 -16.60961914 -5.86815691 87.040596008 -16.21759033 -6.33006525 93.033065796
		 -16.97741699 5.81606865 89.54592133 -16.78997993 4.63074493 96.15432739 -16.97741699 5.81606865 89.54592133
		 -16.78997993 4.63074493 96.15432739 -7.020812988 12.98141479 92.9118576 -6.99224854 11.30022717 97.49239349
		 -7.020812988 12.98141479 92.9118576 0 14.0031776428 93.13626099 -7.13745117 13.85529327 85.011528015
		 0 14.8463192 84.54638672 -8.09564209 -10.97508717 82.42089081 -7.35473633 -11.17984581 91.74349213
		 -16.60961914 -5.86815691 87.040596008 -16.21759033 -6.33006525 93.033065796 -15.83435059 3.19275045 112.78843689
		 -18.68145752 4.54329157 123.36599731 -6.47241163 11.31961441 113.72847748 -8.87011719 16.15712738 124.5613327
		 -18.53637695 12.8819437 131.082870483 -19.64758301 3.42707419 127.96007538 -22.01776123 11.29488277 132.3613739
		 -20.9119873 3.32788944 131.53511047 0 16.067396164 124.14888 -8.87011719 16.15712738 124.5613327
		 0 16.62279129 133.42442322 -8.83081055 16.72996521 133.53860474 -16.97741699 5.81606865 89.54592133
		 -7.13745117 13.85529327 85.011528015 -18.37811279 6.54520607 84.55604553 -6.77862549 13.98077297 79.47125244
		 -17.94360352 -5.7074728 82.96409607 -16.60961914 -5.86815691 87.040596008 -18.37811279 6.54520607 84.55604553
		 -16.97741699 5.81606865 89.54592133 -8.80426025 -10.94425583 78.3240509 -8.09564209 -10.97508717 82.42089081
		 -17.94360352 -5.7074728 82.96409607 -16.60961914 -5.86815691 87.040596008 -10.14178467 -7.48782444 162.79693604
		 -8.65771484 -9.4216404 152.62583923 -8.23858643 -11.32688713 162.32060242 -6.83300781 -11.83711147 153.014938354
		 0 -12.71749306 162.14440918 -3.53039551 -12.25473022 157.69595337 0 -12.98895454 158.017227173
		 -8.23858643 -11.32688713 162.32060242 -6.83300781 -11.83711147 153.014938354 -3.53039551 -12.25473022 157.69595337
		 -3.3348999 -12.46872902 154.93823242 -8.65771484 -9.4216404 152.62583923 -10.14178467 -7.48782444 162.79693604
		 -10.53601074 -2.46816564 159.45747375 -10.72491455 -1.93764329 163.50354004 -1.58380115 8.36008835 78.039558411
		 -1.84851074 -3.60659981 75.48327637 -3.60095191 6.64142323 74.47633362 -3.21588135 -2.42819715 74.43054962
		 10.84747314 9.078814507 160.91529846 9.84100342 -3.19913745 154.51304626 6.6427002 6.14454269 155.08543396
		 5.45410156 -5.092852592 151.6153717 0 -11.84622288 123.17977142 5.60333252 -11.0080633163 123.83575439
		 0 -9.61139107 130.16029358 5.90441895 -9.3129425 130.0041809082 0 -10.28460503 121.19419861
		 5.60333252 -9.77701187 121.50749969 0 -11.84622288 123.17977142 5.60333252 -11.0080633163 123.83575439
		 0 -11.015911102 112.28669739 4.32489014 -10.16953564 112.49734497 0 -10.28460503 121.19419861
		 5.60333252 -9.77701187 121.50749969 0 -11.25376797 102.55545044 3.9037478 -10.64240646 102.70689392
		 0 -11.015911102 112.28669739 4.32489014 -10.16953564 112.49734497 0 -11.82662773 91.21161652
		 4.26489258 -11.44362545 91.52280426 0 -11.25376797 102.55545044 3.9037478 -10.64240646 102.70689392
		 0 -11.82662773 91.21161652 0 -9.54583645 81.41249847 4.26489258 -11.44362545 91.52280426
		 7.1998291 -10.040492058 82.54538727 -6.25170898 -11.76477432 123.75719452 -6.54345703 -10.072651863 130.27500916
		 -11.62878418 -12.68948174 124.31658173 -14.26294041 -11.35639668 129.87559509 -6.08190918 -11.14801216 121.31909943
		 -6.25170898 -11.76477432 123.75719452 -9.79614258 -11.79140568 121.57449341 -11.62878418 -12.68948174 124.31658173
		 -6.27459717 -11.23531818 116.55934143 -6.52502489 -11.20380211 118.46432495 -8.15869141 -11.52493477 116.31642914
		 -8.40911865 -11.49341774 118.22141266 -4.45220947 -11.55725002 102.65649414 -4.73760986 -11.68622208 112.42604065
		 -7.30578613 -12.28422356 102.81832123 -8.18206787 -11.75412178 112.62955475 -5.0625 -10.98563862 96.9757309
		 -4.9364624 -11.24299908 98.89122009 -6.79736376 -11.67401981 97.12718201 -6.6713872 -11.90006828 99.042671204
		 9.094665527 6.5003233 152.50419617 8.53619385 7.59984541 151.9434967 0 9.34732819 152.88369751
		 0 10.5291338 152.29034424 5.90441895 -9.3129425 130.0041809082 5.60333252 -11.0080633163 123.83575439
		 6.54345703 -10.072651863 130.27500916 6.25170898 -11.76477432 123.75719452 5.60333252 -9.77701187 121.50749969
		 6.08190918 -11.14801216 121.31909943 5.60333252 -11.0080633163 123.83575439 6.25170898 -11.76477432 123.75719452
		 5.60333252 -9.77701187 121.50749969 4.32489014 -10.16953564 112.49734497 6.08190918 -11.14801216 121.31909943
		 4.73760986 -11.68622208 112.42604065 4.32489014 -10.16953564 112.49734497 3.9037478 -10.64240646 102.70689392
		 4.73760986 -11.68622208 112.42604065 4.45220947 -11.55725002 102.65649414 11.59185791 3.5879674 151.21903992
		 9.57507324 -3.76212668 146.086715698 13.12798977 3.8349247 150.052841187;
	setAttr ".vt[3154:3319]" 10.82159424 -4.17371273 145.24676514 0 11.26042175 78.97369385
		 0 14.069608688 78.74694824 6.50524855 11.22046471 79.15821838 6.77862549 13.98077297 79.47125244
		 3.9037478 -10.64240646 102.70689392 4.26489258 -11.44362545 91.52280426 4.45220947 -11.55725002 102.65649414
		 5.12811279 -11.9782114 91.53930664 4.26489258 -11.44362545 91.52280426 7.1998291 -10.040492058 82.54538727
		 5.12811279 -11.9782114 91.53930664 8.09564209 -10.97508717 82.42089081 9.57507324 -3.76212668 146.086715698
		 8.76159668 -7.36653423 142.8237915 10.82159424 -4.17371273 145.24676514 10.66204834 -7.98201561 141.80908203
		 9.094665527 6.5003233 152.50419617 11.59185791 3.5879674 151.21903992 8.53619385 7.59984541 151.9434967
		 13.12798977 3.8349247 150.052841187 6.50524855 11.22046471 79.15821838 6.77862549 13.98077297 79.47125244
		 16.92523193 5.87797451 83.95496368 18.37811279 6.54520607 84.55604553 16.92523193 5.87797451 83.95496368
		 18.37811279 6.54520607 84.55604553 16.41973877 -3.49706626 82.33260345 17.94360352 -5.7074728 82.96409607
		 16.41973877 -3.49706626 82.33260345 17.94360352 -5.7074728 82.96409607 8.19421387 -5.73058128 77.96364594
		 8.80426025 -10.94425583 78.3240509 8.19421387 -5.73058128 77.96364594 8.80426025 -10.94425583 78.3240509
		 7.1998291 -9.085627556 82.54538727 8.09564209 -10.97508717 82.42089081 -9.094665527 6.50032234 152.50418091
		 0 9.34732819 152.88369751 -8.53619385 7.59984493 151.94348145 0 10.5291338 152.29034424
		 -11.59185791 3.58796835 151.21903992 -13.12798977 3.8349247 150.052841187 -9.57507324 -3.76212502 146.086715698
		 -10.82159424 -4.17371082 145.24676514 0 11.26042175 78.97369385 -6.50524855 11.22046471 79.15821838
		 0 14.069608688 78.74694824 -6.77862549 13.98077297 79.47125244 -9.57507324 -3.76212502 146.086715698
		 -10.82159424 -4.17371082 145.24676514 -8.76159668 -7.36652708 142.8237915 -10.66204834 -7.98200798 141.80908203
		 -9.094665527 6.50032234 152.50418091 -8.53619385 7.59984493 151.94348145 -11.59185791 3.58796835 151.21903992
		 -13.12798977 3.8349247 150.052841187 -6.50524855 11.22046471 79.15821838 -16.92523193 5.87797451 83.95496368
		 -6.77862549 13.98077297 79.47125244 -18.37811279 6.54520607 84.55604553 -16.92523193 5.87797451 83.95496368
		 -16.41973877 -3.49706626 82.33260345 -18.37811279 6.54520607 84.55604553 -17.94360352 -5.7074728 82.96409607
		 -8.19421387 -5.73058128 77.96364594 -7.1998291 -9.085627556 82.54538727 -8.80426025 -10.94425583 78.3240509
		 -8.09564209 -10.97508717 82.42089081 -16.41973877 -3.49706626 82.33260345 -8.19421387 -5.73058128 77.96364594
		 -17.94360352 -5.7074728 82.96409607 -8.80426025 -10.94425583 78.3240509 -5.90441895 -9.3129425 130.0041809082
		 -5.72106934 -5.57582664 137.84706116 -6.54345703 -10.072651863 130.27500916 -6.83795118 -6.68176842 139.56420898
		 -5.90441895 -9.3129425 130.0041809082 -6.54345703 -10.072651863 130.27500916 -5.60333252 -11.0080633163 123.83575439
		 -6.25170898 -11.76477432 123.75719452 -5.60333252 -9.77701187 121.50749969 -5.60333252 -11.0080633163 123.83575439
		 -6.08190918 -11.14801216 121.31909943 -6.25170898 -11.76477432 123.75719452 -5.60333252 -9.77701187 121.50749969
		 -6.08190918 -11.14801216 121.31909943 -4.32489014 -10.16953564 112.49734497 -4.73760986 -11.68622208 112.42604065
		 -4.32489014 -10.16953564 112.49734497 -4.73760986 -11.68622208 112.42604065 -3.9037478 -10.64240646 102.70689392
		 -4.45220947 -11.55725002 102.65649414 -3.9037478 -10.64240646 102.70689392 -4.45220947 -11.55725002 102.65649414
		 -4.26489258 -11.4436264 91.52280426 -5.12811279 -11.9782114 91.53930664 -4.26489258 -11.4436264 91.52280426
		 -5.12811279 -11.9782114 91.53930664 -7.1998291 -10.04049778 82.54538727 -8.09564209 -10.97508717 82.42089081
		 8.29772949 7.41380548 146.64923096 7.3671875 8.37777328 148.79954529 0 10.79074955 146.84706116
		 0 10.95079422 149.16270447 0 12.36274719 147.41590881 0 12.23551464 149.73155212
		 6.97540283 9.70086384 147.25073242 7.24218798 9.38940525 149.40104675 10.21374512 6.84176397 145.63499451
		 9.62109375 -2.023079157 141.19007874 9.64215088 5.36779308 147.60710144 8.69744873 -2.83469224 142.6153717
		 10.62683105 6.49594212 146.30253601 10.8885498 5.38266659 147.60310364 10.079711914 -2.46203542 141.84472656
		 9.7911377 -3.055205107 142.93762207 5.72106934 -5.57582664 137.84706116 5.66210938 -6.31770468 140.16786194
		 9.62109375 -2.023079157 141.19007874 8.69744873 -2.83469224 142.6153717 5.72106934 -5.57582664 137.84706116
		 10.079711914 -2.46203542 141.84472656 6.83795118 -6.68165684 139.56416321 9.7911377 -3.055205107 142.93762207
		 10.21374512 6.84176397 145.63499451 9.64215088 5.36779308 147.60710144 8.29772949 7.41380548 146.64923096
		 7.3671875 8.37777328 148.79954529 6.97540283 9.70086384 147.25073242 7.24218798 9.38940525 149.40104675
		 10.62683105 6.49594212 146.30253601 10.8885498 5.38266659 147.60310364 -8.29772949 7.41380548 146.64923096
		 0 10.79074955 146.84706116 -7.3671875 8.37777042 148.79953003 0 10.95079422 149.16270447
		 0 12.36274719 147.41590881 -6.97540283 9.70086384 147.25073242 0 12.23551464 149.73155212
		 -7.24218798 9.38940144 149.40103149 -10.21374512 6.84176397 145.63499451 -9.64215088 5.36778975 147.60710144
		 -9.62109375 -2.023079157 141.19007874 -8.69744873 -2.83469367 142.6153717 -10.62683105 6.49594212 146.30253601
		 -10.079711914 -2.46203494 141.84472656 -10.8885498 5.38266373 147.60310364 -9.7911377 -3.055205584 142.93762207
		 -5.72106934 -5.57582664 137.84706116 -9.62109375 -2.023079157 141.19007874 -5.66210938 -6.31770468 140.16786194
		 -8.69744873 -2.83469367 142.6153717 -5.72106934 -5.57582664 137.84706116 -6.83795118 -6.68176842 139.56420898
		 -10.079711914 -2.46203494 141.84472656 -9.7911377 -3.055205584 142.93762207 -10.21374512 6.84176397 145.63499451
		 -8.29772949 7.41380548 146.64923096 -9.64215088 5.36778975 147.60710144 -7.3671875 8.37777042 148.79953003
		 -6.97540283 9.70086384 147.25073242 -10.62683105 6.49594212 146.30253601 -7.24218798 9.38940144 149.40103149
		 -10.8885498 5.38266373 147.60310364 0 10.95079422 149.16270447;
	setAttr ".vt[3320:3485]" 7.3671875 8.37777328 148.79954529 0 9.34732819 152.88369751
		 9.094665527 6.5003233 152.50419617 0 12.23551464 149.73155212 0 10.5291338 152.29034424
		 7.24218798 9.38940525 149.40104675 8.53619385 7.59984541 151.9434967 8.69744873 -2.83469224 142.6153717
		 9.57507324 -3.76212668 146.086715698 9.64215088 5.36779308 147.60710144 11.59185791 3.5879674 151.21903992
		 9.7911377 -3.055205107 142.93762207 10.8885498 5.38266659 147.60310364 10.82159424 -4.17371273 145.24676514
		 13.12798977 3.8349247 150.052841187 5.66210938 -6.31770468 140.16786194 8.76159668 -7.36653423 142.8237915
		 8.69744873 -2.83469224 142.6153717 9.57507324 -3.76212668 146.086715698 5.66210938 -6.31770468 140.16786194
		 6.83795118 -6.68165684 139.56416321 8.76159668 -7.36653423 142.8237915 10.66204834 -7.98201561 141.80908203
		 6.83795118 -6.68165684 139.56416321 9.7911377 -3.055205107 142.93762207 10.66204834 -7.98201561 141.80908203
		 10.82159424 -4.17371273 145.24676514 7.3671875 8.37777328 148.79954529 9.64215088 5.36779308 147.60710144
		 9.094665527 6.5003233 152.50419617 11.59185791 3.5879674 151.21903992 7.24218798 9.38940525 149.40104675
		 8.53619385 7.59984541 151.9434967 10.8885498 5.38266659 147.60310364 13.12798977 3.8349247 150.052841187
		 0 10.95079422 149.16270447 0 9.34732819 152.88369751 -7.3671875 8.37777042 148.79953003
		 -9.094665527 6.50032234 152.50418091 0 12.23551464 149.73155212 -7.24218798 9.38940144 149.40103149
		 0 10.5291338 152.29034424 -8.53619385 7.59984493 151.94348145 -8.69744873 -2.83469367 142.6153717
		 -9.64215088 5.36778975 147.60710144 -9.57507324 -3.76212502 146.086715698 -11.59185791 3.58796835 151.21903992
		 -9.7911377 -3.055205584 142.93762207 -10.82159424 -4.17371082 145.24676514 -10.8885498 5.38266373 147.60310364
		 -13.12798977 3.8349247 150.052841187 -5.66210938 -6.31770468 140.16786194 -8.69744873 -2.83469367 142.6153717
		 -8.76159668 -7.36652708 142.8237915 -9.57507324 -3.76212502 146.086715698 -6.83795118 -6.68176842 139.56420898
		 -10.66204834 -7.98200798 141.80908203 -9.7911377 -3.055205584 142.93762207 -10.82159424 -4.17371082 145.24676514
		 -5.66210938 -6.31770468 140.16786194 -8.76159668 -7.36652708 142.8237915 -6.83795118 -6.68176842 139.56420898
		 -10.66204834 -7.98200798 141.80908203 -7.3671875 8.37777042 148.79953003 -9.094665527 6.50032234 152.50418091
		 -9.64215088 5.36778975 147.60710144 -11.59185791 3.58796835 151.21903992 -7.24218798 9.38940144 149.40103149
		 -10.8885498 5.38266373 147.60310364 -8.53619385 7.59984493 151.94348145 -13.12798977 3.8349247 150.052841187
		 6.21179199 -2.69480491 142.52046204 7.043579102 7.378088 147.53623962 5.45410156 -5.092852592 151.6153717
		 6.6427002 6.14454269 155.08543396 0 -7.339499 150.27394104 0 -4.79941654 142.57102966
		 5.45410156 -5.092852592 151.6153717 6.21179199 -2.69480491 142.52046204 0 -7.339499 150.27394104
		 -5.45410156 -5.092852592 151.6153717 0 -4.79941654 142.57102966 -6.21179199 -2.69480491 142.52046204
		 -6.6427002 6.14454269 155.08543396 -7.043579102 7.378088 147.53623962 -5.45410156 -5.092852592 151.6153717
		 -6.21179199 -2.69480491 142.52046204 -6.6427002 6.14454269 155.08543396 0 8.39335155 155.094116211
		 -7.043579102 7.378088 147.53623962 0 10.5966711 147.71418762 6.6427002 6.14454269 155.08543396
		 7.043579102 7.378088 147.53623962 0 8.39335155 155.094116211 0 10.5966711 147.71418762
		 15.22229004 -9.52626514 129.87559509 14.26294041 -11.35639668 129.87559509 12.41094971 -10.85935116 124.31658173
		 11.62878418 -12.68948174 124.31658173 10.74413967 -9.9612751 121.57449341 12.41094971 -10.85935116 124.31658173
		 9.79614258 -11.79140568 121.57449341 11.62878418 -12.68948174 124.31658173 10.74413967 -9.9612751 121.57449341
		 9.79614258 -11.79140568 121.57449341 8.97387695 -9.93630981 112.62955475 8.18206787 -11.75412178 112.62955475
		 8.97387695 -9.93630981 112.62955475 8.18206787 -11.75412178 112.62955475 8.095214844 -10.46131611 102.81832123
		 7.30578613 -12.28422356 102.81832123 8.095214844 -10.46131611 102.81832123 7.30578613 -12.28422356 102.81832123
		 7.35473633 -11.17984581 91.74349213 7.32379198 -12.44577789 91.74349213 11.37585354 -7.25299883 139.61248779
		 11.011779785 -8.15126705 140.24563599 15.21612644 -9.97476864 135.50900269 15.065490723 -11.29070187 135.85388184
		 6.83795118 -6.68165684 139.56416321 5.72106934 -5.57582664 137.84706116 6.54345703 -10.072651863 130.27500916
		 5.90441895 -9.3129425 130.0041809082 -11.37585354 -7.2530055 139.61248779 -15.21606445 -9.97478199 135.5090332
		 -11.01171875 -8.15135574 140.24568176 -15.065490723 -11.29071331 135.85388184 -15.22229004 -9.52626514 129.87559509
		 -12.41094971 -10.8593502 124.31658173 -14.26294041 -11.35639668 129.87559509 -11.62878418 -12.68948174 124.31658173
		 -10.74413967 -9.9612751 121.57449341 -9.79614258 -11.79140568 121.57449341 -12.41094971 -10.8593502 124.31658173
		 -11.62878418 -12.68948174 124.31658173 -10.74413967 -9.9612751 121.57449341 -8.97387695 -9.93630981 112.62955475
		 -9.79614258 -11.79140568 121.57449341 -8.18206787 -11.75412178 112.62955475 -8.97387695 -9.93630981 112.62955475
		 -8.095214844 -10.46131611 102.81832123 -8.18206787 -11.75412178 112.62955475 -7.30578613 -12.28422356 102.81832123
		 -8.095214844 -10.46131611 102.81832123 -7.35473633 -11.17984581 91.74349213 -7.30578613 -12.28422356 102.81832123
		 -7.32379198 -12.44577789 91.74349213 5.72106934 -5.57582664 137.84706116 11.37585354 -7.25299883 139.61248779
		 15.22229004 -9.52626514 129.87559509 15.21612644 -9.97476864 135.50900269 5.72106934 -5.57582664 137.84706116
		 6.83795118 -6.68165684 139.56416321 11.37585354 -7.25299883 139.61248779 11.011779785 -8.15126705 140.24563599
		 14.26294041 -11.35639668 129.87559509 15.065490723 -11.29070187 135.85388184 6.83795118 -6.68165684 139.56416321
		 11.011779785 -8.15126705 140.24563599 15.22229004 -9.52626514 129.87559509 15.21612644 -9.97476864 135.50900269
		 14.26294041 -11.35639668 129.87559509 15.065490723 -11.29070187 135.85388184 -5.72106934 -5.57582664 137.84706116
		 -15.22229004 -9.52626514 129.87559509 -11.37585354 -7.2530055 139.61248779;
	setAttr ".vt[3486:3651]" -15.21606445 -9.97478199 135.5090332 -15.22229004 -9.52626514 129.87559509
		 -14.26294041 -11.35639668 129.87559509 -15.21606445 -9.97478199 135.5090332 -15.065490723 -11.29071331 135.85388184
		 -5.72106934 -5.57582664 137.84706116 -11.37585354 -7.2530055 139.61248779 -6.83795118 -6.68176842 139.56420898
		 -11.01171875 -8.15135574 140.24568176 0 -13.21003628 154.65602112 -3.3348999 -12.46872902 154.93823242
		 0 -13.4553299 150.92666626 -6.83300781 -11.83711147 153.014938354 0 -13.21003628 154.65602112
		 3.12768555 -12.53290462 154.64529419 0 -12.98895454 158.017227173 3.61614966 -12.24083805 157.67802429
		 -3.53039551 -12.25473022 157.69595337 -3.3348999 -12.46872902 154.93823242 0 -12.98895454 158.017227173
		 0 -13.21003628 154.65602112 3.61614966 -12.24083805 157.67802429 0 -12.71749306 162.14440918
		 0 -12.98895454 158.017227173 8.23858643 -11.32688713 162.32060242 3.61614966 -12.24083805 157.67802429
		 6.83300781 -11.83711147 153.014938354 3.12768555 -12.53290462 154.64529419 0 -8.61357307 81.41249847
		 0 -9.54583645 81.41249847 -7.1998291 -9.085627556 82.54538727 -7.1998291 -10.04049778 82.54538727
		 0 -8.61357307 81.41249847 7.1998291 -9.085627556 82.54538727 0 -9.54583645 81.41249847
		 7.1998291 -10.040492058 82.54538727 8.85430908 -10.24903584 170.75976563 0 -11.35918236 169.33688354
		 8.40478516 -12.17559814 170.21508789 0 -12.26982021 168.89720154 9.39343262 -10.14352322 166.70916748
		 9.95697021 -10.081291199 169.47897339 8.53100586 -12.3062458 167.76727295 8.40478516 -12.17559814 170.21508789
		 8.40478516 -12.17559814 170.21508789 0 -12.26982021 168.89720154 8.53100586 -12.3062458 167.76727295
		 0 -12.47656345 166.8399353 0 -12.47656345 166.8399353 0 -11.31041431 166.012619019
		 8.53100586 -12.3062458 167.76727295 9.39343262 -10.14352322 166.70916748 0 -12.26982021 168.89720154
		 0 -11.35918236 169.33688354 -8.40478516 -12.17559814 170.21508789 -8.85430908 -10.24903584 170.75976563
		 -8.40478516 -12.17559814 170.21508789 -9.95697021 -10.081291199 169.47897339 -8.53100586 -12.3062458 167.76727295
		 -9.39343262 -10.14352322 166.70916748 0 -12.47656345 166.8399353 0 -12.26982021 168.89720154
		 -8.53100586 -12.3062458 167.76727295 -8.40478516 -12.17559814 170.21508789 0 -12.47656345 166.8399353
		 -8.53100586 -12.3062458 167.76727295 0 -11.31041431 166.012619019 -9.39343262 -10.14352322 166.70916748
		 -2.9944458 -12.53728008 165.84613037 -2.98583984 -12.48336887 167.16557312 -5.53692627 -12.012129784 165.85058594
		 -5.52099609 -11.95978069 167.16943359 -2.98583984 -12.48336887 167.16557312 -2.83563232 -9.99975586 167.18354797
		 -5.52099609 -11.95978069 167.16943359 -5.37084961 -9.4761734 167.18742371 -5.38635254 -9.52121735 165.87129211
		 -2.84381104 -10.046366692 165.86685181 -5.53692627 -12.012129784 165.85058594 -2.9944458 -12.53728008 165.84613037
		 -2.9944458 -12.53728008 165.84613037 -2.84381104 -10.046366692 165.86685181 -2.98583984 -12.48336887 167.16557312
		 -2.83563232 -9.99975586 167.18354797 -5.53692627 -12.012129784 165.85058594 -5.52099609 -11.95978069 167.16943359
		 -5.38635254 -9.52121735 165.87129211 -5.37084961 -9.4761734 167.18742371 5.52099609 -11.95978069 167.16943359
		 2.98583984 -12.48336887 167.16557312 5.53692627 -12.012129784 165.85058594 2.9944458 -12.53728008 165.84613037
		 5.37084961 -9.4761734 167.18742371 2.83563232 -9.99975586 167.18354797 5.52099609 -11.95978069 167.16943359
		 2.98583984 -12.48336887 167.16557312 5.38635254 -9.52121735 165.87129211 5.53692627 -12.012129784 165.85058594
		 2.84381104 -10.046366692 165.86685181 2.9944458 -12.53728008 165.84613037 2.9944458 -12.53728008 165.84613037
		 2.98583984 -12.48336887 167.16557312 2.84381104 -10.046366692 165.86685181 2.83563232 -9.99975586 167.18354797
		 5.37084961 -9.4761734 167.18742371 5.52099609 -11.95978069 167.16943359 5.38635254 -9.52121735 165.87129211
		 5.53692627 -12.012129784 165.85058594 8.84118652 -0.47068092 9.51464844 8.84118652 -2.56631684 10.19976425
		 11.55401611 -0.79951423 10.11877823 11.55401611 -2.89514995 10.80389214 14.21228123 -0.051237822 9.35126495
		 11.55401611 -0.79951423 10.11877823 14.21228123 -2.14687347 10.036380768 11.55401611 -2.89514995 10.80389214
		 -8.84118652 -0.47068092 9.51464844 -11.55401611 -0.79951423 10.11877823 -8.84118652 -2.56631684 10.19976425
		 -11.55401611 -2.89514995 10.80389214 -14.21228123 -0.051237822 9.35126495 -14.21228123 -2.14687347 10.036380768
		 -11.55401611 -0.79951423 10.11877823 -11.55401611 -2.89514995 10.80389214 23.054992676 4.69977665 145.39143372
		 21.49353027 4.4030695 145.68717957 22.21838379 2.39058805 144.94552612 21.19537354 2.95990515 145.40008545
		 17.10180664 5.49277306 146.90170288 19.45239258 4.76584673 146.17379761 23.054992676 4.69977665 145.39143372
		 21.49353027 4.4030695 145.68717957 17.10180664 5.49277306 146.90170288 16.82495117 2.9968133 146.45851135
		 19.45239258 4.76584673 146.17379761 19.37127686 3.17254257 145.98921204 16.82495117 2.9968133 146.45851135
		 22.21838379 2.39058805 144.94552612 19.37127686 3.17254257 145.98921204 21.19537354 2.95990515 145.40008545
		 -16.82495117 2.9968133 146.45851135 -19.37127686 3.17254257 145.98921204 -22.21838379 2.39058805 144.94552612
		 -21.19537354 2.95990515 145.40008545 -17.10180664 5.49277306 146.90170288 -19.45239258 4.76584435 146.17379761
		 -16.82495117 2.9968133 146.45851135 -19.37127686 3.17254257 145.98921204 -17.10180664 5.49277306 146.90170288
		 -23.054992676 4.69977665 145.39143372 -19.45239258 4.76584435 146.17379761 -21.49353027 4.4030695 145.68717957
		 -23.054992676 4.69977665 145.39143372 -22.21838379 2.39058805 144.94552612 -21.49353027 4.4030695 145.68717957
		 -21.19537354 2.95990515 145.40008545 21.49353027 4.4030695 145.68717957 21.6652832 4.16974115 146.43345642
		 21.19537354 2.95990515 145.40008545 21.36712646 2.72657681 146.1463623 19.45239258 4.76584673 146.17379761
		 19.62414551 4.53251839 146.92007446 21.49353027 4.4030695 145.68717957 21.6652832 4.16974115 146.43345642
		 19.45239258 4.76584673 146.17379761 19.37127686 3.17254257 145.98921204;
	setAttr ".vt[3652:3817]" 19.62414551 4.53251839 146.92007446 19.54302979 2.93921471 146.73548889
		 21.19537354 2.95990515 145.40008545 21.36712646 2.72657681 146.1463623 19.37127686 3.17254257 145.98921204
		 19.54302979 2.93921471 146.73548889 -21.19537354 2.95990515 145.40008545 -19.37127686 3.17254257 145.98921204
		 -21.36712646 2.72657657 146.1463623 -19.54302979 2.93921423 146.73548889 -19.45239258 4.76584435 146.17379761
		 -19.62414551 4.53251553 146.92007446 -19.37127686 3.17254257 145.98921204 -19.54302979 2.93921423 146.73548889
		 -19.45239258 4.76584435 146.17379761 -21.49353027 4.4030695 145.68717957 -19.62414551 4.53251553 146.92007446
		 -21.6652832 4.16974115 146.43345642 -21.49353027 4.4030695 145.68717957 -21.19537354 2.95990515 145.40008545
		 -21.6652832 4.16974115 146.43345642 -21.36712646 2.72657657 146.1463623 2.96453857 -6.2468338 138.96589661
		 3.93054199 -6.57677269 138.40640259 5.55786133 -4.40005779 141.18692017 7.35900831 -3.51028848 142.30941772
		 -2.96453857 -6.2468338 138.96589661 -5.55786133 -4.40005779 141.18692017 -3.93054199 -6.57677221 138.40637207
		 -7.35900831 -3.51028585 142.30940247 -5.055603027 -4.050958633 140.98173523 -6.21179199 -2.69480491 142.52046204
		 -5.55786133 -4.40005779 141.18692017 -6.8562007 -2.72597241 142.75202942 5.055603027 -4.050958633 140.98173523
		 5.55786133 -4.40005779 141.18692017 6.21179199 -2.69480491 142.52046204 6.8562007 -2.72597289 142.75202942
		 2.71624756 -5.81015301 138.73068237 2.96453857 -6.2468338 138.96589661 5.055603027 -4.050958633 140.98173523
		 5.55786133 -4.40005779 141.18692017 4.025268555 -5.89981365 137.835495 7.78033447 -3.50344229 141.49485779
		 3.93054199 -6.57677269 138.40640259 7.35900831 -3.51028848 142.30941772 -2.71624756 -5.81015301 138.73068237
		 -5.055603027 -4.050958633 140.98173523 -2.96453857 -6.2468338 138.96589661 -5.55786133 -4.40005779 141.18692017
		 -4.025268555 -5.89981365 137.835495 -3.93054199 -6.57677221 138.40637207 -7.78033447 -3.50344229 141.49485779
		 -7.35900831 -3.51028585 142.30940247 -3.93054199 -6.57677221 138.40637207 -4.025268555 -5.89981365 137.835495
		 0 -7.29013968 136.57641602 0 -7.042589188 136.085586548 0 -6.87503386 138.049423218
		 -2.96453857 -6.2468338 138.96589661 0 -7.29013968 136.57641602 -3.93054199 -6.57677221 138.40637207
		 0 -6.4042263 137.93087769 -2.71624756 -5.81015301 138.73068237 0 -6.87503386 138.049423218
		 -2.96453857 -6.2468338 138.96589661 2.96453857 -6.2468338 138.96589661 2.71624756 -5.81015301 138.73068237
		 0 -6.87503386 138.049423218 0 -6.4042263 137.93087769 3.93054199 -6.57677269 138.40640259
		 2.96453857 -6.2468338 138.96589661 0 -7.29013968 136.57641602 0 -6.87503386 138.049423218
		 0 -7.042589188 136.085586548 4.025268555 -5.89981365 137.835495 0 -7.29013968 136.57641602
		 3.93054199 -6.57677269 138.40640259 -14.26294041 -11.35639668 129.87559509 -6.83795118 -6.68176842 139.56420898
		 -11.21612644 -9.33564377 135.0028686523 -10.12036133 -8.64968777 136.42463684 -6.83795118 -6.68176842 139.56420898
		 -11.01171875 -8.15135574 140.24568176 -10.12036133 -8.64968777 136.42463684 -11.43139744 -9.21827412 137.70939636
		 -11.01171875 -8.15135574 140.24568176 -15.065490723 -11.29071331 135.85388184 -11.43139744 -9.21827412 137.70939636
		 -12.52715969 -9.90423012 136.28762817 -14.26294041 -11.35639668 129.87559509 -11.21612644 -9.33564377 135.0028686523
		 -15.065490723 -11.29071331 135.85388184 -12.52715969 -9.90423012 136.28762817 -4.73760986 -11.68622208 112.42604065
		 -6.08190918 -11.14801216 121.31909943 -6.27459717 -11.23531818 116.55934143 -6.52502489 -11.20380211 118.46432495
		 -9.79614258 -11.79140568 121.57449341 -8.40911865 -11.49341774 118.22141266 -6.08190918 -11.14801216 121.31909943
		 -6.52502489 -11.20380211 118.46432495 -8.18206787 -11.75412178 112.62955475 -8.15869141 -11.52493477 116.31642914
		 -9.79614258 -11.79140568 121.57449341 -8.40911865 -11.49341774 118.22141266 -4.73760986 -11.68622208 112.42604065
		 -6.27459717 -11.23531818 116.55934143 -8.18206787 -11.75412178 112.62955475 -8.15869141 -11.52493477 116.31642914
		 -4.45220947 -11.55725002 102.65649414 -4.9364624 -11.24299908 98.89122009 -5.12811279 -11.9782114 91.53930664
		 -5.0625 -10.98563862 96.9757309 -7.30578613 -12.28422356 102.81832123 -6.6713872 -11.90006828 99.042671204
		 -4.45220947 -11.55725002 102.65649414 -4.9364624 -11.24299908 98.89122009 -7.32379198 -12.44577789 91.74349213
		 -6.79736376 -11.67401981 97.12718201 -7.30578613 -12.28422356 102.81832123 -6.6713872 -11.90006828 99.042671204
		 -7.32379198 -12.44577789 91.74349213 -5.12811279 -11.9782114 91.53930664 -6.79736376 -11.67401981 97.12718201
		 -5.0625 -10.98563862 96.9757309 -8.85430908 -10.24903584 170.75976563 0 -11.31041431 166.012619019
		 -9.95697021 -10.081291199 169.47897339 -9.39343262 -10.14352322 166.70916748 7.53118896 -13.43244934 1.27391994
		 7.46295166 -12.86569977 3.359061 7.3850708 -7.90611267 1.27391994 7.31982422 -8.038384438 4.66047716
		 7.28564501 -4.14485455 1.27391994 7.28564501 -4.14485455 1.27391994 7.28564501 -4.14485455 0.0011370778
		 7.3850708 -7.90611267 1.27391994 7.3850708 -7.90611267 0.001137197 7.53118896 -13.43244934 1.27391994
		 7.53118896 -13.43244934 0.001137197 16.78833008 -13.18771362 1.27391994 16.78833008 -13.18771362 0.001137197
		 16.64227295 -7.66137934 1.27391994 16.64227295 -7.66137934 0.001137197 16.54278564 -3.90012121 1.27391994
		 16.54278564 -3.90012121 0.0011370778 -16.44567871 -7.80275536 3.79991484 -16.54278564 -3.90012121 1.27391994
		 -16.64227295 -7.66137934 1.27391994 -16.66723633 -12.63362885 2.68204689 -16.78833008 -13.18771362 1.27391994
		 -7.28564501 -4.14485455 1.27391994 -7.31982422 -8.038384438 4.66047716 -7.3850708 -7.90611267 1.27391994
		 -7.46295166 -12.86569977 3.359061 -7.53118896 -13.43244934 1.27391994 7.3850708 -7.90611267 0.001137197
		 16.78833008 -13.18771362 0.001137197 7.53118896 -13.43244934 0.001137197 16.64227295 -7.66137934 0.001137197
		 7.28564501 -4.14485455 0.0011370778 16.54278564 -3.90012121 0.0011370778 7.41802979 8.6576376 0.0011369586
		 15.73346043 8.9023695 0.0011369586 -16.78833008 -13.18771362 0.001137197;
	setAttr ".vt[3818:3836]" -7.3850708 -7.90611267 0.001137197 -7.53118896 -13.43244934 0.001137197
		 -16.64227295 -7.66137934 0.001137197 -7.28564501 -4.14485455 0.0011370778 -16.54278564 -3.90012121 0.0011370778
		 -7.41802979 8.6576376 0.0011369586 -15.73346043 8.9023695 0.0011369586 -7.28564501 -4.14485455 1.27391994
		 -7.3850708 -7.90611267 1.27391994 -7.28564501 -4.14485455 0.0011370778 -7.3850708 -7.90611267 0.001137197
		 -7.53118896 -13.43244934 1.27391994 -7.53118896 -13.43244934 0.001137197 -16.64227295 -7.66137934 0.001137197
		 -16.54278564 -3.90012121 1.27391994 -16.54278564 -3.90012121 0.0011370778 -16.64227295 -7.66137934 1.27391994
		 -16.78833008 -13.18771362 0.001137197 -16.78833008 -13.18771362 1.27391994;
	setAttr -s 4625 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 0 0 3 4 0 4 5 0 5 3 0 6 7 0 7 8 0 8 6 0
		 9 10 0 10 11 0 11 9 0 12 13 0 13 14 0 14 12 0 15 16 0 16 17 0 17 15 0 18 19 0 19 20 0
		 20 18 0 21 22 0 22 23 0 23 21 0 24 25 0 25 26 0 26 24 0 27 28 0 28 29 0 29 27 0 30 31 0
		 31 32 0 32 30 0 33 34 0 34 35 0 35 33 0 36 37 0 37 38 0 38 36 0 39 40 0 40 41 0 41 39 0
		 42 43 0 43 44 0 44 42 0 45 46 0 46 47 0 47 45 0 48 49 0 49 50 0 50 48 0 51 52 0 52 53 0
		 53 51 0 54 55 0 55 56 0 56 54 0 57 58 0 58 59 0 59 57 0 60 61 0 61 62 0 62 60 0 63 64 0
		 64 65 0 65 63 0 66 67 0 67 68 0 68 66 0 69 70 0 70 71 0 71 69 0 72 73 0 73 74 0 74 72 0
		 75 76 0 76 77 0 77 75 0 78 79 0 79 80 0 80 78 0 81 82 0 82 83 0 83 81 0 84 85 0 85 86 0
		 86 84 0 87 88 0 88 89 0 89 87 0 90 91 0 91 92 0 92 90 0 93 94 0 94 95 0 95 93 0 96 97 0
		 97 98 0 98 96 0 99 100 0 100 101 0 101 99 0 102 103 0 103 104 0 104 102 0 105 106 0
		 106 107 0 107 105 0 108 109 0 109 110 0 110 108 0 111 112 0 112 113 0 113 111 0 114 115 0
		 115 116 0 116 114 0 117 118 0 118 119 0 119 117 0 120 121 0 121 122 0 122 120 0 123 124 0
		 124 125 0 125 123 0 126 127 0 127 128 0 128 126 0 129 130 0 130 131 0 131 129 0 132 133 0
		 133 134 0 134 132 0 135 136 0 136 137 0 137 135 0 138 139 0 139 140 0 140 138 0 141 142 0
		 142 143 0 143 141 0 144 145 0 145 146 0 146 144 0 147 148 0 148 149 0 149 147 0 150 151 0
		 151 152 0 152 150 0 153 154 0 154 155 0 155 153 0 156 157 0 157 158 0 158 156 0 159 160 0
		 160 161 0 161 159 0 162 163 0 163 164 0 164 162 0 165 166 0;
	setAttr ".ed[166:331]" 166 167 0 167 165 0 168 169 0 169 170 0 170 168 0 171 172 0
		 172 173 0 173 171 0 174 175 0 175 176 0 176 174 0 177 178 0 178 179 0 179 177 0 180 181 0
		 181 182 0 182 180 0 183 184 0 184 185 0 185 183 0 186 187 0 187 188 0 188 186 0 189 190 0
		 190 191 0 191 189 0 192 193 0 193 194 0 194 192 0 195 196 0 196 197 0 197 195 0 198 199 0
		 199 200 0 200 198 0 201 202 0 202 203 0 203 201 0 204 205 0 205 206 0 206 204 0 207 208 0
		 208 209 0 209 207 0 210 211 0 211 212 0 212 210 0 213 214 0 214 215 0 215 213 0 216 217 0
		 217 218 0 218 216 0 219 220 0 220 221 0 221 219 0 222 223 0 223 224 0 224 222 0 225 226 0
		 226 227 0 227 225 0 228 229 0 229 230 0 230 228 0 231 232 0 232 233 0 233 231 0 234 235 0
		 235 236 0 236 234 0 237 238 0 238 239 0 239 237 0 240 241 0 241 242 0 242 240 0 243 244 0
		 244 245 0 245 243 0 246 247 0 247 248 0 248 246 0 249 250 0 250 251 0 251 249 0 252 253 0
		 253 254 0 254 252 0 255 256 0 256 257 0 257 255 0 258 259 0 259 260 0 260 258 0 261 262 0
		 262 263 0 263 261 0 264 265 0 265 266 0 266 264 0 267 268 0 268 269 0 269 267 0 270 271 0
		 271 272 0 272 270 0 273 274 0 274 275 0 275 273 0 276 277 0 277 278 0 278 276 0 279 280 0
		 280 281 0 281 279 0 282 283 0 283 284 0 284 282 0 285 286 0 286 287 0 287 285 0 288 289 0
		 289 290 0 290 288 0 291 292 0 292 293 0 293 291 0 294 295 0 295 296 0 296 294 0 297 298 0
		 298 299 0 299 297 0 300 301 0 301 302 0 302 300 0 303 304 0 304 305 0 305 303 0 306 307 0
		 307 308 0 308 306 0 309 310 0 310 311 0 311 309 0 312 313 0 313 314 0 314 312 0 315 316 0
		 316 317 0 317 315 0 318 319 0 319 320 0 320 318 0 321 322 0 322 323 0 323 321 0 324 325 0
		 325 326 0 326 324 0 327 328 0 328 329 0 329 327 0 330 331 0 331 332 0;
	setAttr ".ed[332:497]" 332 330 0 333 334 0 334 335 0 335 333 0 336 337 0 337 338 0
		 338 336 0 339 340 0 340 341 0 341 339 0 342 343 0 343 344 0 344 342 0 345 346 0 346 347 0
		 347 345 0 348 349 0 349 350 0 350 348 0 351 352 0 352 353 0 353 351 0 354 355 0 355 356 0
		 356 354 0 357 358 0 358 359 0 359 357 0 360 361 0 361 362 0 362 360 0 363 364 0 364 365 0
		 365 363 0 366 367 0 367 368 0 368 366 0 369 370 0 370 371 0 371 369 0 372 373 0 373 374 0
		 374 372 0 375 376 0 376 377 0 377 375 0 378 379 0 379 380 0 380 378 0 381 382 0 382 383 0
		 383 381 0 384 385 0 385 386 0 386 384 0 387 388 0 388 389 0 389 387 0 390 391 0 391 392 0
		 392 390 0 393 394 0 394 395 0 395 393 0 396 397 0 397 398 0 398 396 0 399 400 0 400 401 0
		 401 399 0 402 403 0 403 404 0 404 402 0 405 406 0 406 407 0 407 405 0 408 409 0 409 410 0
		 410 408 0 411 412 0 412 413 0 413 411 0 414 415 0 415 416 0 416 414 0 417 418 0 418 419 0
		 419 417 0 420 421 0 421 422 0 422 420 0 423 424 0 424 425 0 425 423 0 426 427 0 427 428 0
		 428 426 0 429 430 0 430 431 0 431 429 0 432 433 0 433 434 0 434 432 0 435 436 0 436 437 0
		 437 435 0 438 439 0 439 440 0 440 438 0 441 442 0 442 443 0 443 441 0 444 445 0 445 446 0
		 446 444 0 447 448 0 448 449 0 449 447 0 450 451 0 451 452 0 452 450 0 453 454 0 454 455 0
		 455 453 0 456 457 0 457 458 0 458 456 0 459 460 0 460 461 0 461 459 0 462 463 0 463 464 0
		 464 462 0 465 466 0 466 467 0 467 465 0 468 469 0 469 470 0 470 468 0 471 472 0 472 473 0
		 473 471 0 474 475 0 475 476 0 476 474 0 477 478 0 478 479 0 479 477 0 480 481 0 481 482 0
		 482 480 0 483 484 0 484 485 0 485 483 0 486 487 0 487 488 0 488 486 0 489 490 0 490 491 0
		 491 489 0 492 493 0 493 494 0 494 492 0 495 496 0 496 497 0 497 495 0;
	setAttr ".ed[498:663]" 498 499 0 499 500 0 500 498 0 501 502 0 502 503 0 503 501 0
		 504 505 0 505 506 0 506 504 0 507 508 0 508 509 0 509 507 0 510 511 0 511 512 0 512 510 0
		 513 514 0 514 515 0 515 513 0 516 517 0 517 518 0 518 516 0 519 520 0 520 521 0 521 519 0
		 522 523 0 523 524 0 524 522 0 525 526 0 526 527 0 527 525 0 528 529 0 529 530 0 530 528 0
		 531 532 0 532 533 0 533 531 0 534 535 0 535 536 0 536 534 0 537 538 0 538 539 0 539 537 0
		 540 541 0 541 542 0 542 540 0 543 544 0 544 545 0 545 543 0 546 547 0 547 548 0 548 546 0
		 549 550 0 550 551 0 551 549 0 552 553 0 553 554 0 554 552 0 555 556 0 556 557 0 557 555 0
		 558 559 0 559 560 0 560 558 0 561 562 0 562 563 0 563 561 0 564 565 0 565 566 0 566 564 0
		 567 568 0 568 569 0 569 567 0 570 571 0 571 572 0 572 570 0 573 574 0 574 575 0 575 573 0
		 576 577 0 577 578 0 578 576 0 579 580 0 580 581 0 581 579 0 582 583 0 583 584 0 584 582 0
		 585 586 0 586 587 0 587 585 0 588 589 0 589 590 0 590 588 0 591 592 0 592 593 0 593 591 0
		 594 595 0 595 596 0 596 594 0 597 598 0 598 599 0 599 597 0 600 601 0 601 602 0 602 600 0
		 603 604 0 604 605 0 605 603 0 606 607 0 607 608 0 608 606 0 609 610 0 610 611 0 611 609 0
		 612 613 0 613 614 0 614 612 0 615 616 0 616 617 0 617 615 0 618 619 0 619 620 0 620 618 0
		 621 622 0 622 623 0 623 621 0 624 625 0 625 626 0 626 624 0 627 628 0 628 629 0 629 627 0
		 630 631 0 631 632 0 632 630 0 633 634 0 634 635 0 635 633 0 636 637 0 637 638 0 638 636 0
		 639 640 0 640 641 0 641 639 0 642 643 0 643 644 0 644 642 0 645 646 0 646 647 0 647 645 0
		 648 649 0 649 650 0 650 648 0 651 652 0 652 653 0 653 651 0 654 655 0 655 656 0 656 654 0
		 657 658 0 658 659 0 659 657 0 660 661 0 661 662 0 662 660 0 663 664 0;
	setAttr ".ed[664:829]" 664 665 0 665 663 0 666 667 0 667 668 0 668 666 0 669 670 0
		 670 671 0 671 669 0 672 673 0 673 674 0 674 672 0 675 676 0 676 677 0 677 675 0 678 679 0
		 679 680 0 680 678 0 681 682 0 682 683 0 683 681 0 684 685 0 685 686 0 686 684 0 687 688 0
		 688 689 0 689 687 0 690 691 0 691 692 0 692 690 0 693 694 0 694 695 0 695 693 0 696 697 0
		 697 698 0 698 696 0 699 700 0 700 701 0 701 699 0 702 703 0 703 704 0 704 702 0 705 706 0
		 706 707 0 707 705 0 708 709 0 709 710 0 710 708 0 711 712 0 712 713 0 713 711 0 714 715 0
		 715 716 0 716 714 0 717 718 0 718 719 0 719 717 0 720 721 0 721 722 0 722 720 0 723 724 0
		 724 725 0 725 723 0 726 727 0 727 728 0 728 726 0 729 730 0 730 731 0 731 729 0 732 733 0
		 733 734 0 734 732 0 735 736 0 736 737 0 737 735 0 738 739 0 739 740 0 740 738 0 741 742 0
		 742 743 0 743 741 0 744 745 0 745 746 0 746 744 0 747 748 0 748 749 0 749 747 0 750 751 0
		 751 752 0 752 750 0 753 754 0 754 755 0 755 753 0 756 757 0 757 758 0 758 756 0 759 760 0
		 760 761 0 761 759 0 762 763 0 763 764 0 764 762 0 765 766 0 766 767 0 767 765 0 768 765 0
		 765 769 0 769 768 0 770 771 0 771 772 0 772 770 0 773 771 0 771 774 0 774 773 0 775 776 0
		 776 777 0 777 775 0 777 778 0 778 779 1 779 777 0 778 780 0 780 779 0 781 782 0 782 783 0
		 783 781 0 782 784 0 784 785 1 785 782 0 784 786 0 786 785 0 787 788 0 788 789 0 789 787 0
		 790 791 0 791 788 1 788 790 0 791 792 0 792 788 0 793 794 0 794 795 0 795 793 0 796 793 1
		 793 797 0 797 796 0 798 793 0 796 798 0 799 800 0 800 801 0 801 799 0 802 799 1 799 803 0
		 803 802 0 804 799 0 802 804 0 805 806 0 806 807 1 807 805 0 806 808 0 808 807 0 809 810 0
		 810 811 1 811 809 0 810 812 0 812 811 0 813 814 0 814 815 1 815 813 0;
	setAttr ".ed[830:995]" 814 816 0 816 815 0 817 818 0 818 819 1 819 817 0 818 820 0
		 820 819 0 821 822 0 822 823 1 823 821 0 822 824 0 824 823 0 825 826 0 826 827 1 827 825 0
		 826 828 0 828 827 0 829 830 0 830 831 1 831 829 0 830 832 0 832 831 0 833 834 0 834 835 1
		 835 833 0 834 836 0 836 835 0 837 838 0 838 839 1 839 837 0 838 840 0 840 839 0 841 842 0
		 842 843 1 843 841 0 842 844 0 844 843 0 845 846 0 846 847 1 847 845 0 846 848 0 848 847 0
		 849 850 0 850 851 1 851 849 0 850 852 0 852 851 0 853 854 0 854 855 1 855 853 0 854 856 0
		 856 855 0 857 858 0 858 859 1 859 857 0 858 860 0 860 859 0 861 862 0 862 863 1 863 861 0
		 862 864 0 864 863 0 865 866 0 866 867 1 867 865 0 866 868 0 868 867 0 869 870 0 870 871 1
		 871 869 0 870 872 0 872 871 0 873 874 0 874 875 1 875 873 0 874 876 0 876 875 0 877 878 0
		 878 879 1 879 877 0 878 880 0 880 879 0 881 882 0 882 883 1 883 881 0 882 884 0 884 883 0
		 885 886 0 886 887 1 887 885 0 886 888 0 888 887 0 889 890 0 890 891 1 891 889 0 890 892 0
		 892 891 0 893 894 0 894 895 1 895 893 0 894 896 0 896 895 0 897 898 0 898 899 1 899 897 0
		 898 900 0 900 899 0 901 902 0 902 903 1 903 901 0 902 904 0 904 903 0 905 906 0 906 907 1
		 907 905 0 906 908 0 908 907 0 909 910 0 910 911 1 911 909 0 910 912 0 912 911 0 913 914 0
		 914 915 1 915 913 0 914 916 0 916 915 0 917 918 0 918 919 1 919 917 0 918 920 0 920 919 0
		 921 922 0 922 923 1 923 921 0 922 924 0 924 923 0 925 926 0 926 927 1 927 925 0 926 928 0
		 928 927 0 929 930 0 930 931 1 931 929 0 930 932 0 932 931 0 933 934 0 934 935 1 935 933 0
		 934 936 0 936 935 0 937 938 0 938 939 1 939 937 0 938 940 0 940 939 0 941 942 0 942 943 1
		 943 941 0 942 944 0 944 943 0 945 946 0 946 947 1 947 945 0 946 948 0;
	setAttr ".ed[996:1161]" 948 947 0 949 950 0 950 951 1 951 949 0 950 952 0 952 951 0
		 953 954 0 954 955 1 955 953 0 954 956 0 956 955 0 957 958 0 958 959 1 959 957 0 958 960 0
		 960 959 0 961 962 0 962 963 1 963 961 0 962 964 0 964 963 0 965 966 0 966 967 1 967 965 0
		 966 968 0 968 967 0 969 970 0 970 971 1 971 969 0 970 972 0 972 971 0 973 974 0 974 975 1
		 975 973 0 974 976 0 976 975 0 977 978 0 978 979 1 979 977 0 978 980 0 980 979 0 981 982 0
		 982 983 1 983 981 0 982 984 0 984 983 0 985 986 0 986 987 1 987 985 0 986 988 0 988 987 0
		 989 990 0 990 991 1 991 989 0 990 992 0 992 991 0 993 994 0 994 995 1 995 993 0 994 996 0
		 996 995 0 997 998 0 998 999 1 999 997 0 998 1000 0 1000 999 0 1001 1002 0 1002 1003 1
		 1003 1001 0 1002 1004 0 1004 1003 0 1005 1006 0 1006 1007 1 1007 1005 0 1006 1008 0
		 1008 1007 0 1009 1010 0 1010 1011 1 1011 1009 0 1010 1012 0 1012 1011 0 1013 1014 0
		 1014 1015 1 1015 1013 0 1014 1016 0 1016 1015 0 1017 1018 0 1018 1019 1 1019 1017 0
		 1018 1020 0 1020 1019 0 1021 1022 0 1022 1023 1 1023 1021 0 1022 1024 0 1024 1023 0
		 1025 1026 0 1026 1027 1 1027 1025 0 1026 1028 0 1028 1027 0 1029 1030 0 1030 1031 1
		 1031 1029 0 1030 1032 0 1032 1031 0 1033 1034 0 1034 1035 1 1035 1033 0 1034 1036 0
		 1036 1035 0 1037 1038 0 1038 1039 1 1039 1037 0 1038 1040 0 1040 1039 0 1041 1042 0
		 1042 1043 1 1043 1041 0 1042 1044 0 1044 1043 0 1045 1046 0 1046 1047 1 1047 1045 0
		 1046 1048 0 1048 1047 0 1049 1050 0 1050 1051 1 1051 1049 0 1050 1052 0 1052 1051 0
		 1053 1054 0 1054 1055 1 1055 1053 0 1054 1056 0 1056 1055 0 1057 1058 0 1058 1059 1
		 1059 1057 0 1058 1060 0 1060 1059 0 1061 1062 0 1062 1063 1 1063 1061 0 1062 1064 0
		 1064 1063 0 1065 1066 0 1066 1067 1 1067 1065 0 1066 1068 0 1068 1067 0 1069 1070 0
		 1070 1071 1 1071 1069 0 1070 1072 0 1072 1071 0 1073 1074 0 1074 1075 1 1075 1073 0
		 1074 1076 0 1076 1075 0 1077 1078 0 1078 1079 1 1079 1077 0 1078 1080 0 1080 1079 0;
	setAttr ".ed[1162:1327]" 1081 1082 0 1082 1083 1 1083 1081 0 1082 1084 0 1084 1083 0
		 1085 1086 0 1086 1087 1 1087 1085 0 1086 1088 0 1088 1087 0 1089 1090 0 1090 1091 1
		 1091 1089 0 1090 1092 0 1092 1091 0 1093 1094 0 1094 1095 1 1095 1093 0 1094 1096 0
		 1096 1095 0 1097 1098 0 1098 1099 1 1099 1097 0 1098 1100 0 1100 1099 0 1101 1102 0
		 1102 1103 1 1103 1101 0 1102 1104 0 1104 1103 0 1105 1106 0 1106 1107 1 1107 1105 0
		 1106 1108 0 1108 1107 0 1109 1110 0 1110 1111 1 1111 1109 0 1110 1112 0 1112 1111 0
		 1113 1114 0 1114 1115 1 1115 1113 0 1114 1116 0 1116 1115 0 1117 1118 0 1118 1119 1
		 1119 1117 0 1118 1120 0 1120 1119 0 1121 1122 0 1122 1123 1 1123 1121 0 1122 1124 0
		 1124 1123 0 1125 1126 0 1126 1127 1 1127 1125 0 1126 1128 0 1128 1127 0 1129 1130 0
		 1130 1131 1 1131 1129 0 1130 1132 0 1132 1131 0 1133 1134 0 1134 1135 1 1135 1133 0
		 1134 1136 0 1136 1135 0 1137 1138 0 1138 1139 1 1139 1137 0 1138 1140 0 1140 1139 0
		 1141 1142 0 1142 1143 1 1143 1141 0 1142 1144 0 1144 1143 0 1145 1146 0 1146 1147 1
		 1147 1145 0 1146 1148 0 1148 1147 0 1149 1150 0 1150 1151 1 1151 1149 0 1150 1152 0
		 1152 1151 0 1153 1154 0 1154 1155 1 1155 1153 0 1154 1156 0 1156 1155 0 1157 1158 0
		 1158 1159 1 1159 1157 0 1158 1160 0 1160 1159 0 1161 1162 0 1162 1163 1 1163 1161 0
		 1162 1164 0 1164 1163 0 1165 1166 0 1166 1167 1 1167 1165 0 1166 1168 0 1168 1167 0
		 1169 1170 0 1170 1171 1 1171 1169 0 1170 1172 0 1172 1171 0 1173 1174 0 1174 1175 1
		 1175 1173 0 1174 1176 0 1176 1175 0 1177 1178 0 1178 1179 1 1179 1177 0 1178 1180 0
		 1180 1179 0 1181 1182 0 1182 1183 1 1183 1181 0 1182 1184 0 1184 1183 0 1185 1186 0
		 1186 1187 1 1187 1185 0 1186 1188 0 1188 1187 0 1189 1190 0 1190 1191 1 1191 1189 0
		 1190 1192 0 1192 1191 0 1193 1194 0 1194 1195 1 1195 1193 0 1194 1196 0 1196 1195 0
		 1197 1198 0 1198 1199 1 1199 1197 0 1198 1200 0 1200 1199 0 1201 1202 0 1202 1203 1
		 1203 1201 0 1202 1204 0 1204 1203 0 1205 1206 0 1206 1207 1 1207 1205 0 1206 1208 0
		 1208 1207 0 1209 1210 0 1210 1211 1 1211 1209 0 1210 1212 0 1212 1211 0 1213 1214 0;
	setAttr ".ed[1328:1493]" 1214 1215 1 1215 1213 0 1214 1216 0 1216 1215 0 1217 1218 0
		 1218 1219 1 1219 1217 0 1218 1220 0 1220 1219 0 1221 1222 0 1222 1223 1 1223 1221 0
		 1222 1224 0 1224 1223 0 1225 1226 0 1226 1227 1 1227 1225 0 1226 1228 0 1228 1227 0
		 1229 1230 0 1230 1231 1 1231 1229 0 1230 1232 0 1232 1231 0 1233 1234 0 1234 1235 1
		 1235 1233 0 1234 1236 0 1236 1235 0 1237 1238 0 1238 1239 1 1239 1237 0 1238 1240 0
		 1240 1239 0 1241 1242 0 1242 1243 1 1243 1241 0 1242 1244 0 1244 1243 0 1245 1246 0
		 1246 1247 1 1247 1245 0 1246 1248 0 1248 1247 0 1249 1250 0 1250 1251 1 1251 1249 0
		 1250 1252 0 1252 1251 0 1253 1254 0 1254 1255 1 1255 1253 0 1254 1256 0 1256 1255 0
		 1257 1258 0 1258 1259 1 1259 1257 0 1258 1260 0 1260 1259 0 1261 1262 0 1262 1263 1
		 1263 1261 0 1262 1264 0 1264 1263 0 1265 1266 0 1266 1267 1 1267 1265 0 1266 1268 0
		 1268 1267 0 1269 1270 0 1270 1271 1 1271 1269 0 1270 1272 0 1272 1271 0 1273 1274 0
		 1274 1275 1 1275 1273 0 1274 1276 0 1276 1275 0 1277 1278 0 1278 1279 1 1279 1277 0
		 1278 1280 0 1280 1279 0 1281 1282 0 1282 1283 1 1283 1281 0 1282 1284 0 1284 1283 0
		 1285 1286 0 1286 1287 1 1287 1285 0 1286 1288 0 1288 1287 0 1289 1290 0 1290 1291 1
		 1291 1289 0 1290 1292 0 1292 1291 0 1293 1294 0 1294 1295 1 1295 1293 0 1294 1296 0
		 1296 1295 0 1297 1298 0 1298 1299 1 1299 1297 0 1298 1300 0 1300 1299 0 1301 1302 0
		 1302 1303 1 1303 1301 0 1302 1304 0 1304 1303 0 1305 1306 0 1306 1307 1 1307 1305 0
		 1306 1308 0 1308 1307 0 1309 1310 0 1310 1311 1 1311 1309 0 1310 1312 0 1312 1311 0
		 1313 1314 0 1314 1315 1 1315 1313 0 1314 1316 0 1316 1315 0 1317 1318 0 1318 1319 1
		 1319 1317 0 1318 1320 0 1320 1319 0 1321 1322 0 1322 1323 1 1323 1321 0 1322 1324 0
		 1324 1323 0 1325 1326 0 1326 1327 1 1327 1325 0 1326 1328 0 1328 1327 0 1329 1330 0
		 1330 1331 1 1331 1329 0 1330 1332 0 1332 1331 0 1333 1334 0 1334 1335 1 1335 1333 0
		 1334 1336 0 1336 1335 0 1337 1338 0 1338 1339 1 1339 1337 0 1338 1340 0 1340 1339 0
		 1341 1342 0 1342 1343 1 1343 1341 0 1342 1344 0 1344 1343 0 1345 1346 0 1346 1347 1;
	setAttr ".ed[1494:1659]" 1347 1345 0 1346 1348 0 1348 1347 0 1349 1350 0 1350 1351 1
		 1351 1349 0 1350 1352 0 1352 1351 0 1353 1354 0 1354 1355 1 1355 1353 0 1354 1356 0
		 1356 1355 0 1357 1358 0 1358 1359 1 1359 1357 0 1358 1360 0 1360 1359 0 1361 1362 0
		 1362 1363 1 1363 1361 0 1362 1364 0 1364 1363 0 1365 1366 0 1366 1367 1 1367 1365 0
		 1366 1368 0 1368 1367 0 1369 1370 0 1370 1371 1 1371 1369 0 1370 1372 0 1372 1371 0
		 1373 1374 0 1374 1375 1 1375 1373 0 1374 1376 0 1376 1375 0 1377 1378 0 1378 1379 1
		 1379 1377 0 1378 1380 0 1380 1379 0 1381 1382 0 1382 1383 1 1383 1381 0 1382 1384 0
		 1384 1383 0 1385 1386 0 1386 1387 1 1387 1385 0 1386 1388 0 1388 1387 0 1389 1390 0
		 1390 1391 1 1391 1389 0 1390 1392 0 1392 1391 0 1393 1394 0 1394 1395 1 1395 1393 0
		 1394 1396 0 1396 1395 0 1397 1398 0 1398 1399 1 1399 1397 0 1398 1400 0 1400 1399 0
		 1401 1402 0 1402 1403 1 1403 1401 0 1402 1404 0 1404 1403 0 1405 1406 0 1406 1407 1
		 1407 1405 0 1406 1408 0 1408 1407 0 1409 1410 0 1410 1411 1 1411 1409 0 1410 1412 0
		 1412 1411 0 1413 1414 0 1414 1415 1 1415 1413 0 1414 1416 0 1416 1415 0 1417 1418 0
		 1418 1419 1 1419 1417 0 1418 1420 0 1420 1419 0 1421 1422 0 1422 1423 1 1423 1421 0
		 1422 1424 0 1424 1423 0 1425 1426 0 1426 1427 1 1427 1425 0 1426 1428 0 1428 1427 0
		 1429 1430 0 1430 1431 1 1431 1429 0 1430 1432 0 1432 1431 0 1433 1434 0 1434 1435 1
		 1435 1433 0 1434 1436 0 1436 1435 0 1437 1438 0 1438 1439 1 1439 1437 0 1438 1440 0
		 1440 1439 0 1441 1442 0 1442 1443 1 1443 1441 0 1442 1444 0 1444 1443 0 1445 1446 0
		 1446 1447 1 1447 1445 0 1446 1448 0 1448 1447 0 1449 1450 0 1450 1451 1 1451 1449 0
		 1450 1452 0 1452 1451 0 1453 1454 0 1454 1455 1 1455 1453 0 1454 1456 0 1456 1455 0
		 1457 1458 0 1458 1459 1 1459 1457 0 1458 1460 0 1460 1459 0 1461 1462 0 1462 1463 1
		 1463 1461 0 1462 1464 0 1464 1463 0 1465 1466 0 1466 1467 1 1467 1465 0 1466 1468 0
		 1468 1467 0 1469 1470 0 1470 1471 1 1471 1469 0 1470 1472 0 1472 1471 0 1473 1474 0
		 1474 1475 1 1475 1473 0 1474 1476 0 1476 1475 0 1477 1478 0 1478 1479 1 1479 1477 0;
	setAttr ".ed[1660:1825]" 1478 1480 0 1480 1479 0 1481 1482 0 1482 1483 1 1483 1481 0
		 1482 1484 0 1484 1483 0 1485 1486 0 1486 1487 1 1487 1485 0 1486 1488 0 1488 1487 0
		 1489 1490 0 1490 1491 1 1491 1489 0 1490 1492 0 1492 1491 0 1493 1494 0 1494 1495 1
		 1495 1493 0 1494 1496 0 1496 1495 0 1497 1498 0 1498 1499 1 1499 1497 0 1498 1500 0
		 1500 1499 0 1501 1502 0 1502 1503 1 1503 1501 0 1502 1504 0 1504 1503 0 1505 1506 0
		 1506 1507 1 1507 1505 0 1506 1508 0 1508 1507 0 1509 1510 0 1510 1511 1 1511 1509 0
		 1510 1512 0 1512 1511 0 1513 1514 0 1514 1515 1 1515 1513 0 1514 1516 0 1516 1515 0
		 1517 1518 0 1518 1519 1 1519 1517 0 1518 1520 0 1520 1519 0 1521 1522 0 1522 1523 1
		 1523 1521 0 1522 1524 0 1524 1523 0 1525 1526 0 1526 1527 1 1527 1525 0 1526 1528 0
		 1528 1527 0 1529 1530 0 1530 1531 1 1531 1529 0 1530 1532 0 1532 1531 0 1533 1534 0
		 1534 1535 1 1535 1533 0 1534 1536 0 1536 1535 0 1537 1538 0 1538 1539 1 1539 1537 0
		 1538 1540 0 1540 1539 0 1541 1542 0 1542 1543 1 1543 1541 0 1542 1544 0 1544 1543 0
		 1545 1546 0 1546 1547 1 1547 1545 0 1546 1548 0 1548 1547 0 1549 1550 0 1550 1551 1
		 1551 1549 0 1550 1552 0 1552 1551 0 1553 1554 0 1554 1555 1 1555 1553 0 1554 1556 0
		 1556 1555 0 1557 1558 0 1558 1559 1 1559 1557 0 1558 1560 0 1560 1559 0 1561 1562 0
		 1562 1563 1 1563 1561 0 1562 1564 0 1564 1563 0 1565 1566 0 1566 1567 1 1567 1565 0
		 1566 1568 0 1568 1567 0 1569 1570 0 1570 1571 1 1571 1569 0 1570 1572 0 1572 1571 0
		 1573 1574 0 1574 1575 1 1575 1573 0 1574 1576 0 1576 1575 0 1577 1578 0 1578 1579 1
		 1579 1577 0 1578 1580 0 1580 1579 0 1581 1582 0 1582 1583 1 1583 1581 0 1582 1584 0
		 1584 1583 0 1585 1586 0 1586 1587 1 1587 1585 0 1586 1588 0 1588 1587 0 1589 1590 0
		 1590 1591 1 1591 1589 0 1590 1592 0 1592 1591 0 1593 1594 0 1594 1595 1 1595 1593 0
		 1594 1596 0 1596 1595 0 1597 1598 0 1598 1599 1 1599 1597 0 1598 1600 0 1600 1599 0
		 1601 1602 0 1602 1603 1 1603 1601 0 1602 1604 0 1604 1603 0 1605 1606 0 1606 1607 1
		 1607 1605 0 1606 1608 0 1608 1607 0 1609 1610 0 1610 1611 1 1611 1609 0 1610 1612 0;
	setAttr ".ed[1826:1991]" 1612 1611 0 1613 1614 0 1614 1615 1 1615 1613 0 1614 1616 0
		 1616 1615 0 1617 1618 0 1618 1619 1 1619 1617 0 1618 1620 0 1620 1619 0 1621 1622 0
		 1622 1623 1 1623 1621 0 1622 1624 0 1624 1623 0 1625 1626 0 1626 1627 1 1627 1625 0
		 1626 1628 0 1628 1627 0 1629 1630 0 1630 1631 1 1631 1629 0 1630 1632 0 1632 1631 0
		 1633 1634 0 1634 1635 1 1635 1633 0 1634 1636 0 1636 1635 0 1637 1638 0 1638 1639 1
		 1639 1637 0 1638 1640 0 1640 1639 0 1641 1642 0 1642 1643 1 1643 1641 0 1642 1644 0
		 1644 1643 0 1645 1646 0 1646 1647 1 1647 1645 0 1646 1648 0 1648 1647 0 1649 1650 0
		 1650 1651 1 1651 1649 0 1650 1652 0 1652 1651 0 1653 1654 0 1654 1655 1 1655 1653 0
		 1654 1656 0 1656 1655 0 1657 1658 0 1658 1659 1 1659 1657 0 1658 1660 0 1660 1659 0
		 1661 1662 0 1662 1663 1 1663 1661 0 1662 1664 0 1664 1663 0 1665 1666 0 1666 1667 1
		 1667 1665 0 1666 1668 0 1668 1667 0 1669 1670 0 1670 1671 1 1671 1669 0 1670 1672 0
		 1672 1671 0 1673 1674 0 1674 1675 1 1675 1673 0 1674 1676 0 1676 1675 0 1677 1678 0
		 1678 1679 1 1679 1677 0 1678 1680 0 1680 1679 0 1681 1682 0 1682 1683 1 1683 1681 0
		 1682 1684 0 1684 1683 0 1685 1686 0 1686 1687 1 1687 1685 0 1686 1688 0 1688 1687 0
		 1689 1690 0 1690 1691 1 1691 1689 0 1690 1692 0 1692 1691 0 1693 1694 0 1694 1695 1
		 1695 1693 0 1694 1696 0 1696 1695 0 1697 1698 0 1698 1699 1 1699 1697 0 1698 1700 0
		 1700 1699 0 1701 1702 0 1702 1703 1 1703 1701 0 1702 1704 0 1704 1703 0 1705 1706 0
		 1706 1707 1 1707 1705 0 1706 1708 0 1708 1707 0 1709 1710 0 1710 1711 1 1711 1709 0
		 1710 1712 0 1712 1711 0 1713 1714 0 1714 1715 1 1715 1713 0 1714 1716 0 1716 1715 0
		 1717 1718 0 1718 1719 1 1719 1717 0 1718 1720 0 1720 1719 0 1721 1722 0 1722 1723 1
		 1723 1721 0 1722 1724 0 1724 1723 0 1725 1726 0 1726 1727 1 1727 1725 0 1726 1728 0
		 1728 1727 0 1729 1730 0 1730 1731 1 1731 1729 0 1730 1732 0 1732 1731 0 1733 1734 0
		 1734 1735 1 1735 1733 0 1734 1736 0 1736 1735 0 1737 1738 0 1738 1739 1 1739 1737 0
		 1738 1740 0 1740 1739 0 1741 1742 0 1742 1743 1 1743 1741 0 1742 1744 0 1744 1743 0;
	setAttr ".ed[1992:2157]" 1745 1746 0 1746 1747 1 1747 1745 0 1746 1748 0 1748 1747 0
		 1749 1750 0 1750 1751 1 1751 1749 0 1750 1752 0 1752 1751 0 1753 1754 0 1754 1755 1
		 1755 1753 0 1754 1756 0 1756 1755 0 1757 1758 0 1758 1759 1 1759 1757 0 1758 1760 0
		 1760 1759 0 1761 1762 0 1762 1763 1 1763 1761 0 1762 1764 0 1764 1763 0 1765 1766 0
		 1766 1767 1 1767 1765 0 1766 1768 0 1768 1767 0 1769 1770 0 1770 1771 1 1771 1769 0
		 1770 1772 0 1772 1771 0 1773 1774 0 1774 1775 1 1775 1773 0 1774 1776 0 1776 1775 0
		 1777 1778 0 1778 1779 1 1779 1777 0 1778 1780 0 1780 1779 0 1781 1782 0 1782 1783 1
		 1783 1781 0 1782 1784 0 1784 1783 0 1785 1786 0 1786 1787 1 1787 1785 0 1786 1788 0
		 1788 1787 0 1789 1790 0 1790 1791 1 1791 1789 0 1790 1792 0 1792 1791 0 1793 1794 0
		 1794 1795 1 1795 1793 0 1794 1796 0 1796 1795 0 1797 1798 0 1798 1799 1 1799 1797 0
		 1798 1800 0 1800 1799 0 1801 1802 0 1802 1803 1 1803 1801 0 1802 1804 0 1804 1803 0
		 1805 1806 0 1806 1807 1 1807 1805 0 1806 1808 0 1808 1807 0 1809 1810 0 1810 1811 1
		 1811 1809 0 1810 1812 0 1812 1811 0 1813 1814 0 1814 1815 1 1815 1813 0 1814 1816 0
		 1816 1815 0 1817 1818 0 1818 1819 1 1819 1817 0 1818 1820 0 1820 1819 0 1821 1822 0
		 1822 1823 1 1823 1821 0 1822 1824 0 1824 1823 0 1825 1826 0 1826 1827 1 1827 1825 0
		 1826 1828 0 1828 1827 0 1829 1830 0 1830 1831 1 1831 1829 0 1830 1832 0 1832 1831 0
		 1833 1834 0 1834 1835 1 1835 1833 0 1834 1836 0 1836 1835 0 1837 1838 0 1838 1839 1
		 1839 1837 0 1838 1840 0 1840 1839 0 1841 1842 0 1842 1843 1 1843 1841 0 1842 1844 0
		 1844 1843 0 1845 1846 0 1846 1847 1 1847 1845 0 1846 1848 0 1848 1847 0 1849 1850 0
		 1850 1851 1 1851 1849 0 1850 1852 0 1852 1851 0 1853 1854 0 1854 1855 1 1855 1853 0
		 1854 1856 0 1856 1855 0 1857 1858 0 1858 1859 1 1859 1857 0 1858 1860 0 1860 1859 0
		 1861 1862 0 1862 1863 1 1863 1861 0 1862 1864 0 1864 1863 0 1865 1866 0 1866 1867 1
		 1867 1865 0 1866 1868 0 1868 1867 0 1869 1870 0 1870 1871 1 1871 1869 0 1870 1872 0
		 1872 1871 0 1873 1874 0 1874 1875 1 1875 1873 0 1874 1876 0 1876 1875 0 1877 1878 0;
	setAttr ".ed[2158:2323]" 1878 1879 1 1879 1877 0 1878 1880 0 1880 1879 0 1881 1882 0
		 1882 1883 1 1883 1881 0 1882 1884 0 1884 1883 0 1885 1886 0 1886 1887 1 1887 1885 0
		 1886 1888 0 1888 1887 0 1889 1890 0 1890 1891 1 1891 1889 0 1890 1892 0 1892 1891 0
		 1893 1894 0 1894 1895 1 1895 1893 0 1894 1896 0 1896 1895 0 1897 1898 0 1898 1899 1
		 1899 1897 0 1898 1900 0 1900 1899 0 1901 1902 0 1902 1903 1 1903 1901 0 1902 1904 0
		 1904 1903 0 1905 1906 0 1906 1907 1 1907 1905 0 1906 1908 0 1908 1907 0 1909 1910 0
		 1910 1911 1 1911 1909 0 1910 1912 0 1912 1911 0 1913 1914 0 1914 1915 1 1915 1913 0
		 1914 1916 0 1916 1915 0 1917 1918 0 1918 1919 1 1919 1917 0 1918 1920 0 1920 1919 0
		 1921 1922 0 1922 1923 1 1923 1921 0 1922 1924 0 1924 1923 0 1925 1926 0 1926 1927 1
		 1927 1925 0 1926 1928 0 1928 1927 0 1929 1930 0 1930 1931 1 1931 1929 0 1930 1932 0
		 1932 1931 0 1933 1934 0 1934 1935 1 1935 1933 0 1934 1936 0 1936 1935 0 1937 1938 0
		 1938 1939 1 1939 1937 0 1938 1940 0 1940 1939 0 1941 1942 0 1942 1943 1 1943 1941 0
		 1942 1944 0 1944 1943 0 1945 1946 0 1946 1947 1 1947 1945 0 1946 1948 0 1948 1947 0
		 1949 1950 0 1950 1951 1 1951 1949 0 1950 1952 0 1952 1951 0 1953 1954 0 1954 1955 1
		 1955 1953 0 1954 1956 0 1956 1955 0 1957 1958 0 1958 1959 1 1959 1957 0 1958 1960 0
		 1960 1959 0 1961 1962 0 1962 1963 1 1963 1961 0 1962 1964 0 1964 1963 0 1965 1966 0
		 1966 1967 1 1967 1965 0 1966 1968 0 1968 1967 0 1969 1970 0 1970 1971 1 1971 1969 0
		 1970 1972 0 1972 1971 0 1973 1974 0 1974 1975 1 1975 1973 0 1974 1976 0 1976 1975 0
		 1977 1978 0 1978 1979 1 1979 1977 0 1978 1980 0 1980 1979 0 1981 1982 0 1982 1983 1
		 1983 1981 0 1982 1984 0 1984 1983 0 1985 1986 0 1986 1987 1 1987 1985 0 1986 1988 0
		 1988 1987 0 1989 1990 0 1990 1991 1 1991 1989 0 1990 1992 0 1992 1991 0 1993 1994 0
		 1994 1995 1 1995 1993 0 1994 1996 0 1996 1995 0 1997 1998 0 1998 1999 1 1999 1997 0
		 1998 2000 0 2000 1999 0 2001 2002 0 2002 2003 1 2003 2001 0 2002 2004 0 2004 2003 0
		 2005 2006 0 2006 2007 1 2007 2005 0 2006 2008 0 2008 2007 0 2009 2010 0 2010 2011 1;
	setAttr ".ed[2324:2489]" 2011 2009 0 2010 2012 0 2012 2011 0 2013 2014 0 2014 2015 1
		 2015 2013 0 2014 2016 0 2016 2015 0 2017 2018 0 2018 2019 1 2019 2017 0 2018 2020 0
		 2020 2019 0 2021 2022 0 2022 2023 1 2023 2021 0 2022 2024 0 2024 2023 0 2025 2026 0
		 2026 2027 1 2027 2025 0 2026 2028 0 2028 2027 0 2029 2030 0 2030 2031 1 2031 2029 0
		 2030 2032 0 2032 2031 0 2033 2034 0 2034 2035 1 2035 2033 0 2034 2036 0 2036 2035 0
		 2037 2038 0 2038 2039 1 2039 2037 0 2038 2040 0 2040 2039 0 2041 2042 0 2042 2043 1
		 2043 2041 0 2042 2044 0 2044 2043 0 2045 2046 0 2046 2047 1 2047 2045 0 2046 2048 0
		 2048 2047 0 2049 2050 0 2050 2051 1 2051 2049 0 2050 2052 0 2052 2051 0 2052 2053 1
		 2053 2054 0 2054 2052 0 2055 2053 0 2052 2055 0 2056 2057 0 2057 2058 1 2058 2056 0
		 2057 2059 0 2059 2058 0 2060 2061 0 2061 2062 1 2062 2060 0 2061 2063 0 2063 2062 0
		 2064 2065 0 2065 2066 1 2066 2064 0 2065 2067 0 2067 2066 0 2068 2069 0 2069 2070 1
		 2070 2068 0 2069 2071 0 2071 2070 0 2072 2073 0 2073 2074 1 2074 2072 0 2073 2075 0
		 2075 2074 0 2076 2077 0 2077 2078 1 2078 2076 0 2077 2079 0 2079 2078 0 2080 2081 0
		 2081 2082 1 2082 2080 0 2081 2083 0 2083 2082 0 2084 2085 0 2085 2086 1 2086 2084 0
		 2085 2087 0 2087 2086 0 2088 2089 0 2089 2090 1 2090 2088 0 2089 2091 0 2091 2090 0
		 2092 2093 0 2093 2094 1 2094 2092 0 2093 2095 0 2095 2094 0 2096 2097 0 2097 2098 1
		 2098 2096 0 2097 2099 0 2099 2098 0 2100 2101 0 2101 2102 1 2102 2100 0 2101 2103 0
		 2103 2102 0 2104 2105 0 2105 2106 1 2106 2104 0 2105 2107 0 2107 2106 0 2108 2109 0
		 2109 2110 1 2110 2108 0 2109 2111 0 2111 2110 0 2112 2113 0 2113 2114 1 2114 2112 0
		 2113 2115 0 2115 2114 0 2116 2117 0 2117 2118 1 2118 2116 0 2117 2119 0 2119 2118 0
		 2120 2121 0 2121 2122 1 2122 2120 0 2121 2123 0 2123 2122 0 2124 2125 0 2125 2126 1
		 2126 2124 0 2125 2127 0 2127 2126 0 2128 2129 0 2129 2130 1 2130 2128 0 2129 2131 0
		 2131 2130 0 2132 2133 0 2133 2134 1 2134 2132 0 2133 2135 0 2135 2134 0 2136 2137 0
		 2137 2138 1 2138 2136 0 2137 2139 0 2139 2138 0 2140 2141 0 2141 2142 1 2142 2140 0;
	setAttr ".ed[2490:2655]" 2141 2143 0 2143 2142 0 2144 2145 0 2145 2146 1 2146 2144 0
		 2145 2147 0 2147 2146 0 2148 2149 0 2149 2150 1 2150 2148 0 2149 2151 0 2151 2150 0
		 2152 2153 0 2153 2154 1 2154 2152 0 2153 2155 0 2155 2154 0 2156 2157 0 2157 2158 1
		 2158 2156 0 2157 2159 0 2159 2158 0 2160 2161 0 2161 2162 1 2162 2160 0 2161 2163 0
		 2163 2162 0 2164 2165 0 2165 2166 1 2166 2164 0 2165 2167 0 2167 2166 0 2168 2169 0
		 2169 2170 1 2170 2168 0 2169 2171 0 2171 2170 0 2172 2173 0 2173 2174 1 2174 2172 0
		 2173 2175 0 2175 2174 0 2176 2177 0 2177 2178 1 2178 2176 0 2177 2179 0 2179 2178 0
		 2180 2181 0 2181 2182 1 2182 2180 0 2181 2183 0 2183 2182 0 2184 2185 0 2185 2186 1
		 2186 2184 0 2185 2187 0 2187 2186 0 2188 2189 0 2189 2190 1 2190 2188 0 2189 2191 0
		 2191 2190 0 2192 2193 0 2193 2194 1 2194 2192 0 2193 2195 0 2195 2194 0 2196 2197 0
		 2197 2198 1 2198 2196 0 2197 2199 0 2199 2198 0 2200 2201 0 2201 2202 1 2202 2200 0
		 2201 2203 0 2203 2202 0 2204 2205 0 2205 2206 1 2206 2204 0 2205 2207 0 2207 2206 0
		 2208 2209 0 2209 2210 1 2210 2208 0 2209 2211 0 2211 2210 0 2212 2213 0 2213 2214 1
		 2214 2212 0 2213 2215 0 2215 2214 0 2216 2217 0 2217 2218 1 2218 2216 0 2217 2219 0
		 2219 2218 0 2220 2221 0 2221 2222 1 2222 2220 0 2221 2223 0 2223 2222 0 2224 2225 0
		 2225 2226 1 2226 2224 0 2225 2227 0 2227 2226 0 2228 2229 0 2229 2230 1 2230 2228 0
		 2229 2231 0 2231 2230 0 2232 2233 0 2233 2234 1 2234 2232 0 2233 2235 0 2235 2234 0
		 2236 2237 0 2237 2238 1 2238 2236 0 2237 2239 0 2239 2238 0 2240 2241 0 2241 2242 1
		 2242 2240 0 2241 2243 0 2243 2242 0 2244 2245 0 2245 2246 1 2246 2244 0 2245 2247 0
		 2247 2246 0 2248 2249 0 2249 2250 1 2250 2248 0 2249 2251 0 2251 2250 0 2252 2253 0
		 2253 2254 1 2254 2252 0 2253 2255 0 2255 2254 0 2256 2257 0 2257 2258 1 2258 2256 0
		 2257 2259 0 2259 2258 0 2260 2261 0 2261 2262 1 2262 2260 0 2261 2263 0 2263 2262 0
		 2264 2265 0 2265 2266 1 2266 2264 0 2265 2267 0 2267 2266 0 2268 2269 0 2269 2270 1
		 2270 2268 0 2269 2271 0 2271 2270 0 2272 2273 0 2273 2274 1 2274 2272 0 2273 2275 0;
	setAttr ".ed[2656:2821]" 2275 2274 0 2276 2277 0 2277 2278 1 2278 2276 0 2277 2279 0
		 2279 2278 0 2280 2281 0 2281 2282 1 2282 2280 0 2281 2283 0 2283 2282 0 2284 2285 0
		 2285 2286 1 2286 2284 0 2285 2287 0 2287 2286 0 2288 2289 0 2289 2290 1 2290 2288 0
		 2289 2291 0 2291 2290 0 2292 2293 0 2293 2294 1 2294 2292 0 2293 2295 0 2295 2294 0
		 2296 2297 0 2297 2298 1 2298 2296 0 2297 2299 0 2299 2298 0 2300 2301 0 2301 2302 1
		 2302 2300 0 2301 2303 0 2303 2302 0 2304 2305 0 2305 2306 1 2306 2304 0 2305 2307 0
		 2307 2306 0 2308 2309 0 2309 2310 1 2310 2308 0 2309 2311 0 2311 2310 0 2312 2313 0
		 2313 2314 1 2314 2312 0 2313 2315 0 2315 2314 0 2316 2317 0 2317 2318 1 2318 2316 0
		 2317 2319 0 2319 2318 0 2320 2321 0 2321 2322 1 2322 2320 0 2321 2323 0 2323 2322 0
		 2324 2325 0 2325 2326 1 2326 2324 0 2325 2327 0 2327 2326 0 2328 2329 0 2329 2330 1
		 2330 2328 0 2329 2331 0 2331 2330 0 2332 2333 0 2333 2334 1 2334 2332 0 2333 2335 0
		 2335 2334 0 2336 2337 0 2337 2338 1 2338 2336 0 2337 2339 0 2339 2338 0 2340 2341 0
		 2341 2342 1 2342 2340 0 2341 2343 0 2343 2342 0 2344 2345 0 2345 2346 1 2346 2344 0
		 2345 2347 0 2347 2346 0 2348 2349 0 2349 2350 1 2350 2348 0 2349 2351 0 2351 2350 0
		 2352 2353 0 2353 2354 1 2354 2352 0 2353 2355 0 2355 2354 0 2356 2357 0 2357 2358 1
		 2358 2356 0 2357 2359 0 2359 2358 0 2360 2361 0 2361 2362 1 2362 2360 0 2361 2363 0
		 2363 2362 0 2364 2365 0 2365 2366 1 2366 2364 0 2365 2367 0 2367 2366 0 2368 2369 0
		 2369 2370 1 2370 2368 0 2369 2371 0 2371 2370 0 2372 2373 0 2373 2374 1 2374 2372 0
		 2373 2375 0 2375 2374 0 2376 2377 0 2377 2378 1 2378 2376 0 2377 2379 0 2379 2378 0
		 2380 2381 0 2381 2382 1 2382 2380 0 2381 2383 0 2383 2382 0 2384 2385 0 2385 2386 1
		 2386 2384 0 2385 2387 0 2387 2386 0 2388 2389 0 2389 2390 1 2390 2388 0 2389 2391 0
		 2391 2390 0 2392 2393 0 2393 2394 1 2394 2392 0 2393 2395 0 2395 2394 0 2396 2397 0
		 2397 2398 1 2398 2396 0 2397 2399 0 2399 2398 0 2400 2401 0 2401 2402 1 2402 2400 0
		 2401 2403 0 2403 2402 0 2404 2405 0 2405 2406 1 2406 2404 0 2405 2407 0 2407 2406 0;
	setAttr ".ed[2822:2987]" 2408 2409 0 2409 2410 1 2410 2408 0 2409 2411 0 2411 2410 0
		 2412 2413 0 2413 2414 1 2414 2412 0 2413 2415 0 2415 2414 0 2416 2417 0 2417 2418 1
		 2418 2416 0 2417 2419 0 2419 2418 0 2420 2421 0 2421 2422 1 2422 2420 0 2421 2423 0
		 2423 2422 0 2424 2425 0 2425 2426 1 2426 2424 0 2425 2427 0 2427 2426 0 2428 2429 0
		 2429 2430 1 2430 2428 0 2429 2431 0 2431 2430 0 2432 2433 0 2433 2434 1 2434 2432 0
		 2433 2435 0 2435 2434 0 2436 2437 0 2437 2438 1 2438 2436 0 2437 2439 0 2439 2438 0
		 2440 2441 0 2441 2442 1 2442 2440 0 2441 2443 0 2443 2442 0 2444 2445 0 2445 2446 1
		 2446 2444 0 2445 2447 0 2447 2446 0 2448 2449 0 2449 2450 1 2450 2448 0 2449 2451 0
		 2451 2450 0 2452 2453 0 2453 2454 1 2454 2452 0 2453 2455 0 2455 2454 0 2456 2457 0
		 2457 2458 1 2458 2456 0 2457 2459 0 2459 2458 0 2460 2461 0 2461 2462 1 2462 2460 0
		 2461 2463 0 2463 2462 0 2464 2465 0 2465 2466 1 2466 2464 0 2465 2467 0 2467 2466 0
		 2468 2469 0 2469 2470 1 2470 2468 0 2469 2471 0 2471 2470 0 2472 2473 0 2473 2474 1
		 2474 2472 0 2473 2475 0 2475 2474 0 2476 2477 0 2477 2478 1 2478 2476 0 2477 2479 0
		 2479 2478 0 2480 2481 0 2481 2482 1 2482 2480 0 2481 2483 0 2483 2482 0 2484 2485 0
		 2485 2486 1 2486 2484 0 2485 2487 0 2487 2486 0 2488 2489 0 2489 2490 1 2490 2488 0
		 2489 2491 0 2491 2490 0 2492 2493 0 2493 2494 1 2494 2492 0 2493 2495 0 2495 2494 0
		 2496 2497 0 2497 2498 1 2498 2496 0 2497 2499 0 2499 2498 0 2500 2501 0 2501 2502 1
		 2502 2500 0 2501 2503 0 2503 2502 0 2504 2505 0 2505 2506 1 2506 2504 0 2505 2507 0
		 2507 2506 0 2508 2509 0 2509 2510 1 2510 2508 0 2509 2511 0 2511 2510 0 2512 2513 0
		 2513 2514 1 2514 2512 0 2513 2515 0 2515 2514 0 2516 2517 0 2517 2518 1 2518 2516 0
		 2517 2519 0 2519 2518 0 2520 2521 0 2521 2522 1 2522 2520 0 2521 2523 0 2523 2522 0
		 2524 2525 0 2525 2526 1 2526 2524 0 2525 2527 0 2527 2526 0 2528 2529 0 2529 2530 1
		 2530 2528 0 2529 2531 0 2531 2530 0 2532 2533 0 2533 2534 1 2534 2532 0 2533 2535 0
		 2535 2534 0 2536 2537 0 2537 2538 1 2538 2536 0 2537 2539 0 2539 2538 0 2540 2541 0;
	setAttr ".ed[2988:3153]" 2541 2542 1 2542 2540 0 2541 2543 0 2543 2542 0 2544 2545 0
		 2545 2546 1 2546 2544 0 2545 2547 0 2547 2546 0 2548 2549 0 2549 2550 1 2550 2548 0
		 2549 2551 0 2551 2550 0 2552 2553 0 2553 2554 1 2554 2552 0 2553 2555 0 2555 2554 0
		 2556 2557 0 2557 2558 1 2558 2556 0 2557 2559 0 2559 2558 0 2560 2561 0 2561 2562 1
		 2562 2560 0 2561 2563 0 2563 2562 0 2564 2565 0 2565 2566 1 2566 2564 0 2565 2567 0
		 2567 2566 0 2568 2569 0 2569 2570 1 2570 2568 0 2569 2571 0 2571 2570 0 2572 2573 0
		 2573 2574 1 2574 2572 0 2573 2575 0 2575 2574 0 2576 2577 0 2577 2578 1 2578 2576 0
		 2577 2579 0 2579 2578 0 2580 2581 0 2581 2582 1 2582 2580 0 2581 2583 0 2583 2582 0
		 2584 2585 0 2585 2586 1 2586 2584 0 2585 2587 0 2587 2586 0 2588 2589 0 2589 2590 1
		 2590 2588 0 2589 2591 0 2591 2590 0 2592 2593 0 2593 2594 1 2594 2592 0 2593 2595 0
		 2595 2594 0 2596 2597 0 2597 2598 1 2598 2596 0 2597 2599 0 2599 2598 0 2600 2601 0
		 2601 2602 1 2602 2600 0 2601 2603 0 2603 2602 0 2604 2605 0 2605 2606 1 2606 2604 0
		 2605 2607 0 2607 2606 0 2608 2609 0 2609 2610 1 2610 2608 0 2609 2611 0 2611 2610 0
		 2612 2613 0 2613 2614 1 2614 2612 0 2613 2615 0 2615 2614 0 2616 2617 0 2617 2618 1
		 2618 2616 0 2617 2619 0 2619 2618 0 2620 2621 0 2621 2622 1 2622 2620 0 2621 2623 0
		 2623 2622 0 2624 2625 0 2625 2626 1 2626 2624 0 2625 2627 0 2627 2626 0 2628 2629 0
		 2629 2630 1 2630 2628 0 2629 2631 0 2631 2630 0 2632 2633 0 2633 2634 1 2634 2632 0
		 2633 2635 0 2635 2634 0 2636 2637 0 2637 2638 1 2638 2636 0 2637 2639 0 2639 2638 0
		 2640 2641 0 2641 2642 1 2642 2640 0 2641 2643 0 2643 2642 0 2644 2645 0 2645 2646 1
		 2646 2644 0 2645 2647 0 2647 2646 0 2648 2649 0 2649 2650 1 2650 2648 0 2649 2651 0
		 2651 2650 0 2652 2653 0 2653 2654 1 2654 2652 0 2653 2655 0 2655 2654 0 2656 2657 0
		 2657 2658 1 2658 2656 0 2657 2659 0 2659 2658 0 2660 2661 0 2661 2662 1 2662 2660 0
		 2661 2663 0 2663 2662 0 2664 2665 0 2665 2666 1 2666 2664 0 2665 2667 0 2667 2666 0
		 2668 2669 0 2669 2670 1 2670 2668 0 2669 2671 0 2671 2670 0 2672 2673 0 2673 2674 1;
	setAttr ".ed[3154:3319]" 2674 2672 0 2673 2675 0 2675 2674 0 2676 2677 0 2677 2678 1
		 2678 2676 0 2677 2679 0 2679 2678 0 2680 2681 0 2681 2682 1 2682 2680 0 2681 2683 0
		 2683 2682 0 2684 2685 0 2685 2686 1 2686 2684 0 2685 2687 0 2687 2686 0 2688 2689 0
		 2689 2690 1 2690 2688 0 2689 2691 0 2691 2690 0 2692 2693 0 2693 2694 1 2694 2692 0
		 2693 2695 0 2695 2694 0 2696 2697 0 2697 2698 1 2698 2696 0 2697 2699 0 2699 2698 0
		 2700 2701 0 2701 2702 1 2702 2700 0 2701 2703 0 2703 2702 0 2704 2705 0 2705 2706 1
		 2706 2704 0 2705 2707 0 2707 2706 0 2708 2709 0 2709 2710 1 2710 2708 0 2709 2711 0
		 2711 2710 0 2712 2713 0 2713 2714 1 2714 2712 0 2713 2715 0 2715 2714 0 2716 2717 0
		 2717 2718 1 2718 2716 0 2717 2719 0 2719 2718 0 2720 2721 0 2721 2722 1 2722 2720 0
		 2721 2723 0 2723 2722 0 2724 2725 0 2725 2726 1 2726 2724 0 2725 2727 0 2727 2726 0
		 2728 2729 0 2729 2730 1 2730 2728 0 2729 2731 0 2731 2730 0 2732 2733 0 2733 2734 1
		 2734 2732 0 2733 2735 0 2735 2734 0 2736 2737 0 2737 2738 1 2738 2736 0 2737 2739 0
		 2739 2738 0 2740 2741 0 2741 2742 1 2742 2740 0 2741 2743 0 2743 2742 0 2744 2745 0
		 2745 2746 1 2746 2744 0 2745 2747 0 2747 2746 0 2748 2749 0 2749 2750 1 2750 2748 0
		 2749 2751 0 2751 2750 0 2752 2753 0 2753 2754 1 2754 2752 0 2753 2755 0 2755 2754 0
		 2756 2757 0 2757 2758 1 2758 2756 0 2757 2759 0 2759 2758 0 2760 2761 0 2761 2762 1
		 2762 2760 0 2761 2763 0 2763 2762 0 2764 2765 0 2765 2766 1 2766 2764 0 2765 2767 0
		 2767 2766 0 2768 2769 0 2769 2770 1 2770 2768 0 2769 2771 0 2771 2770 0 2772 2773 0
		 2773 2774 1 2774 2772 0 2773 2775 0 2775 2774 0 2776 2777 0 2777 2778 1 2778 2776 0
		 2777 2779 0 2779 2778 0 2780 2781 0 2781 2782 1 2782 2780 0 2781 2783 0 2783 2782 0
		 2784 2785 0 2785 2786 1 2786 2784 0 2785 2787 0 2787 2786 0 2788 2789 0 2789 2790 1
		 2790 2788 0 2789 2791 0 2791 2790 0 2792 2793 0 2793 2794 1 2794 2792 0 2793 2795 0
		 2795 2794 0 2796 2797 0 2797 2798 1 2798 2796 0 2797 2799 0 2799 2798 0 2800 2801 0
		 2801 2802 1 2802 2800 0 2801 2803 0 2803 2802 0 2804 2805 0 2805 2806 1 2806 2804 0;
	setAttr ".ed[3320:3485]" 2805 2807 0 2807 2806 0 2808 2809 0 2809 2810 1 2810 2808 0
		 2809 2811 0 2811 2810 0 2812 2813 0 2813 2814 1 2814 2812 0 2813 2815 0 2815 2814 0
		 2816 2817 0 2817 2818 1 2818 2816 0 2817 2819 0 2819 2818 0 2820 2821 0 2821 2822 1
		 2822 2820 0 2821 2823 0 2823 2822 0 2824 2825 0 2825 2826 1 2826 2824 0 2825 2827 0
		 2827 2826 0 2828 2829 0 2829 2830 1 2830 2828 0 2829 2831 0 2831 2830 0 2832 2833 0
		 2833 2834 1 2834 2832 0 2833 2835 0 2835 2834 0 2836 2837 0 2837 2838 1 2838 2836 0
		 2837 2839 0 2839 2838 0 2840 2841 0 2841 2842 1 2842 2840 0 2841 2843 0 2843 2842 0
		 2844 2845 0 2845 2846 1 2846 2844 0 2845 2847 0 2847 2846 0 2848 2849 0 2849 2850 1
		 2850 2848 0 2849 2851 0 2851 2850 0 2852 2853 0 2853 2854 1 2854 2852 0 2853 2855 0
		 2855 2854 0 2856 2857 0 2857 2858 1 2858 2856 0 2857 2859 0 2859 2858 0 2860 2861 0
		 2861 2862 1 2862 2860 0 2861 2863 0 2863 2862 0 2864 2865 0 2865 2866 1 2866 2864 0
		 2865 2867 0 2867 2866 0 2868 2869 0 2869 2870 1 2870 2868 0 2869 2871 0 2871 2870 0
		 2872 2873 0 2873 2874 1 2874 2872 0 2873 2875 0 2875 2874 0 2876 2877 0 2877 2878 1
		 2878 2876 0 2877 2879 0 2879 2878 0 2880 2881 0 2881 2882 1 2882 2880 0 2881 2883 0
		 2883 2882 0 2884 2885 0 2885 2886 1 2886 2884 0 2885 2887 0 2887 2886 0 2888 2889 0
		 2889 2890 1 2890 2888 0 2889 2891 0 2891 2890 0 2892 2893 0 2893 2894 1 2894 2892 0
		 2893 2895 0 2895 2894 0 2896 2897 0 2897 2898 1 2898 2896 0 2897 2899 0 2899 2898 0
		 2900 2901 0 2901 2902 1 2902 2900 0 2901 2903 0 2903 2902 0 2904 2905 0 2905 2906 1
		 2906 2904 0 2905 2907 0 2907 2906 0 2908 2909 0 2909 2910 1 2910 2908 0 2909 2911 0
		 2911 2910 0 2912 2913 0 2913 2914 1 2914 2912 0 2913 2915 0 2915 2914 0 2916 2917 0
		 2917 2918 1 2918 2916 0 2917 2919 0 2919 2918 0 2920 2921 0 2921 2922 1 2922 2920 0
		 2921 2923 0 2923 2922 0 2924 2925 0 2925 2926 1 2926 2924 0 2925 2927 0 2927 2926 0
		 2928 2929 0 2929 2930 1 2930 2928 0 2929 2931 0 2931 2930 0 2932 2933 0 2933 2934 1
		 2934 2932 0 2933 2935 0 2935 2934 0 2936 2937 0 2937 2938 1 2938 2936 0 2937 2939 0;
	setAttr ".ed[3486:3651]" 2939 2938 0 2940 2941 0 2941 2942 1 2942 2940 0 2941 2943 0
		 2943 2942 0 2944 2945 0 2945 2946 1 2946 2944 0 2945 2947 0 2947 2946 0 2948 2949 0
		 2949 2950 1 2950 2948 0 2949 2951 0 2951 2950 0 2952 2953 0 2953 2954 1 2954 2952 0
		 2953 2955 0 2955 2954 0 2956 2957 0 2957 2958 1 2958 2956 0 2957 2959 0 2959 2958 0
		 2960 2961 0 2961 2962 1 2962 2960 0 2961 2963 0 2963 2962 0 2964 2965 0 2965 2966 1
		 2966 2964 0 2965 2967 0 2967 2966 0 2968 2969 0 2969 2970 1 2970 2968 0 2969 2971 0
		 2971 2970 0 2972 2973 0 2973 2974 1 2974 2972 0 2973 2975 0 2975 2974 0 2976 2977 0
		 2977 2978 1 2978 2976 0 2977 2979 0 2979 2978 0 2980 2981 0 2981 2982 1 2982 2980 0
		 2981 2983 0 2983 2982 0 2984 2985 0 2985 2986 1 2986 2984 0 2985 2987 0 2987 2986 0
		 2988 2989 0 2989 2990 1 2990 2988 0 2989 2991 0 2991 2990 0 2992 2993 0 2993 2994 1
		 2994 2992 0 2993 2995 0 2995 2994 0 2996 2997 0 2997 2998 1 2998 2996 0 2997 2999 0
		 2999 2998 0 3000 3001 0 3001 3002 1 3002 3000 0 3001 3003 0 3003 3002 0 3004 3005 0
		 3005 3006 1 3006 3004 0 3005 3007 0 3007 3006 0 3008 3009 0 3009 3010 1 3010 3008 0
		 3009 3011 0 3011 3010 0 3012 3013 0 3013 3014 1 3014 3012 0 3013 3015 0 3015 3014 0
		 3016 3017 0 3017 3018 1 3018 3016 0 3017 3019 0 3019 3018 0 3020 3021 0 3021 3022 1
		 3022 3020 0 3021 3023 0 3023 3022 0 3024 3025 0 3025 3026 1 3026 3024 0 3025 3027 0
		 3027 3026 0 3028 3029 0 3029 3030 1 3030 3028 0 3029 3031 0 3031 3030 0 3032 3033 0
		 3033 3034 1 3034 3032 0 3033 3035 0 3035 3034 0 3036 3037 0 3037 3038 1 3038 3036 0
		 3037 3039 0 3039 3038 0 3040 3041 0 3041 3042 1 3042 3040 0 3041 3043 0 3043 3042 0
		 3044 3045 0 3045 3046 1 3046 3044 0 3045 3047 0 3047 3046 0 3048 3049 0 3049 3050 1
		 3050 3048 0 3049 3051 0 3051 3050 0 3052 3053 0 3053 3054 1 3054 3052 0 3053 3055 0
		 3055 3054 0 3056 3057 0 3057 3058 1 3058 3056 0 3057 3059 0 3059 3058 0 3060 3061 0
		 3061 3062 1 3062 3060 0 3061 3063 0 3063 3062 0 3064 3065 0 3065 3066 1 3066 3064 0
		 3065 3067 0 3067 3066 0 3068 3069 1 3069 3070 0 3070 3068 0 3071 3069 0 3068 3071 0;
	setAttr ".ed[3652:3817]" 3072 3073 1 3073 3071 0 3071 3072 0 3074 3073 0 3072 3074 0
		 3075 3076 0 3076 3077 1 3077 3075 0 3076 3078 0 3078 3077 0 3079 3080 0 3080 3081 1
		 3081 3079 0 3080 3082 0 3082 3081 0 3083 3084 0 3084 3085 1 3085 3083 0 3084 3086 0
		 3086 3085 0 3087 3088 0 3088 3089 1 3089 3087 0 3088 3090 0 3090 3089 0 3091 3092 0
		 3092 3093 1 3093 3091 0 3092 3094 0 3094 3093 0 3095 3096 0 3096 3097 1 3097 3095 0
		 3096 3098 0 3098 3097 0 3099 3100 0 3100 3101 1 3101 3099 0 3100 3102 0 3102 3101 0
		 3103 3104 0 3104 3105 1 3105 3103 0 3104 3106 0 3106 3105 0 3107 3108 0 3108 3109 1
		 3109 3107 0 3108 3110 0 3110 3109 0 3111 3112 0 3112 3113 1 3113 3111 0 3112 3114 0
		 3114 3113 0 3115 3116 0 3116 3117 1 3117 3115 0 3116 3118 0 3118 3117 0 3119 3120 0
		 3120 3121 1 3121 3119 0 3120 3122 0 3122 3121 0 3123 3124 0 3124 3125 1 3125 3123 0
		 3124 3126 0 3126 3125 0 3127 3128 0 3128 3129 1 3129 3127 0 3128 3130 0 3130 3129 0
		 3131 3132 0 3132 3133 1 3133 3131 0 3132 3134 0 3134 3133 0 3135 3136 0 3136 3137 1
		 3137 3135 0 3136 3138 0 3138 3137 0 3139 3140 0 3140 3141 1 3141 3139 0 3140 3142 0
		 3142 3141 0 3143 3144 0 3144 3145 1 3145 3143 0 3144 3146 0 3146 3145 0 3147 3148 0
		 3148 3149 1 3149 3147 0 3148 3150 0 3150 3149 0 3151 3152 0 3152 3153 1 3153 3151 0
		 3152 3154 0 3154 3153 0 3155 3156 0 3156 3157 1 3157 3155 0 3156 3158 0 3158 3157 0
		 3159 3160 0 3160 3161 1 3161 3159 0 3160 3162 0 3162 3161 0 3163 3164 0 3164 3165 1
		 3165 3163 0 3164 3166 0 3166 3165 0 3167 3168 0 3168 3169 1 3169 3167 0 3168 3170 0
		 3170 3169 0 3171 3172 0 3172 3173 1 3173 3171 0 3172 3174 0 3174 3173 0 3175 3176 0
		 3176 3177 1 3177 3175 0 3176 3178 0 3178 3177 0 3179 3180 0 3180 3181 1 3181 3179 0
		 3180 3182 0 3182 3181 0 3183 3184 0 3184 3185 1 3185 3183 0 3184 3186 0 3186 3185 0
		 3187 3188 0 3188 3189 1 3189 3187 0 3188 3190 0 3190 3189 0 3191 3192 0 3192 3193 1
		 3193 3191 0 3192 3194 0 3194 3193 0 3195 3196 0 3196 3197 1 3197 3195 0 3196 3198 0
		 3198 3197 0 3199 3200 0 3200 3201 1 3201 3199 0 3200 3202 0 3202 3201 0 3203 3204 0;
	setAttr ".ed[3818:3983]" 3204 3205 1 3205 3203 0 3204 3206 0 3206 3205 0 3207 3208 0
		 3208 3209 1 3209 3207 0 3208 3210 0 3210 3209 0 3211 3212 0 3212 3213 1 3213 3211 0
		 3212 3214 0 3214 3213 0 3215 3216 0 3216 3217 1 3217 3215 0 3216 3218 0 3218 3217 0
		 3219 3220 0 3220 3221 1 3221 3219 0 3220 3222 0 3222 3221 0 3223 3224 0 3224 3225 1
		 3225 3223 0 3224 3226 0 3226 3225 0 3227 3228 0 3228 3229 1 3229 3227 0 3228 3230 0
		 3230 3229 0 3231 3232 0 3232 3233 1 3233 3231 0 3232 3234 0 3234 3233 0 3235 3236 0
		 3236 3237 1 3237 3235 0 3236 3238 0 3238 3237 0 3239 3240 0 3240 3241 1 3241 3239 0
		 3240 3242 0 3242 3241 0 3243 3244 0 3244 3245 1 3245 3243 0 3244 3246 0 3246 3245 0
		 3247 3248 0 3248 3249 1 3249 3247 0 3248 3250 0 3250 3249 0 3251 3252 0 3252 3253 1
		 3253 3251 0 3252 3254 0 3254 3253 0 3255 3256 0 3256 3257 1 3257 3255 0 3256 3258 0
		 3258 3257 0 3259 3260 0 3260 3261 1 3261 3259 0 3260 3262 0 3262 3261 0 3263 3264 0
		 3264 3265 1 3265 3263 0 3264 3266 0 3266 3265 0 3267 3268 0 3268 3269 1 3269 3267 0
		 3268 3270 0 3270 3269 0 3271 3272 0 3272 3273 1 3273 3271 0 3272 3274 0 3274 3273 0
		 3275 3276 0 3276 3277 1 3277 3275 0 3276 3278 0 3278 3277 0 3279 3280 0 3280 3281 1
		 3281 3279 0 3280 3282 0 3282 3281 0 3283 3284 0 3284 3285 1 3285 3283 0 3284 3286 0
		 3286 3285 0 3287 3288 0 3288 3289 1 3289 3287 0 3288 3290 0 3290 3289 0 3291 3292 0
		 3292 3293 1 3293 3291 0 3292 3294 0 3294 3293 0 3295 3296 0 3296 3297 1 3297 3295 0
		 3296 3298 0 3298 3297 0 3299 3300 0 3300 3301 1 3301 3299 0 3300 3302 0 3302 3301 0
		 3303 3304 0 3304 3305 1 3305 3303 0 3304 3306 0 3306 3305 0 3307 3308 0 3308 3309 1
		 3309 3307 0 3308 3310 0 3310 3309 0 3311 3312 0 3312 3313 1 3313 3311 0 3312 3314 0
		 3314 3313 0 3315 3316 0 3316 3317 1 3317 3315 0 3316 3318 0 3318 3317 0 3319 3320 0
		 3320 3321 1 3321 3319 0 3320 3322 0 3322 3321 0 3323 3324 0 3324 3325 1 3325 3323 0
		 3324 3326 0 3326 3325 0 3327 3328 0 3328 3329 1 3329 3327 0 3328 3330 0 3330 3329 0
		 3331 3332 0 3332 3333 1 3333 3331 0 3332 3334 0 3334 3333 0 3335 3336 0 3336 3337 1;
	setAttr ".ed[3984:4149]" 3337 3335 0 3336 3338 0 3338 3337 0 3339 3340 0 3340 3341 1
		 3341 3339 0 3340 3342 0 3342 3341 0 3343 3344 0 3344 3345 1 3345 3343 0 3344 3346 0
		 3346 3345 0 3347 3348 0 3348 3349 1 3349 3347 0 3348 3350 0 3350 3349 0 3351 3352 0
		 3352 3353 1 3353 3351 0 3352 3354 0 3354 3353 0 3355 3356 0 3356 3357 1 3357 3355 0
		 3356 3358 0 3358 3357 0 3359 3360 0 3360 3361 1 3361 3359 0 3360 3362 0 3362 3361 0
		 3363 3364 0 3364 3365 1 3365 3363 0 3364 3366 0 3366 3365 0 3367 3368 0 3368 3369 1
		 3369 3367 0 3368 3370 0 3370 3369 0 3371 3372 0 3372 3373 1 3373 3371 0 3372 3374 0
		 3374 3373 0 3375 3376 0 3376 3377 1 3377 3375 0 3376 3378 0 3378 3377 0 3379 3380 0
		 3380 3381 1 3381 3379 0 3380 3382 0 3382 3381 0 3383 3384 0 3384 3385 1 3385 3383 0
		 3384 3386 0 3386 3385 0 3387 3388 0 3388 3389 1 3389 3387 0 3388 3390 0 3390 3389 0
		 3391 3392 0 3392 3393 1 3393 3391 0 3392 3394 0 3394 3393 0 3395 3396 0 3396 3397 1
		 3397 3395 0 3396 3398 0 3398 3397 0 3399 3400 0 3400 3401 1 3401 3399 0 3400 3402 0
		 3402 3401 0 3403 3404 0 3404 3405 1 3405 3403 0 3404 3406 0 3406 3405 0 3407 3408 0
		 3408 3409 1 3409 3407 0 3408 3410 0 3410 3409 0 3411 3412 0 3412 3413 1 3413 3411 0
		 3412 3414 0 3414 3413 0 3415 3416 0 3416 3417 1 3417 3415 0 3416 3418 0 3418 3417 0
		 3419 3420 0 3420 3421 1 3421 3419 0 3420 3422 0 3422 3421 0 3423 3424 0 3424 3425 1
		 3425 3423 0 3424 3426 0 3426 3425 0 3427 3428 0 3428 3429 1 3429 3427 0 3428 3430 0
		 3430 3429 0 3431 3432 0 3432 3433 1 3433 3431 0 3432 3434 0 3434 3433 0 3435 3436 0
		 3436 3437 1 3437 3435 0 3436 3438 0 3438 3437 0 3439 3440 0 3440 3441 1 3441 3439 0
		 3440 3442 0 3442 3441 0 3443 3444 0 3444 3445 1 3445 3443 0 3444 3446 0 3446 3445 0
		 3447 3448 0 3448 3449 1 3449 3447 0 3448 3450 0 3450 3449 0 3451 3452 0 3452 3453 1
		 3453 3451 0 3452 3454 0 3454 3453 0 3455 3456 0 3456 3457 1 3457 3455 0 3456 3458 0
		 3458 3457 0 3459 3460 0 3460 3461 1 3461 3459 0 3460 3462 0 3462 3461 0 3463 3464 0
		 3464 3465 1 3465 3463 0 3464 3466 0 3466 3465 0 3467 3468 0 3468 3469 1 3469 3467 0;
	setAttr ".ed[4150:4315]" 3468 3470 0 3470 3469 0 3471 3472 0 3472 3473 1 3473 3471 0
		 3472 3474 0 3474 3473 0 3475 3476 0 3476 3477 1 3477 3475 0 3476 3478 0 3478 3477 0
		 3479 3480 0 3480 3481 1 3481 3479 0 3480 3482 0 3482 3481 0 3483 3484 0 3484 3485 1
		 3485 3483 0 3484 3486 0 3486 3485 0 3487 3488 0 3488 3489 1 3489 3487 0 3488 3490 0
		 3490 3489 0 3491 3492 0 3492 3493 1 3493 3491 0 3492 3494 0 3494 3493 0 3495 3496 0
		 3496 3497 1 3497 3495 0 3496 3498 0 3498 3497 0 3499 3500 0 3500 3501 1 3501 3499 0
		 3500 3502 0 3502 3501 0 3503 3504 0 3504 3505 1 3505 3503 0 3504 3506 0 3506 3505 0
		 3507 3508 1 3508 3509 0 3509 3507 0 3510 3508 0 3507 3510 0 3511 3512 1 3512 3510 0
		 3510 3511 0 3513 3512 0 3511 3513 0 3514 3515 0 3515 3516 1 3516 3514 0 3515 3517 0
		 3517 3516 0 3518 3519 0 3519 3520 1 3520 3518 0 3519 3521 0 3521 3520 0 3522 3523 0
		 3523 3524 1 3524 3522 0 3523 3525 0 3525 3524 0 3526 3527 0 3527 3528 1 3528 3526 0
		 3527 3529 0 3529 3528 0 3530 3531 0 3531 3532 1 3532 3530 0 3531 3533 0 3533 3532 0
		 3534 3535 0 3535 3536 1 3536 3534 0 3535 3537 0 3537 3536 0 3538 3539 0 3539 3540 1
		 3540 3538 0 3539 3541 0 3541 3540 0 3542 3543 0 3543 3544 1 3544 3542 0 3543 3545 0
		 3545 3544 0 3546 3547 0 3547 3548 1 3548 3546 0 3547 3549 0 3549 3548 0 3550 3551 0
		 3551 3552 1 3552 3550 0 3551 3553 0 3553 3552 0 3554 3555 0 3555 3556 1 3556 3554 0
		 3555 3557 0 3557 3556 0 3558 3559 0 3559 3560 1 3560 3558 0 3559 3561 0 3561 3560 0
		 3562 3563 0 3563 3564 1 3564 3562 0 3563 3565 0 3565 3564 0 3566 3567 0 3567 3568 1
		 3568 3566 0 3567 3569 0 3569 3568 0 3570 3571 0 3571 3572 1 3572 3570 0 3571 3573 0
		 3573 3572 0 3574 3575 0 3575 3576 1 3576 3574 0 3575 3577 0 3577 3576 0 3578 3579 0
		 3579 3580 1 3580 3578 0 3579 3581 0 3581 3580 0 3582 3583 0 3583 3584 1 3584 3582 0
		 3583 3585 0 3585 3584 0 3586 3587 0 3587 3588 1 3588 3586 0 3587 3589 0 3589 3588 0
		 3590 3591 0 3591 3592 1 3592 3590 0 3591 3593 0 3593 3592 0 3594 3595 0 3595 3596 1
		 3596 3594 0 3595 3597 0 3597 3596 0 3598 3599 0 3599 3600 1 3600 3598 0 3599 3601 0;
	setAttr ".ed[4316:4481]" 3601 3600 0 3602 3603 0 3603 3604 1 3604 3602 0 3603 3605 0
		 3605 3604 0 3606 3607 0 3607 3608 1 3608 3606 0 3607 3609 0 3609 3608 0 3610 3611 0
		 3611 3612 1 3612 3610 0 3611 3613 0 3613 3612 0 3614 3615 0 3615 3616 1 3616 3614 0
		 3615 3617 0 3617 3616 0 3618 3619 0 3619 3620 1 3620 3618 0 3619 3621 0 3621 3620 0
		 3622 3623 0 3623 3624 1 3624 3622 0 3623 3625 0 3625 3624 0 3626 3627 0 3627 3628 1
		 3628 3626 0 3627 3629 0 3629 3628 0 3630 3631 0 3631 3632 1 3632 3630 0 3631 3633 0
		 3633 3632 0 3634 3635 0 3635 3636 1 3636 3634 0 3635 3637 0 3637 3636 0 3638 3639 0
		 3639 3640 1 3640 3638 0 3639 3641 0 3641 3640 0 3642 3643 0 3643 3644 1 3644 3642 0
		 3643 3645 0 3645 3644 0 3646 3647 0 3647 3648 1 3648 3646 0 3647 3649 0 3649 3648 0
		 3650 3651 0 3651 3652 1 3652 3650 0 3651 3653 0 3653 3652 0 3654 3655 0 3655 3656 1
		 3656 3654 0 3655 3657 0 3657 3656 0 3658 3659 0 3659 3660 1 3660 3658 0 3659 3661 0
		 3661 3660 0 3662 3663 0 3663 3664 1 3664 3662 0 3663 3665 0 3665 3664 0 3666 3667 0
		 3667 3668 1 3668 3666 0 3667 3669 0 3669 3668 0 3670 3671 0 3671 3672 1 3672 3670 0
		 3671 3673 0 3673 3672 0 3674 3675 0 3675 3676 1 3676 3674 0 3675 3677 0 3677 3676 0
		 3678 3679 0 3679 3680 1 3680 3678 0 3679 3681 0 3681 3680 0 3682 3683 0 3683 3684 1
		 3684 3682 0 3683 3685 0 3685 3684 0 3686 3687 0 3687 3688 1 3688 3686 0 3687 3689 0
		 3689 3688 0 3690 3691 0 3691 3692 1 3692 3690 0 3691 3693 0 3693 3692 0 3694 3695 0
		 3695 3696 1 3696 3694 0 3695 3697 0 3697 3696 0 3698 3699 0 3699 3700 1 3700 3698 0
		 3699 3701 0 3701 3700 0 3702 3703 0 3703 3704 1 3704 3702 0 3703 3705 0 3705 3704 0
		 3706 3707 0 3707 3708 1 3708 3706 0 3707 3709 0 3709 3708 0 3710 3711 0 3711 3712 1
		 3712 3710 0 3711 3713 0 3713 3712 0 3714 3715 0 3715 3716 1 3716 3714 0 3715 3717 0
		 3717 3716 0 3718 3719 0 3719 3720 1 3720 3718 0 3719 3721 0 3721 3720 0 3722 3723 0
		 3723 3724 1 3724 3722 0 3723 3725 0 3725 3724 0 3726 3727 0 3727 3728 1 3728 3726 0
		 3727 3729 0 3729 3728 0 3730 3731 0 3731 3732 1 3732 3730 0 3731 3733 0 3733 3732 0;
	setAttr ".ed[4482:4624]" 3734 3735 0 3735 3736 1 3736 3734 0 3735 3737 0 3737 3736 0
		 3738 3739 0 3739 3740 1 3740 3738 0 3739 3741 0 3741 3740 0 3742 3743 0 3743 3744 1
		 3744 3742 0 3743 3745 0 3745 3744 0 3746 3747 0 3747 3748 1 3748 3746 0 3747 3749 0
		 3749 3748 0 3750 3751 0 3751 3752 1 3752 3750 0 3751 3753 0 3753 3752 0 3754 3755 0
		 3755 3756 1 3756 3754 0 3755 3757 0 3757 3756 0 3758 3759 0 3759 3760 1 3760 3758 0
		 3759 3761 0 3761 3760 0 3762 3763 0 3763 3764 1 3764 3762 0 3763 3765 0 3765 3764 0
		 3766 3767 0 3767 3768 1 3768 3766 0 3767 3769 0 3769 3768 0 3770 3771 0 3771 3772 1
		 3772 3770 0 3771 3773 0 3773 3772 0 3774 3775 0 3775 3776 1 3776 3774 0 3775 3777 0
		 3777 3776 0 3778 3779 0 3779 3780 1 3780 3778 0 3779 3781 0 3781 3780 0 3782 3783 0
		 3783 3784 1 3784 3782 0 3783 3785 0 3785 3784 1 3786 3784 0 3785 3786 0 3787 3788 0
		 3788 3789 1 3789 3787 0 3788 3790 0 3790 3789 1 3790 3791 1 3791 3789 0 3790 3792 0
		 3792 3791 0 3793 3794 0 3794 3795 1 3795 3793 0 3794 3796 0 3796 3795 1 3796 3797 1
		 3797 3795 0 3796 3798 0 3798 3797 0 3799 3800 0 3800 3801 0 3801 3799 1 3801 3802 1
		 3802 3799 0 3801 3803 0 3803 3802 0 3804 3805 0 3805 3806 1 3806 3804 0 3805 3807 0
		 3807 3806 1 3807 3808 0 3808 3806 0 3809 3810 1 3810 3811 0 3811 3809 0 3812 3810 0
		 3809 3812 1 3813 3812 1 3809 3813 0 3814 3812 0 3813 3814 1 3815 3814 1 3813 3815 0
		 3816 3814 0 3815 3816 0 3817 3818 1 3818 3819 0 3819 3817 0 3820 3818 1 3817 3820 0
		 3820 3821 1 3821 3818 0 3822 3821 1 3820 3822 0 3822 3823 1 3823 3821 0 3822 3824 0
		 3824 3823 0 3825 3826 0 3826 3827 1 3827 3825 0 3826 3828 1 3828 3827 0 3826 3829 0
		 3829 3828 1 3829 3830 0 3830 3828 0 3831 3832 1 3832 3833 0 3833 3831 0 3834 3832 0
		 3831 3834 1 3835 3834 1 3831 3835 0 3836 3834 0 3835 3836 0;
	setAttr -s 3847 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[166:331]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[332:497]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[498:663]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[664:829]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[830:995]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[996:1161]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1162:1327]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1328:1493]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1494:1659]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1660:1825]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1826:1991]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[1992:2157]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2158:2323]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2324:2489]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2490:2655]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2656:2821]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2822:2987]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[2988:3153]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[3154:3319]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[3320:3485]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[3486:3651]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[3652:3817]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20;
	setAttr ".n[3818:3846]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 1801 -ch 5403 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		mu 1 3 0 1 2
		mc 0 3 0 1 2
		f 3 3 4 5
		mu 0 3 3 4 5
		mu 1 3 3 4 5
		mc 0 3 3 4 5
		f 3 6 7 8
		mu 0 3 6 7 8
		mu 1 3 6 7 8
		mc 0 3 6 7 8
		f 3 9 10 11
		mu 0 3 9 10 11
		mu 1 3 9 10 11
		mc 0 3 9 10 11
		f 3 12 13 14
		mu 0 3 12 13 14
		mu 1 3 12 13 14
		mc 0 3 12 13 14
		f 3 15 16 17
		mu 0 3 15 16 17
		mu 1 3 15 16 17
		mc 0 3 15 16 17
		f 3 18 19 20
		mu 0 3 18 19 20
		mu 1 3 18 19 20
		mc 0 3 18 19 20
		f 3 21 22 23
		mu 0 3 21 22 23
		mu 1 3 21 22 23
		mc 0 3 21 22 23
		f 3 24 25 26
		mu 0 3 24 25 26
		mu 1 3 24 25 26
		mc 0 3 24 25 26
		f 3 27 28 29
		mu 0 3 27 28 29
		mu 1 3 27 28 29
		mc 0 3 27 28 29
		f 3 30 31 32
		mu 0 3 30 31 32
		mu 1 3 30 31 32
		mc 0 3 30 31 32
		f 3 33 34 35
		mu 0 3 33 34 35
		mu 1 3 33 34 35
		mc 0 3 33 34 35
		f 3 36 37 38
		mu 0 3 36 37 38
		mu 1 3 36 37 38
		mc 0 3 36 37 38
		f 3 39 40 41
		mu 0 3 39 40 41
		mu 1 3 39 40 41
		mc 0 3 39 40 41
		f 3 42 43 44
		mu 0 3 42 43 44
		mu 1 3 42 43 44
		mc 0 3 42 43 44
		f 3 45 46 47
		mu 0 3 45 46 47
		mu 1 3 45 46 47
		mc 0 3 45 46 47
		f 3 48 49 50
		mu 0 3 48 49 50
		mu 1 3 48 49 50
		mc 0 3 48 49 50
		f 3 51 52 53
		mu 0 3 51 52 53
		mu 1 3 51 52 53
		mc 0 3 51 52 53
		f 3 54 55 56
		mu 0 3 54 55 56
		mu 1 3 54 55 56
		mc 0 3 54 55 56
		f 3 57 58 59
		mu 0 3 57 58 59
		mu 1 3 57 58 59
		mc 0 3 57 58 59
		f 3 60 61 62
		mu 0 3 60 61 62
		mu 1 3 60 61 62
		mc 0 3 60 61 62
		f 3 63 64 65
		mu 0 3 63 64 65
		mu 1 3 63 64 65
		mc 0 3 63 64 65
		f 3 66 67 68
		mu 0 3 66 67 68
		mu 1 3 66 67 68
		mc 0 3 66 67 68
		f 3 69 70 71
		mu 0 3 69 70 71
		mu 1 3 69 70 71
		mc 0 3 69 70 71
		f 3 72 73 74
		mu 0 3 72 73 74
		mu 1 3 72 73 74
		mc 0 3 72 73 74
		f 3 75 76 77
		mu 0 3 75 76 77
		mu 1 3 75 76 77
		mc 0 3 75 76 77
		f 3 78 79 80
		mu 0 3 78 79 80
		mu 1 3 78 79 80
		mc 0 3 78 79 80
		f 3 81 82 83
		mu 0 3 81 82 83
		mu 1 3 81 82 83
		mc 0 3 81 82 83
		f 3 84 85 86
		mu 0 3 84 85 86
		mu 1 3 84 85 86
		mc 0 3 84 85 86
		f 3 87 88 89
		mu 0 3 87 88 89
		mu 1 3 87 88 89
		mc 0 3 87 88 89
		f 3 90 91 92
		mu 0 3 90 91 92
		mu 1 3 90 91 92
		mc 0 3 90 91 92
		f 3 93 94 95
		mu 0 3 93 94 95
		mu 1 3 93 94 95
		mc 0 3 93 94 95
		f 3 96 97 98
		mu 0 3 96 97 98
		mu 1 3 96 97 98
		mc 0 3 96 97 98
		f 3 99 100 101
		mu 0 3 99 100 101
		mu 1 3 99 100 101
		mc 0 3 99 100 101
		f 3 102 103 104
		mu 0 3 102 103 104
		mu 1 3 102 103 104
		mc 0 3 102 103 104
		f 3 105 106 107
		mu 0 3 105 106 107
		mu 1 3 105 106 107
		mc 0 3 105 106 107
		f 3 108 109 110
		mu 0 3 108 109 110
		mu 1 3 108 109 110
		mc 0 3 108 109 110
		f 3 111 112 113
		mu 0 3 111 112 113
		mu 1 3 111 112 113
		mc 0 3 111 112 113
		f 3 114 115 116
		mu 0 3 114 115 116
		mu 1 3 114 115 116
		mc 0 3 114 115 116
		f 3 117 118 119
		mu 0 3 117 118 119
		mu 1 3 117 118 119
		mc 0 3 117 118 119
		f 3 120 121 122
		mu 0 3 120 121 122
		mu 1 3 120 121 122
		mc 0 3 120 121 122
		f 3 123 124 125
		mu 0 3 123 124 125
		mu 1 3 123 124 125
		mc 0 3 123 124 125
		f 3 126 127 128
		mu 0 3 126 127 128
		mu 1 3 126 127 128
		mc 0 3 126 127 128
		f 3 129 130 131
		mu 0 3 129 130 131
		mu 1 3 129 130 131
		mc 0 3 129 130 131
		f 3 132 133 134
		mu 0 3 132 133 134
		mu 1 3 132 133 134
		mc 0 3 132 133 134
		f 3 135 136 137
		mu 0 3 135 136 137
		mu 1 3 135 136 137
		mc 0 3 135 136 137
		f 3 138 139 140
		mu 0 3 138 139 140
		mu 1 3 138 139 140
		mc 0 3 138 139 140
		f 3 141 142 143
		mu 0 3 141 142 143
		mu 1 3 141 142 143
		mc 0 3 141 142 143
		f 3 144 145 146
		mu 0 3 144 145 146
		mu 1 3 144 145 146
		mc 0 3 144 145 146
		f 3 147 148 149
		mu 0 3 147 148 149
		mu 1 3 147 148 149
		mc 0 3 147 148 149
		f 3 150 151 152
		mu 0 3 150 151 152
		mu 1 3 150 151 152
		mc 0 3 150 151 152
		f 3 153 154 155
		mu 0 3 153 154 155
		mu 1 3 153 154 155
		mc 0 3 153 154 155
		f 3 156 157 158
		mu 0 3 156 157 158
		mu 1 3 156 157 158
		mc 0 3 156 157 158
		f 3 159 160 161
		mu 0 3 159 160 161
		mu 1 3 159 160 161
		mc 0 3 159 160 161
		f 3 162 163 164
		mu 0 3 162 163 164
		mu 1 3 162 163 164
		mc 0 3 162 163 164
		f 3 165 166 167
		mu 0 3 165 166 167
		mu 1 3 165 166 167
		mc 0 3 165 166 167
		f 3 168 169 170
		mu 0 3 168 169 170
		mu 1 3 168 169 170
		mc 0 3 168 169 170
		f 3 171 172 173
		mu 0 3 171 172 173
		mu 1 3 171 172 173
		mc 0 3 171 172 173
		f 3 174 175 176
		mu 0 3 174 175 176
		mu 1 3 174 175 176
		mc 0 3 174 175 176
		f 3 177 178 179
		mu 0 3 177 178 179
		mu 1 3 177 178 179
		mc 0 3 177 178 179
		f 3 180 181 182
		mu 0 3 180 181 182
		mu 1 3 180 181 182
		mc 0 3 180 181 182
		f 3 183 184 185
		mu 0 3 183 184 185
		mu 1 3 183 184 185
		mc 0 3 183 184 185
		f 3 186 187 188
		mu 0 3 186 187 188
		mu 1 3 186 187 188
		mc 0 3 186 187 188
		f 3 189 190 191
		mu 0 3 189 190 191
		mu 1 3 189 190 191
		mc 0 3 189 190 191
		f 3 192 193 194
		mu 0 3 192 193 194
		mu 1 3 192 193 194
		mc 0 3 192 193 194
		f 3 195 196 197
		mu 0 3 195 196 197
		mu 1 3 195 196 197
		mc 0 3 195 196 197
		f 3 198 199 200
		mu 0 3 198 199 200
		mu 1 3 198 199 200
		mc 0 3 198 199 200
		f 3 201 202 203
		mu 0 3 201 202 203
		mu 1 3 201 202 203
		mc 0 3 201 202 203
		f 3 204 205 206
		mu 0 3 204 205 206
		mu 1 3 204 205 206
		mc 0 3 204 205 206
		f 3 207 208 209
		mu 0 3 207 208 209
		mu 1 3 207 208 209
		mc 0 3 207 208 209
		f 3 210 211 212
		mu 0 3 210 211 212
		mu 1 3 210 211 212
		mc 0 3 210 211 212
		f 3 213 214 215
		mu 0 3 213 214 215
		mu 1 3 213 214 215
		mc 0 3 213 214 215
		f 3 216 217 218
		mu 0 3 216 217 218
		mu 1 3 216 217 218
		mc 0 3 216 217 218
		f 3 219 220 221
		mu 0 3 219 220 221
		mu 1 3 219 220 221
		mc 0 3 219 220 221
		f 3 222 223 224
		mu 0 3 222 223 224
		mu 1 3 222 223 224
		mc 0 3 222 223 224
		f 3 225 226 227
		mu 0 3 225 226 227
		mu 1 3 225 226 227
		mc 0 3 225 226 227
		f 3 228 229 230
		mu 0 3 228 229 230
		mu 1 3 228 229 230
		mc 0 3 228 229 230
		f 3 231 232 233
		mu 0 3 231 232 233
		mu 1 3 231 232 233
		mc 0 3 231 232 233
		f 3 234 235 236
		mu 0 3 234 235 236
		mu 1 3 234 235 236
		mc 0 3 234 235 236
		f 3 237 238 239
		mu 0 3 237 238 239
		mu 1 3 237 238 239
		mc 0 3 237 238 239
		f 3 240 241 242
		mu 0 3 240 241 242
		mu 1 3 240 241 242
		mc 0 3 240 241 242
		f 3 243 244 245
		mu 0 3 243 244 245
		mu 1 3 243 244 245
		mc 0 3 243 244 245
		f 3 246 247 248
		mu 0 3 246 247 248
		mu 1 3 246 247 248
		mc 0 3 246 247 248
		f 3 249 250 251
		mu 0 3 249 250 251
		mu 1 3 249 250 251
		mc 0 3 249 250 251
		f 3 252 253 254
		mu 0 3 252 253 254
		mu 1 3 252 253 254
		mc 0 3 252 253 254
		f 3 255 256 257
		mu 0 3 255 256 257
		mu 1 3 255 256 257
		mc 0 3 255 256 257
		f 3 258 259 260
		mu 0 3 258 259 260
		mu 1 3 258 259 260
		mc 0 3 258 259 260
		f 3 261 262 263
		mu 0 3 261 262 263
		mu 1 3 261 262 263
		mc 0 3 261 262 263
		f 3 264 265 266
		mu 0 3 264 265 266
		mu 1 3 264 265 266
		mc 0 3 264 265 266
		f 3 267 268 269
		mu 0 3 267 268 269
		mu 1 3 267 268 269
		mc 0 3 267 268 269
		f 3 270 271 272
		mu 0 3 270 271 272
		mu 1 3 270 271 272
		mc 0 3 270 271 272
		f 3 273 274 275
		mu 0 3 273 274 275
		mu 1 3 273 274 275
		mc 0 3 273 274 275
		f 3 276 277 278
		mu 0 3 276 277 278
		mu 1 3 276 277 278
		mc 0 3 276 277 278
		f 3 279 280 281
		mu 0 3 279 280 281
		mu 1 3 279 280 281
		mc 0 3 279 280 281
		f 3 282 283 284
		mu 0 3 282 283 284
		mu 1 3 282 283 284
		mc 0 3 282 283 284
		f 3 285 286 287
		mu 0 3 285 286 287
		mu 1 3 285 286 287
		mc 0 3 285 286 287
		f 3 288 289 290
		mu 0 3 288 289 290
		mu 1 3 288 289 290
		mc 0 3 288 289 290
		f 3 291 292 293
		mu 0 3 291 292 293
		mu 1 3 291 292 293
		mc 0 3 291 292 293
		f 3 294 295 296
		mu 0 3 294 295 296
		mu 1 3 294 295 296
		mc 0 3 294 295 296
		f 3 297 298 299
		mu 0 3 297 298 299
		mu 1 3 297 298 299
		mc 0 3 297 298 299
		f 3 300 301 302
		mu 0 3 300 301 302
		mu 1 3 300 301 302
		mc 0 3 300 301 302
		f 3 303 304 305
		mu 0 3 303 304 305
		mu 1 3 303 304 305
		mc 0 3 303 304 305
		f 3 306 307 308
		mu 0 3 306 307 308
		mu 1 3 306 307 308
		mc 0 3 306 307 308
		f 3 309 310 311
		mu 0 3 309 310 311
		mu 1 3 309 310 311
		mc 0 3 309 310 311
		f 3 312 313 314
		mu 0 3 312 313 314
		mu 1 3 312 313 314
		mc 0 3 312 313 314
		f 3 315 316 317
		mu 0 3 315 316 317
		mu 1 3 315 316 317
		mc 0 3 315 316 317
		f 3 318 319 320
		mu 0 3 318 319 320
		mu 1 3 318 319 320
		mc 0 3 318 319 320
		f 3 321 322 323
		mu 0 3 321 322 323
		mu 1 3 321 322 323
		mc 0 3 321 322 323
		f 3 324 325 326
		mu 0 3 324 325 326
		mu 1 3 324 325 326
		mc 0 3 324 325 326
		f 3 327 328 329
		mu 0 3 327 328 329
		mu 1 3 327 328 329
		mc 0 3 327 328 329
		f 3 330 331 332
		mu 0 3 330 331 332
		mu 1 3 330 331 332
		mc 0 3 330 331 332
		f 3 333 334 335
		mu 0 3 333 334 335
		mu 1 3 333 334 335
		mc 0 3 333 334 335
		f 3 336 337 338
		mu 0 3 336 337 338
		mu 1 3 336 337 338
		mc 0 3 336 337 338
		f 3 339 340 341
		mu 0 3 339 340 341
		mu 1 3 339 340 341
		mc 0 3 339 340 341
		f 3 342 343 344
		mu 0 3 342 343 344
		mu 1 3 342 343 344
		mc 0 3 342 343 344
		f 3 345 346 347
		mu 0 3 345 346 347
		mu 1 3 345 346 347
		mc 0 3 345 346 347
		f 3 348 349 350
		mu 0 3 348 349 350
		mu 1 3 348 349 350
		mc 0 3 348 349 350
		f 3 351 352 353
		mu 0 3 351 352 353
		mu 1 3 351 352 353
		mc 0 3 351 352 353
		f 3 354 355 356
		mu 0 3 354 355 356
		mu 1 3 354 355 356
		mc 0 3 354 355 356
		f 3 357 358 359
		mu 0 3 357 358 359
		mu 1 3 357 358 359
		mc 0 3 357 358 359
		f 3 360 361 362
		mu 0 3 360 361 362
		mu 1 3 360 361 362
		mc 0 3 360 361 362
		f 3 363 364 365
		mu 0 3 363 364 365
		mu 1 3 363 364 365
		mc 0 3 363 364 365
		f 3 366 367 368
		mu 0 3 366 367 368
		mu 1 3 366 367 368
		mc 0 3 366 367 368
		f 3 369 370 371
		mu 0 3 369 370 371
		mu 1 3 369 370 371
		mc 0 3 369 370 371
		f 3 372 373 374
		mu 0 3 372 373 374
		mu 1 3 372 373 374
		mc 0 3 372 373 374
		f 3 375 376 377
		mu 0 3 375 376 377
		mu 1 3 375 376 377
		mc 0 3 375 376 377
		f 3 378 379 380
		mu 0 3 378 379 380
		mu 1 3 378 379 380
		mc 0 3 378 379 380
		f 3 381 382 383
		mu 0 3 381 382 383
		mu 1 3 381 382 383
		mc 0 3 381 382 383
		f 3 384 385 386
		mu 0 3 384 385 386
		mu 1 3 384 385 386
		mc 0 3 384 385 386
		f 3 387 388 389
		mu 0 3 387 388 389
		mu 1 3 387 388 389
		mc 0 3 387 388 389
		f 3 390 391 392
		mu 0 3 390 391 392
		mu 1 3 390 391 392
		mc 0 3 390 391 392
		f 3 393 394 395
		mu 0 3 393 394 395
		mu 1 3 393 394 395
		mc 0 3 393 394 395
		f 3 396 397 398
		mu 0 3 396 397 398
		mu 1 3 396 397 398
		mc 0 3 396 397 398
		f 3 399 400 401
		mu 0 3 399 400 401
		mu 1 3 399 400 401
		mc 0 3 399 400 401
		f 3 402 403 404
		mu 0 3 402 403 404
		mu 1 3 402 403 404
		mc 0 3 402 403 404
		f 3 405 406 407
		mu 0 3 405 406 407
		mu 1 3 405 406 407
		mc 0 3 405 406 407
		f 3 408 409 410
		mu 0 3 408 409 410
		mu 1 3 408 409 410
		mc 0 3 408 409 410
		f 3 411 412 413
		mu 0 3 411 412 413
		mu 1 3 411 412 413
		mc 0 3 411 412 413
		f 3 414 415 416
		mu 0 3 414 415 416
		mu 1 3 414 415 416
		mc 0 3 414 415 416
		f 3 417 418 419
		mu 0 3 417 418 419
		mu 1 3 417 418 419
		mc 0 3 417 418 419
		f 3 420 421 422
		mu 0 3 420 421 422
		mu 1 3 420 421 422
		mc 0 3 420 421 422
		f 3 423 424 425
		mu 0 3 423 424 425
		mu 1 3 423 424 425
		mc 0 3 423 424 425
		f 3 426 427 428
		mu 0 3 426 427 428
		mu 1 3 426 427 428
		mc 0 3 426 427 428
		f 3 429 430 431
		mu 0 3 429 430 431
		mu 1 3 429 430 431
		mc 0 3 429 430 431
		f 3 432 433 434
		mu 0 3 432 433 434
		mu 1 3 432 433 434
		mc 0 3 432 433 434
		f 3 435 436 437
		mu 0 3 435 436 437
		mu 1 3 435 436 437
		mc 0 3 435 436 437
		f 3 438 439 440
		mu 0 3 438 439 440
		mu 1 3 438 439 440
		mc 0 3 438 439 440
		f 3 441 442 443
		mu 0 3 441 442 443
		mu 1 3 441 442 443
		mc 0 3 441 442 443
		f 3 444 445 446
		mu 0 3 444 445 446
		mu 1 3 444 445 446
		mc 0 3 444 445 446
		f 3 447 448 449
		mu 0 3 447 448 449
		mu 1 3 447 448 449
		mc 0 3 447 448 449
		f 3 450 451 452
		mu 0 3 450 451 452
		mu 1 3 450 451 452
		mc 0 3 450 451 452
		f 3 453 454 455
		mu 0 3 453 454 455
		mu 1 3 453 454 455
		mc 0 3 453 454 455
		f 3 456 457 458
		mu 0 3 456 457 458
		mu 1 3 456 457 458
		mc 0 3 456 457 458
		f 3 459 460 461
		mu 0 3 459 460 461
		mu 1 3 459 460 461
		mc 0 3 459 460 461
		f 3 462 463 464
		mu 0 3 462 463 464
		mu 1 3 462 463 464
		mc 0 3 462 463 464
		f 3 465 466 467
		mu 0 3 465 466 467
		mu 1 3 465 466 467
		mc 0 3 465 466 467
		f 3 468 469 470
		mu 0 3 468 469 470
		mu 1 3 468 469 470
		mc 0 3 468 469 470
		f 3 471 472 473
		mu 0 3 471 472 473
		mu 1 3 471 472 473
		mc 0 3 471 472 473
		f 3 474 475 476
		mu 0 3 474 475 476
		mu 1 3 474 475 476
		mc 0 3 474 475 476
		f 3 477 478 479
		mu 0 3 477 478 479
		mu 1 3 477 478 479
		mc 0 3 477 478 479
		f 3 480 481 482
		mu 0 3 480 481 482
		mu 1 3 480 481 482
		mc 0 3 480 481 482
		f 3 483 484 485
		mu 0 3 483 484 485
		mu 1 3 483 484 485
		mc 0 3 483 484 485
		f 3 486 487 488
		mu 0 3 486 487 488
		mu 1 3 486 487 488
		mc 0 3 486 487 488
		f 3 489 490 491
		mu 0 3 489 490 491
		mu 1 3 489 490 491
		mc 0 3 489 490 491
		f 3 492 493 494
		mu 0 3 492 493 494
		mu 1 3 492 493 494
		mc 0 3 492 493 494
		f 3 495 496 497
		mu 0 3 495 496 497
		mu 1 3 495 496 497
		mc 0 3 495 496 497
		f 3 498 499 500
		mu 0 3 498 499 500
		mu 1 3 498 499 500
		mc 0 3 498 499 500
		f 3 501 502 503
		mu 0 3 501 502 503
		mu 1 3 501 502 503
		mc 0 3 501 502 503
		f 3 504 505 506
		mu 0 3 504 505 506
		mu 1 3 504 505 506
		mc 0 3 504 505 506
		f 3 507 508 509
		mu 0 3 507 508 509
		mu 1 3 507 508 509
		mc 0 3 507 508 509
		f 3 510 511 512
		mu 0 3 510 511 512
		mu 1 3 510 511 512
		mc 0 3 510 511 512
		f 3 513 514 515
		mu 0 3 513 514 515
		mu 1 3 513 514 515
		mc 0 3 513 514 515
		f 3 516 517 518
		mu 0 3 516 517 518
		mu 1 3 516 517 518
		mc 0 3 516 517 518
		f 3 519 520 521
		mu 0 3 519 520 521
		mu 1 3 519 520 521
		mc 0 3 519 520 521
		f 3 522 523 524
		mu 0 3 522 523 524
		mu 1 3 522 523 524
		mc 0 3 522 523 524
		f 3 525 526 527
		mu 0 3 525 526 527
		mu 1 3 525 526 527
		mc 0 3 525 526 527
		f 3 528 529 530
		mu 0 3 528 529 530
		mu 1 3 528 529 530
		mc 0 3 528 529 530
		f 3 531 532 533
		mu 0 3 531 532 533
		mu 1 3 531 532 533
		mc 0 3 531 532 533
		f 3 534 535 536
		mu 0 3 534 535 536
		mu 1 3 534 535 536
		mc 0 3 534 535 536
		f 3 537 538 539
		mu 0 3 537 538 539
		mu 1 3 537 538 539
		mc 0 3 537 538 539
		f 3 540 541 542
		mu 0 3 540 541 542
		mu 1 3 540 541 542
		mc 0 3 540 541 542
		f 3 543 544 545
		mu 0 3 543 544 545
		mu 1 3 543 544 545
		mc 0 3 543 544 545
		f 3 546 547 548
		mu 0 3 546 547 548
		mu 1 3 546 547 548
		mc 0 3 546 547 548
		f 3 549 550 551
		mu 0 3 549 550 551
		mu 1 3 549 550 551
		mc 0 3 549 550 551
		f 3 552 553 554
		mu 0 3 552 553 554
		mu 1 3 552 553 554
		mc 0 3 552 553 554
		f 3 555 556 557
		mu 0 3 555 556 557
		mu 1 3 555 556 557
		mc 0 3 555 556 557
		f 3 558 559 560
		mu 0 3 558 559 560
		mu 1 3 558 559 560
		mc 0 3 558 559 560
		f 3 561 562 563
		mu 0 3 561 562 563
		mu 1 3 561 562 563
		mc 0 3 561 562 563
		f 3 564 565 566
		mu 0 3 564 565 566
		mu 1 3 564 565 566
		mc 0 3 564 565 566
		f 3 567 568 569
		mu 0 3 567 568 569
		mu 1 3 567 568 569
		mc 0 3 567 568 569
		f 3 570 571 572
		mu 0 3 570 571 572
		mu 1 3 570 571 572
		mc 0 3 570 571 572
		f 3 573 574 575
		mu 0 3 573 574 575
		mu 1 3 573 574 575
		mc 0 3 573 574 575
		f 3 576 577 578
		mu 0 3 576 577 578
		mu 1 3 576 577 578
		mc 0 3 576 577 578
		f 3 579 580 581
		mu 0 3 579 580 581
		mu 1 3 579 580 581
		mc 0 3 579 580 581
		f 3 582 583 584
		mu 0 3 582 583 584
		mu 1 3 582 583 584
		mc 0 3 582 583 584
		f 3 585 586 587
		mu 0 3 585 586 587
		mu 1 3 585 586 587
		mc 0 3 585 586 587
		f 3 588 589 590
		mu 0 3 588 589 590
		mu 1 3 588 589 590
		mc 0 3 588 589 590
		f 3 591 592 593
		mu 0 3 591 592 593
		mu 1 3 591 592 593
		mc 0 3 591 592 593
		f 3 594 595 596
		mu 0 3 594 595 596
		mu 1 3 594 595 596
		mc 0 3 594 595 596
		f 3 597 598 599
		mu 0 3 597 598 599
		mu 1 3 597 598 599
		mc 0 3 597 598 599
		f 3 600 601 602
		mu 0 3 600 601 602
		mu 1 3 600 601 602
		mc 0 3 600 601 602
		f 3 603 604 605
		mu 0 3 603 604 605
		mu 1 3 603 604 605
		mc 0 3 603 604 605
		f 3 606 607 608
		mu 0 3 606 607 608
		mu 1 3 606 607 608
		mc 0 3 606 607 608
		f 3 609 610 611
		mu 0 3 609 610 611
		mu 1 3 609 610 611
		mc 0 3 609 610 611
		f 3 612 613 614
		mu 0 3 612 613 614
		mu 1 3 612 613 614
		mc 0 3 612 613 614
		f 3 615 616 617
		mu 0 3 615 616 617
		mu 1 3 615 616 617
		mc 0 3 615 616 617
		f 3 618 619 620
		mu 0 3 618 619 620
		mu 1 3 618 619 620
		mc 0 3 618 619 620
		f 3 621 622 623
		mu 0 3 621 622 623
		mu 1 3 621 622 623
		mc 0 3 621 622 623
		f 3 624 625 626
		mu 0 3 624 625 626
		mu 1 3 624 625 626
		mc 0 3 624 625 626
		f 3 627 628 629
		mu 0 3 627 628 629
		mu 1 3 627 628 629
		mc 0 3 627 628 629
		f 3 630 631 632
		mu 0 3 630 631 632
		mu 1 3 630 631 632
		mc 0 3 630 631 632
		f 3 633 634 635
		mu 0 3 633 634 635
		mu 1 3 633 634 635
		mc 0 3 633 634 635
		f 3 636 637 638
		mu 0 3 636 637 638
		mu 1 3 636 637 638
		mc 0 3 636 637 638
		f 3 639 640 641
		mu 0 3 639 640 641
		mu 1 3 639 640 641
		mc 0 3 639 640 641
		f 3 642 643 644
		mu 0 3 642 643 644
		mu 1 3 642 643 644
		mc 0 3 642 643 644
		f 3 645 646 647
		mu 0 3 645 646 647
		mu 1 3 645 646 647
		mc 0 3 645 646 647
		f 3 648 649 650
		mu 0 3 648 649 650
		mu 1 3 648 649 650
		mc 0 3 648 649 650
		f 3 651 652 653
		mu 0 3 651 652 653
		mu 1 3 651 652 653
		mc 0 3 651 652 653
		f 3 654 655 656
		mu 0 3 654 655 656
		mu 1 3 654 655 656
		mc 0 3 654 655 656
		f 3 657 658 659
		mu 0 3 657 658 659
		mu 1 3 657 658 659
		mc 0 3 657 658 659
		f 3 660 661 662
		mu 0 3 660 661 662
		mu 1 3 660 661 662
		mc 0 3 660 661 662
		f 3 663 664 665
		mu 0 3 663 664 665
		mu 1 3 663 664 665
		mc 0 3 663 664 665
		f 3 666 667 668
		mu 0 3 666 667 668
		mu 1 3 666 667 668
		mc 0 3 666 667 668
		f 3 669 670 671
		mu 0 3 669 670 671
		mu 1 3 669 670 671
		mc 0 3 669 670 671
		f 3 672 673 674
		mu 0 3 672 673 674
		mu 1 3 672 673 674
		mc 0 3 672 673 674
		f 3 675 676 677
		mu 0 3 675 676 677
		mu 1 3 675 676 677
		mc 0 3 675 676 677
		f 3 678 679 680
		mu 0 3 678 679 680
		mu 1 3 678 679 680
		mc 0 3 678 679 680
		f 3 681 682 683
		mu 0 3 681 682 683
		mu 1 3 681 682 683
		mc 0 3 681 682 683
		f 3 684 685 686
		mu 0 3 684 685 686
		mu 1 3 684 685 686
		mc 0 3 684 685 686
		f 3 687 688 689
		mu 0 3 687 688 689
		mu 1 3 687 688 689
		mc 0 3 687 688 689
		f 3 690 691 692
		mu 0 3 690 691 692
		mu 1 3 690 691 692
		mc 0 3 690 691 692
		f 3 693 694 695
		mu 0 3 693 694 695
		mu 1 3 693 694 695
		mc 0 3 693 694 695
		f 3 696 697 698
		mu 0 3 696 697 698
		mu 1 3 696 697 698
		mc 0 3 696 697 698
		f 3 699 700 701
		mu 0 3 699 700 701
		mu 1 3 699 700 701
		mc 0 3 699 700 701
		f 3 702 703 704
		mu 0 3 702 703 704
		mu 1 3 702 703 704
		mc 0 3 702 703 704
		f 3 705 706 707
		mu 0 3 705 706 707
		mu 1 3 705 706 707
		mc 0 3 705 706 707
		f 3 708 709 710
		mu 0 3 708 709 710
		mu 1 3 708 709 710
		mc 0 3 708 709 710
		f 3 711 712 713
		mu 0 3 711 712 713
		mu 1 3 711 712 713
		mc 0 3 711 712 713
		f 3 714 715 716
		mu 0 3 714 715 716
		mu 1 3 714 715 716
		mc 0 3 714 715 716
		f 3 717 718 719
		mu 0 3 717 718 719
		mu 1 3 717 718 719
		mc 0 3 717 718 719
		f 3 720 721 722
		mu 0 3 720 721 722
		mu 1 3 720 721 722
		mc 0 3 720 721 722
		f 3 723 724 725
		mu 0 3 723 724 725
		mu 1 3 723 724 725
		mc 0 3 723 724 725
		f 3 726 727 728
		mu 0 3 726 727 728
		mu 1 3 726 727 728
		mc 0 3 726 727 728
		f 3 729 730 731
		mu 0 3 729 730 731
		mu 1 3 729 730 731
		mc 0 3 729 730 731
		f 3 732 733 734
		mu 0 3 732 733 734
		mu 1 3 732 733 734
		mc 0 3 732 733 734
		f 3 735 736 737
		mu 0 3 735 736 737
		mu 1 3 735 736 737
		mc 0 3 735 736 737
		f 3 738 739 740
		mu 0 3 738 739 740
		mu 1 3 738 739 740
		mc 0 3 738 739 740
		f 3 741 742 743
		mu 0 3 741 742 743
		mu 1 3 741 742 743
		mc 0 3 741 742 743
		f 3 744 745 746
		mu 0 3 744 745 746
		mu 1 3 744 745 746
		mc 0 3 744 745 746
		f 3 747 748 749
		mu 0 3 747 748 749
		mu 1 3 747 748 749
		mc 0 3 747 748 749
		f 3 750 751 752
		mu 0 3 750 751 752
		mu 1 3 750 751 752
		mc 0 3 750 751 752
		f 3 753 754 755
		mu 0 3 753 754 755
		mu 1 3 753 754 755
		mc 0 3 753 754 755
		f 3 756 757 758
		mu 0 3 756 757 758
		mu 1 3 756 757 758
		mc 0 3 756 757 758
		f 3 759 760 761
		mu 0 3 759 760 761
		mu 1 3 759 760 761
		mc 0 3 759 760 761
		f 3 762 763 764
		mu 0 3 762 763 764
		mu 1 3 762 763 764
		mc 0 3 762 763 764
		f 3 765 766 767
		mu 0 3 765 766 767
		mu 1 3 765 766 767
		mc 0 3 765 767 768
		f 3 768 769 770
		mu 0 3 768 765 769
		mu 1 3 768 765 769
		mc 0 3 769 766 770
		f 3 771 772 773
		mu 0 3 770 771 772
		mu 1 3 770 771 772
		mc 0 3 771 772 774
		f 3 774 775 776
		mu 0 3 773 771 774
		mu 1 3 773 771 774
		mc 0 3 775 773 776
		f 3 777 778 779
		mu 0 3 775 776 777
		mu 1 3 775 776 777
		mc 0 3 777 778 779
		f 3 780 781 782
		mu 0 3 777 778 779
		mu 1 3 777 778 779
		mc 0 3 780 781 783
		f 3 -782 783 784
		mu 0 3 779 778 780
		mu 1 3 779 778 780
		mc 0 3 784 782 785
		f 3 785 786 787
		mu 0 3 781 782 783
		mu 1 3 781 782 783
		mc 0 3 786 787 789
		f 3 788 789 790
		mu 0 3 782 784 785
		mu 1 3 782 784 785
		mc 0 3 788 790 792
		f 3 -790 791 792
		mu 0 3 785 784 786
		mu 1 3 785 784 786
		mc 0 3 793 791 794
		f 3 793 794 795
		mu 0 3 787 788 789
		mu 1 3 787 788 789
		mc 0 3 795 796 799
		f 3 796 797 798
		mu 0 3 790 791 788
		mu 1 3 790 791 788
		mc 0 3 800 801 797
		f 3 -798 799 800
		mu 0 3 788 791 792
		mu 1 3 788 791 792
		mc 0 3 798 802 803
		f 3 801 802 803
		mu 0 3 793 794 795
		mu 1 3 793 794 795
		mc 0 3 804 807 808
		f 3 804 805 806
		mu 0 3 796 793 797
		mu 1 3 796 793 797
		mc 0 3 809 805 811
		f 3 807 -805 808
		mu 0 3 798 793 796
		mu 1 3 798 793 796
		mc 0 3 812 806 810
		f 3 809 810 811
		mu 0 3 799 800 801
		mu 1 3 799 800 801
		mc 0 3 813 816 817
		f 3 812 813 814
		mu 0 3 802 799 803
		mu 1 3 802 799 803
		mc 0 3 818 814 820
		f 3 815 -813 816
		mu 0 3 804 799 802
		mu 1 3 804 799 802
		mc 0 3 821 815 819
		f 3 817 818 819
		mu 0 3 805 806 807
		mu 1 3 805 806 807
		mc 0 3 822 823 825
		f 3 -819 820 821
		mu 0 3 807 806 808
		mu 1 3 807 806 808
		mc 0 3 826 824 827
		f 3 822 823 824
		mu 0 3 809 810 811
		mu 1 3 809 810 811
		mc 0 3 828 829 831
		f 3 -824 825 826
		mu 0 3 811 810 812
		mu 1 3 811 810 812
		mc 0 3 832 830 833
		f 3 827 828 829
		mu 0 3 813 814 815
		mu 1 3 813 814 815
		mc 0 3 834 835 837
		f 3 -829 830 831
		mu 0 3 815 814 816
		mu 1 3 815 814 816
		mc 0 3 838 836 839
		f 3 832 833 834
		mu 0 3 817 818 819
		mu 1 3 817 818 819
		mc 0 3 840 841 843
		f 3 -834 835 836
		mu 0 3 819 818 820
		mu 1 3 819 818 820
		mc 0 3 844 842 845
		f 3 837 838 839
		mu 0 3 821 822 823
		mu 1 3 821 822 823
		mc 0 3 846 847 849
		f 3 -839 840 841
		mu 0 3 823 822 824
		mu 1 3 823 822 824
		mc 0 3 850 848 851
		f 3 842 843 844
		mu 0 3 825 826 827
		mu 1 3 825 826 827
		mc 0 3 852 853 855
		f 3 -844 845 846
		mu 0 3 827 826 828
		mu 1 3 827 826 828
		mc 0 3 856 854 857
		f 3 847 848 849
		mu 0 3 829 830 831
		mu 1 3 829 830 831
		mc 0 3 858 859 861
		f 3 -849 850 851
		mu 0 3 831 830 832
		mu 1 3 831 830 832
		mc 0 3 862 860 863
		f 3 852 853 854
		mu 0 3 833 834 835
		mu 1 3 833 834 835
		mc 0 3 864 865 867
		f 3 -854 855 856
		mu 0 3 835 834 836
		mu 1 3 835 834 836
		mc 0 3 868 866 869
		f 3 857 858 859
		mu 0 3 837 838 839
		mu 1 3 837 838 839
		mc 0 3 870 871 873
		f 3 -859 860 861
		mu 0 3 839 838 840
		mu 1 3 839 838 840
		mc 0 3 874 872 875
		f 3 862 863 864
		mu 0 3 841 842 843
		mu 1 3 841 842 843
		mc 0 3 876 877 879
		f 3 -864 865 866
		mu 0 3 843 842 844
		mu 1 3 843 842 844
		mc 0 3 880 878 881
		f 3 867 868 869
		mu 0 3 845 846 847
		mu 1 3 845 846 847
		mc 0 3 882 883 885
		f 3 -869 870 871
		mu 0 3 847 846 848
		mu 1 3 847 846 848
		mc 0 3 886 884 887
		f 3 872 873 874
		mu 0 3 849 850 851
		mu 1 3 849 850 851
		mc 0 3 888 889 891
		f 3 -874 875 876
		mu 0 3 851 850 852
		mu 1 3 851 850 852
		mc 0 3 892 890 893
		f 3 877 878 879
		mu 0 3 853 854 855
		mu 1 3 853 854 855
		mc 0 3 894 895 897
		f 3 -879 880 881
		mu 0 3 855 854 856
		mu 1 3 855 854 856
		mc 0 3 898 896 899
		f 3 882 883 884
		mu 0 3 857 858 859
		mu 1 3 857 858 859
		mc 0 3 900 901 903
		f 3 -884 885 886
		mu 0 3 859 858 860
		mu 1 3 859 858 860
		mc 0 3 904 902 905
		f 3 887 888 889
		mu 0 3 861 862 863
		mu 1 3 861 862 863
		mc 0 3 906 907 909
		f 3 -889 890 891
		mu 0 3 863 862 864
		mu 1 3 863 862 864
		mc 0 3 910 908 911
		f 3 892 893 894
		mu 0 3 865 866 867
		mu 1 3 865 866 867
		mc 0 3 912 913 915
		f 3 -894 895 896
		mu 0 3 867 866 868
		mu 1 3 867 866 868
		mc 0 3 916 914 917
		f 3 897 898 899
		mu 0 3 869 870 871
		mu 1 3 869 870 871
		mc 0 3 918 919 921
		f 3 -899 900 901
		mu 0 3 871 870 872
		mu 1 3 871 870 872
		mc 0 3 922 920 923
		f 3 902 903 904
		mu 0 3 873 874 875
		mu 1 3 873 874 875
		mc 0 3 924 925 927
		f 3 -904 905 906
		mu 0 3 875 874 876
		mu 1 3 875 874 876
		mc 0 3 928 926 929
		f 3 907 908 909
		mu 0 3 877 878 879
		mu 1 3 877 878 879
		mc 0 3 930 931 933
		f 3 -909 910 911
		mu 0 3 879 878 880
		mu 1 3 879 878 880
		mc 0 3 934 932 935
		f 3 912 913 914
		mu 0 3 881 882 883
		mu 1 3 881 882 883
		mc 0 3 936 937 939
		f 3 -914 915 916
		mu 0 3 883 882 884
		mu 1 3 883 882 884
		mc 0 3 940 938 941
		f 3 917 918 919
		mu 0 3 885 886 887
		mu 1 3 885 886 887
		mc 0 3 942 943 945
		f 3 -919 920 921
		mu 0 3 887 886 888
		mu 1 3 887 886 888
		mc 0 3 946 944 947
		f 3 922 923 924
		mu 0 3 889 890 891
		mu 1 3 889 890 891
		mc 0 3 948 949 951
		f 3 -924 925 926
		mu 0 3 891 890 892
		mu 1 3 891 890 892
		mc 0 3 952 950 953
		f 3 927 928 929
		mu 0 3 893 894 895
		mu 1 3 893 894 895
		mc 0 3 954 955 957
		f 3 -929 930 931
		mu 0 3 895 894 896
		mu 1 3 895 894 896
		mc 0 3 958 956 959
		f 3 932 933 934
		mu 0 3 897 898 899
		mu 1 3 897 898 899
		mc 0 3 960 961 963
		f 3 -934 935 936
		mu 0 3 899 898 900
		mu 1 3 899 898 900
		mc 0 3 964 962 965
		f 3 937 938 939
		mu 0 3 901 902 903
		mu 1 3 901 902 903
		mc 0 3 966 967 969
		f 3 -939 940 941
		mu 0 3 903 902 904
		mu 1 3 903 902 904
		mc 0 3 970 968 971
		f 3 942 943 944
		mu 0 3 905 906 907
		mu 1 3 905 906 907
		mc 0 3 972 973 975
		f 3 -944 945 946
		mu 0 3 907 906 908
		mu 1 3 907 906 908
		mc 0 3 976 974 977
		f 3 947 948 949
		mu 0 3 909 910 911
		mu 1 3 909 910 911
		mc 0 3 978 979 981
		f 3 -949 950 951
		mu 0 3 911 910 912
		mu 1 3 911 910 912
		mc 0 3 982 980 983
		f 3 952 953 954
		mu 0 3 913 914 915
		mu 1 3 913 914 915
		mc 0 3 984 985 987
		f 3 -954 955 956
		mu 0 3 915 914 916
		mu 1 3 915 914 916
		mc 0 3 988 986 989
		f 3 957 958 959
		mu 0 3 917 918 919
		mu 1 3 917 918 919
		mc 0 3 990 991 993
		f 3 -959 960 961
		mu 0 3 919 918 920
		mu 1 3 919 918 920
		mc 0 3 994 992 995
		f 3 962 963 964
		mu 0 3 921 922 923
		mu 1 3 921 922 923
		mc 0 3 996 997 999
		f 3 -964 965 966
		mu 0 3 923 922 924
		mu 1 3 923 922 924
		mc 0 3 1000 998 1001
		f 3 967 968 969
		mu 0 3 925 926 927
		mu 1 3 925 926 927
		mc 0 3 1002 1003 1005
		f 3 -969 970 971
		mu 0 3 927 926 928
		mu 1 3 927 926 928
		mc 0 3 1006 1004 1007
		f 3 972 973 974
		mu 0 3 929 930 931
		mu 1 3 929 930 931
		mc 0 3 1008 1009 1011
		f 3 -974 975 976
		mu 0 3 931 930 932
		mu 1 3 931 930 932
		mc 0 3 1012 1010 1013
		f 3 977 978 979
		mu 0 3 933 934 935
		mu 1 3 933 934 935
		mc 0 3 1014 1015 1017
		f 3 -979 980 981
		mu 0 3 935 934 936
		mu 1 3 935 934 936
		mc 0 3 1018 1016 1019
		f 3 982 983 984
		mu 0 3 937 938 939
		mu 1 3 937 938 939
		mc 0 3 1020 1021 1023
		f 3 -984 985 986
		mu 0 3 939 938 940
		mu 1 3 939 938 940
		mc 0 3 1024 1022 1025
		f 3 987 988 989
		mu 0 3 941 942 943
		mu 1 3 941 942 943
		mc 0 3 1026 1027 1029
		f 3 -989 990 991
		mu 0 3 943 942 944
		mu 1 3 943 942 944
		mc 0 3 1030 1028 1031
		f 3 992 993 994
		mu 0 3 945 946 947
		mu 1 3 945 946 947
		mc 0 3 1032 1033 1035
		f 3 -994 995 996
		mu 0 3 947 946 948
		mu 1 3 947 946 948
		mc 0 3 1036 1034 1037
		f 3 997 998 999
		mu 0 3 949 950 951
		mu 1 3 949 950 951
		mc 0 3 1038 1039 1041
		f 3 -999 1000 1001
		mu 0 3 951 950 952
		mu 1 3 951 950 952
		mc 0 3 1042 1040 1043
		f 3 1002 1003 1004
		mu 0 3 953 954 955
		mu 1 3 953 954 955
		mc 0 3 1044 1045 1047
		f 3 -1004 1005 1006
		mu 0 3 955 954 956
		mu 1 3 955 954 956
		mc 0 3 1048 1046 1049
		f 3 1007 1008 1009
		mu 0 3 957 958 959
		mu 1 3 957 958 959
		mc 0 3 1050 1051 1053
		f 3 -1009 1010 1011
		mu 0 3 959 958 960
		mu 1 3 959 958 960
		mc 0 3 1054 1052 1055
		f 3 1012 1013 1014
		mu 0 3 961 962 963
		mu 1 3 961 962 963
		mc 0 3 1056 1057 1059
		f 3 -1014 1015 1016
		mu 0 3 963 962 964
		mu 1 3 963 962 964
		mc 0 3 1060 1058 1061
		f 3 1017 1018 1019
		mu 0 3 965 966 967
		mu 1 3 965 966 967
		mc 0 3 1062 1063 1065
		f 3 -1019 1020 1021
		mu 0 3 967 966 968
		mu 1 3 967 966 968
		mc 0 3 1066 1064 1067
		f 3 1022 1023 1024
		mu 0 3 969 970 971
		mu 1 3 969 970 971
		mc 0 3 1068 1069 1071
		f 3 -1024 1025 1026
		mu 0 3 971 970 972
		mu 1 3 971 970 972
		mc 0 3 1072 1070 1073
		f 3 1027 1028 1029
		mu 0 3 973 974 975
		mu 1 3 973 974 975
		mc 0 3 1074 1075 1077
		f 3 -1029 1030 1031
		mu 0 3 975 974 976
		mu 1 3 975 974 976
		mc 0 3 1078 1076 1079
		f 3 1032 1033 1034
		mu 0 3 977 978 979
		mu 1 3 977 978 979
		mc 0 3 1080 1081 1083
		f 3 -1034 1035 1036
		mu 0 3 979 978 980
		mu 1 3 979 978 980
		mc 0 3 1084 1082 1085
		f 3 1037 1038 1039
		mu 0 3 981 982 983
		mu 1 3 981 982 983
		mc 0 3 1086 1087 1089
		f 3 -1039 1040 1041
		mu 0 3 983 982 984
		mu 1 3 983 982 984
		mc 0 3 1090 1088 1091
		f 3 1042 1043 1044
		mu 0 3 985 986 987
		mu 1 3 985 986 987
		mc 0 3 1092 1093 1095
		f 3 -1044 1045 1046
		mu 0 3 987 986 988
		mu 1 3 987 986 988
		mc 0 3 1096 1094 1097
		f 3 1047 1048 1049
		mu 0 3 989 990 991
		mu 1 3 989 990 991
		mc 0 3 1098 1099 1101
		f 3 -1049 1050 1051
		mu 0 3 991 990 992
		mu 1 3 991 990 992
		mc 0 3 1102 1100 1103
		f 3 1052 1053 1054
		mu 0 3 993 994 995
		mu 1 3 993 994 995
		mc 0 3 1104 1105 1107
		f 3 -1054 1055 1056
		mu 0 3 995 994 996
		mu 1 3 995 994 996
		mc 0 3 1108 1106 1109
		f 3 1057 1058 1059
		mu 0 3 997 998 999
		mu 1 3 997 998 999
		mc 0 3 1110 1111 1113
		f 3 -1059 1060 1061
		mu 0 3 999 998 1000
		mu 1 3 999 998 1000
		mc 0 3 1114 1112 1115
		f 3 1062 1063 1064
		mu 0 3 1001 1002 1003
		mu 1 3 1001 1002 1003
		mc 0 3 1116 1117 1119
		f 3 -1064 1065 1066
		mu 0 3 1003 1002 1004
		mu 1 3 1003 1002 1004
		mc 0 3 1120 1118 1121
		f 3 1067 1068 1069
		mu 0 3 1005 1006 1007
		mu 1 3 1005 1006 1007
		mc 0 3 1122 1123 1125
		f 3 -1069 1070 1071
		mu 0 3 1007 1006 1008
		mu 1 3 1007 1006 1008
		mc 0 3 1126 1124 1127
		f 3 1072 1073 1074
		mu 0 3 1009 1010 1011
		mu 1 3 1009 1010 1011
		mc 0 3 1128 1129 1131
		f 3 -1074 1075 1076
		mu 0 3 1011 1010 1012
		mu 1 3 1011 1010 1012
		mc 0 3 1132 1130 1133
		f 3 1077 1078 1079
		mu 0 3 1013 1014 1015
		mu 1 3 1013 1014 1015
		mc 0 3 1134 1135 1137
		f 3 -1079 1080 1081
		mu 0 3 1015 1014 1016
		mu 1 3 1015 1014 1016
		mc 0 3 1138 1136 1139
		f 3 1082 1083 1084
		mu 0 3 1017 1018 1019
		mu 1 3 1017 1018 1019
		mc 0 3 1140 1141 1143
		f 3 -1084 1085 1086
		mu 0 3 1019 1018 1020
		mu 1 3 1019 1018 1020
		mc 0 3 1144 1142 1145
		f 3 1087 1088 1089
		mu 0 3 1021 1022 1023
		mu 1 3 1021 1022 1023
		mc 0 3 1146 1147 1149
		f 3 -1089 1090 1091
		mu 0 3 1023 1022 1024
		mu 1 3 1023 1022 1024
		mc 0 3 1150 1148 1151
		f 3 1092 1093 1094
		mu 0 3 1025 1026 1027
		mu 1 3 1025 1026 1027
		mc 0 3 1152 1153 1155
		f 3 -1094 1095 1096
		mu 0 3 1027 1026 1028
		mu 1 3 1027 1026 1028
		mc 0 3 1156 1154 1157
		f 3 1097 1098 1099
		mu 0 3 1029 1030 1031
		mu 1 3 1029 1030 1031
		mc 0 3 1158 1159 1161
		f 3 -1099 1100 1101
		mu 0 3 1031 1030 1032
		mu 1 3 1031 1030 1032
		mc 0 3 1162 1160 1163
		f 3 1102 1103 1104
		mu 0 3 1033 1034 1035
		mu 1 3 1033 1034 1035
		mc 0 3 1164 1165 1167
		f 3 -1104 1105 1106
		mu 0 3 1035 1034 1036
		mu 1 3 1035 1034 1036
		mc 0 3 1168 1166 1169
		f 3 1107 1108 1109
		mu 0 3 1037 1038 1039
		mu 1 3 1037 1038 1039
		mc 0 3 1170 1171 1173
		f 3 -1109 1110 1111
		mu 0 3 1039 1038 1040
		mu 1 3 1039 1038 1040
		mc 0 3 1174 1172 1175
		f 3 1112 1113 1114
		mu 0 3 1041 1042 1043
		mu 1 3 1041 1042 1043
		mc 0 3 1176 1177 1179
		f 3 -1114 1115 1116
		mu 0 3 1043 1042 1044
		mu 1 3 1043 1042 1044
		mc 0 3 1180 1178 1181
		f 3 1117 1118 1119
		mu 0 3 1045 1046 1047
		mu 1 3 1045 1046 1047
		mc 0 3 1182 1183 1185
		f 3 -1119 1120 1121
		mu 0 3 1047 1046 1048
		mu 1 3 1047 1046 1048
		mc 0 3 1186 1184 1187
		f 3 1122 1123 1124
		mu 0 3 1049 1050 1051
		mu 1 3 1049 1050 1051
		mc 0 3 1188 1189 1191
		f 3 -1124 1125 1126
		mu 0 3 1051 1050 1052
		mu 1 3 1051 1050 1052
		mc 0 3 1192 1190 1193
		f 3 1127 1128 1129
		mu 0 3 1053 1054 1055
		mu 1 3 1053 1054 1055
		mc 0 3 1194 1195 1197
		f 3 -1129 1130 1131
		mu 0 3 1055 1054 1056
		mu 1 3 1055 1054 1056
		mc 0 3 1198 1196 1199
		f 3 1132 1133 1134
		mu 0 3 1057 1058 1059
		mu 1 3 1057 1058 1059
		mc 0 3 1200 1201 1203
		f 3 -1134 1135 1136
		mu 0 3 1059 1058 1060
		mu 1 3 1059 1058 1060
		mc 0 3 1204 1202 1205
		f 3 1137 1138 1139
		mu 0 3 1061 1062 1063
		mu 1 3 1061 1062 1063
		mc 0 3 1206 1207 1209
		f 3 -1139 1140 1141
		mu 0 3 1063 1062 1064
		mu 1 3 1063 1062 1064
		mc 0 3 1210 1208 1211
		f 3 1142 1143 1144
		mu 0 3 1065 1066 1067
		mu 1 3 1065 1066 1067
		mc 0 3 1212 1213 1215
		f 3 -1144 1145 1146
		mu 0 3 1067 1066 1068
		mu 1 3 1067 1066 1068
		mc 0 3 1216 1214 1217
		f 3 1147 1148 1149
		mu 0 3 1069 1070 1071
		mu 1 3 1069 1070 1071
		mc 0 3 1218 1219 1221
		f 3 -1149 1150 1151
		mu 0 3 1071 1070 1072
		mu 1 3 1071 1070 1072
		mc 0 3 1222 1220 1223
		f 3 1152 1153 1154
		mu 0 3 1073 1074 1075
		mu 1 3 1073 1074 1075
		mc 0 3 1224 1225 1227
		f 3 -1154 1155 1156
		mu 0 3 1075 1074 1076
		mu 1 3 1075 1074 1076
		mc 0 3 1228 1226 1229
		f 3 1157 1158 1159
		mu 0 3 1077 1078 1079
		mu 1 3 1077 1078 1079
		mc 0 3 1230 1231 1233
		f 3 -1159 1160 1161
		mu 0 3 1079 1078 1080
		mu 1 3 1079 1078 1080
		mc 0 3 1234 1232 1235
		f 3 1162 1163 1164
		mu 0 3 1081 1082 1083
		mu 1 3 1081 1082 1083
		mc 0 3 1236 1237 1239
		f 3 -1164 1165 1166
		mu 0 3 1083 1082 1084
		mu 1 3 1083 1082 1084
		mc 0 3 1240 1238 1241
		f 3 1167 1168 1169
		mu 0 3 1085 1086 1087
		mu 1 3 1085 1086 1087
		mc 0 3 1242 1243 1245
		f 3 -1169 1170 1171
		mu 0 3 1087 1086 1088
		mu 1 3 1087 1086 1088
		mc 0 3 1246 1244 1247
		f 3 1172 1173 1174
		mu 0 3 1089 1090 1091
		mu 1 3 1089 1090 1091
		mc 0 3 1248 1249 1251
		f 3 -1174 1175 1176
		mu 0 3 1091 1090 1092
		mu 1 3 1091 1090 1092
		mc 0 3 1252 1250 1253
		f 3 1177 1178 1179
		mu 0 3 1093 1094 1095
		mu 1 3 1093 1094 1095
		mc 0 3 1254 1255 1257
		f 3 -1179 1180 1181
		mu 0 3 1095 1094 1096
		mu 1 3 1095 1094 1096
		mc 0 3 1258 1256 1259
		f 3 1182 1183 1184
		mu 0 3 1097 1098 1099
		mu 1 3 1097 1098 1099
		mc 0 3 1260 1261 1263
		f 3 -1184 1185 1186
		mu 0 3 1099 1098 1100
		mu 1 3 1099 1098 1100
		mc 0 3 1264 1262 1265
		f 3 1187 1188 1189
		mu 0 3 1101 1102 1103
		mu 1 3 1101 1102 1103
		mc 0 3 1266 1267 1269
		f 3 -1189 1190 1191
		mu 0 3 1103 1102 1104
		mu 1 3 1103 1102 1104
		mc 0 3 1270 1268 1271
		f 3 1192 1193 1194
		mu 0 3 1105 1106 1107
		mu 1 3 1105 1106 1107
		mc 0 3 1272 1273 1275
		f 3 -1194 1195 1196
		mu 0 3 1107 1106 1108
		mu 1 3 1107 1106 1108
		mc 0 3 1276 1274 1277
		f 3 1197 1198 1199
		mu 0 3 1109 1110 1111
		mu 1 3 1109 1110 1111
		mc 0 3 1278 1279 1281
		f 3 -1199 1200 1201
		mu 0 3 1111 1110 1112
		mu 1 3 1111 1110 1112
		mc 0 3 1282 1280 1283
		f 3 1202 1203 1204
		mu 0 3 1113 1114 1115
		mu 1 3 1113 1114 1115
		mc 0 3 1284 1285 1287
		f 3 -1204 1205 1206
		mu 0 3 1115 1114 1116
		mu 1 3 1115 1114 1116
		mc 0 3 1288 1286 1289
		f 3 1207 1208 1209
		mu 0 3 1117 1118 1119
		mu 1 3 1117 1118 1119
		mc 0 3 1290 1291 1293
		f 3 -1209 1210 1211
		mu 0 3 1119 1118 1120
		mu 1 3 1119 1118 1120
		mc 0 3 1294 1292 1295
		f 3 1212 1213 1214
		mu 0 3 1121 1122 1123
		mu 1 3 1121 1122 1123
		mc 0 3 1296 1297 1299
		f 3 -1214 1215 1216
		mu 0 3 1123 1122 1124
		mu 1 3 1123 1122 1124
		mc 0 3 1300 1298 1301
		f 3 1217 1218 1219
		mu 0 3 1125 1126 1127
		mu 1 3 1125 1126 1127
		mc 0 3 1302 1303 1305
		f 3 -1219 1220 1221
		mu 0 3 1127 1126 1128
		mu 1 3 1127 1126 1128
		mc 0 3 1306 1304 1307
		f 3 1222 1223 1224
		mu 0 3 1129 1130 1131
		mu 1 3 1129 1130 1131
		mc 0 3 1308 1309 1311
		f 3 -1224 1225 1226
		mu 0 3 1131 1130 1132
		mu 1 3 1131 1130 1132
		mc 0 3 1312 1310 1313
		f 3 1227 1228 1229
		mu 0 3 1133 1134 1135
		mu 1 3 1133 1134 1135
		mc 0 3 1314 1315 1317
		f 3 -1229 1230 1231
		mu 0 3 1135 1134 1136
		mu 1 3 1135 1134 1136
		mc 0 3 1318 1316 1319
		f 3 1232 1233 1234
		mu 0 3 1137 1138 1139
		mu 1 3 1137 1138 1139
		mc 0 3 1320 1321 1323
		f 3 -1234 1235 1236
		mu 0 3 1139 1138 1140
		mu 1 3 1139 1138 1140
		mc 0 3 1324 1322 1325
		f 3 1237 1238 1239
		mu 0 3 1141 1142 1143
		mu 1 3 1141 1142 1143
		mc 0 3 1326 1327 1329
		f 3 -1239 1240 1241
		mu 0 3 1143 1142 1144
		mu 1 3 1143 1142 1144
		mc 0 3 1330 1328 1331
		f 3 1242 1243 1244
		mu 0 3 1145 1146 1147
		mu 1 3 1145 1146 1147
		mc 0 3 1332 1333 1335
		f 3 -1244 1245 1246
		mu 0 3 1147 1146 1148
		mu 1 3 1147 1146 1148
		mc 0 3 1336 1334 1337
		f 3 1247 1248 1249
		mu 0 3 1149 1150 1151
		mu 1 3 1149 1150 1151
		mc 0 3 1338 1339 1341
		f 3 -1249 1250 1251
		mu 0 3 1151 1150 1152
		mu 1 3 1151 1150 1152
		mc 0 3 1342 1340 1343
		f 3 1252 1253 1254
		mu 0 3 1153 1154 1155
		mu 1 3 1153 1154 1155
		mc 0 3 1344 1345 1347
		f 3 -1254 1255 1256
		mu 0 3 1155 1154 1156
		mu 1 3 1155 1154 1156
		mc 0 3 1348 1346 1349
		f 3 1257 1258 1259
		mu 0 3 1157 1158 1159
		mu 1 3 1157 1158 1159
		mc 0 3 1350 1351 1353
		f 3 -1259 1260 1261
		mu 0 3 1159 1158 1160
		mu 1 3 1159 1158 1160
		mc 0 3 1354 1352 1355
		f 3 1262 1263 1264
		mu 0 3 1161 1162 1163
		mu 1 3 1161 1162 1163
		mc 0 3 1356 1357 1359
		f 3 -1264 1265 1266
		mu 0 3 1163 1162 1164
		mu 1 3 1163 1162 1164
		mc 0 3 1360 1358 1361
		f 3 1267 1268 1269
		mu 0 3 1165 1166 1167
		mu 1 3 1165 1166 1167
		mc 0 3 1362 1363 1365
		f 3 -1269 1270 1271
		mu 0 3 1167 1166 1168
		mu 1 3 1167 1166 1168
		mc 0 3 1366 1364 1367
		f 3 1272 1273 1274
		mu 0 3 1169 1170 1171
		mu 1 3 1169 1170 1171
		mc 0 3 1368 1369 1371
		f 3 -1274 1275 1276
		mu 0 3 1171 1170 1172
		mu 1 3 1171 1170 1172
		mc 0 3 1372 1370 1373
		f 3 1277 1278 1279
		mu 0 3 1173 1174 1175
		mu 1 3 1173 1174 1175
		mc 0 3 1374 1375 1377
		f 3 -1279 1280 1281
		mu 0 3 1175 1174 1176
		mu 1 3 1175 1174 1176
		mc 0 3 1378 1376 1379
		f 3 1282 1283 1284
		mu 0 3 1177 1178 1179
		mu 1 3 1177 1178 1179
		mc 0 3 1380 1381 1383
		f 3 -1284 1285 1286
		mu 0 3 1179 1178 1180
		mu 1 3 1179 1178 1180
		mc 0 3 1384 1382 1385
		f 3 1287 1288 1289
		mu 0 3 1181 1182 1183
		mu 1 3 1181 1182 1183
		mc 0 3 1386 1387 1389
		f 3 -1289 1290 1291
		mu 0 3 1183 1182 1184
		mu 1 3 1183 1182 1184
		mc 0 3 1390 1388 1391
		f 3 1292 1293 1294
		mu 0 3 1185 1186 1187
		mu 1 3 1185 1186 1187
		mc 0 3 1392 1393 1395
		f 3 -1294 1295 1296
		mu 0 3 1187 1186 1188
		mu 1 3 1187 1186 1188
		mc 0 3 1396 1394 1397
		f 3 1297 1298 1299
		mu 0 3 1189 1190 1191
		mu 1 3 1189 1190 1191
		mc 0 3 1398 1399 1401
		f 3 -1299 1300 1301
		mu 0 3 1191 1190 1192
		mu 1 3 1191 1190 1192
		mc 0 3 1402 1400 1403
		f 3 1302 1303 1304
		mu 0 3 1193 1194 1195
		mu 1 3 1193 1194 1195
		mc 0 3 1404 1405 1407
		f 3 -1304 1305 1306
		mu 0 3 1195 1194 1196
		mu 1 3 1195 1194 1196
		mc 0 3 1408 1406 1409
		f 3 1307 1308 1309
		mu 0 3 1197 1198 1199
		mu 1 3 1197 1198 1199
		mc 0 3 1410 1411 1413
		f 3 -1309 1310 1311
		mu 0 3 1199 1198 1200
		mu 1 3 1199 1198 1200
		mc 0 3 1414 1412 1415
		f 3 1312 1313 1314
		mu 0 3 1201 1202 1203
		mu 1 3 1201 1202 1203
		mc 0 3 1416 1417 1419
		f 3 -1314 1315 1316
		mu 0 3 1203 1202 1204
		mu 1 3 1203 1202 1204
		mc 0 3 1420 1418 1421
		f 3 1317 1318 1319
		mu 0 3 1205 1206 1207
		mu 1 3 1205 1206 1207
		mc 0 3 1422 1423 1425
		f 3 -1319 1320 1321
		mu 0 3 1207 1206 1208
		mu 1 3 1207 1206 1208
		mc 0 3 1426 1424 1427
		f 3 1322 1323 1324
		mu 0 3 1209 1210 1211
		mu 1 3 1209 1210 1211
		mc 0 3 1428 1429 1431
		f 3 -1324 1325 1326
		mu 0 3 1211 1210 1212
		mu 1 3 1211 1210 1212
		mc 0 3 1432 1430 1433
		f 3 1327 1328 1329
		mu 0 3 1213 1214 1215
		mu 1 3 1213 1214 1215
		mc 0 3 1434 1435 1437
		f 3 -1329 1330 1331
		mu 0 3 1215 1214 1216
		mu 1 3 1215 1214 1216
		mc 0 3 1438 1436 1439
		f 3 1332 1333 1334
		mu 0 3 1217 1218 1219
		mu 1 3 1217 1218 1219
		mc 0 3 1440 1441 1443
		f 3 -1334 1335 1336
		mu 0 3 1219 1218 1220
		mu 1 3 1219 1218 1220
		mc 0 3 1444 1442 1445
		f 3 1337 1338 1339
		mu 0 3 1221 1222 1223
		mu 1 3 1221 1222 1223
		mc 0 3 1446 1447 1449
		f 3 -1339 1340 1341
		mu 0 3 1223 1222 1224
		mu 1 3 1223 1222 1224
		mc 0 3 1450 1448 1451
		f 3 1342 1343 1344
		mu 0 3 1225 1226 1227
		mu 1 3 1225 1226 1227
		mc 0 3 1452 1453 1455
		f 3 -1344 1345 1346
		mu 0 3 1227 1226 1228
		mu 1 3 1227 1226 1228
		mc 0 3 1456 1454 1457
		f 3 1347 1348 1349
		mu 0 3 1229 1230 1231
		mu 1 3 1229 1230 1231
		mc 0 3 1458 1459 1461
		f 3 -1349 1350 1351
		mu 0 3 1231 1230 1232
		mu 1 3 1231 1230 1232
		mc 0 3 1462 1460 1463
		f 3 1352 1353 1354
		mu 0 3 1233 1234 1235
		mu 1 3 1233 1234 1235
		mc 0 3 1464 1465 1467
		f 3 -1354 1355 1356
		mu 0 3 1235 1234 1236
		mu 1 3 1235 1234 1236
		mc 0 3 1468 1466 1469
		f 3 1357 1358 1359
		mu 0 3 1237 1238 1239
		mu 1 3 1237 1238 1239
		mc 0 3 1470 1471 1473
		f 3 -1359 1360 1361
		mu 0 3 1239 1238 1240
		mu 1 3 1239 1238 1240
		mc 0 3 1474 1472 1475
		f 3 1362 1363 1364
		mu 0 3 1241 1242 1243
		mu 1 3 1241 1242 1243
		mc 0 3 1476 1477 1479
		f 3 -1364 1365 1366
		mu 0 3 1243 1242 1244
		mu 1 3 1243 1242 1244
		mc 0 3 1480 1478 1481
		f 3 1367 1368 1369
		mu 0 3 1245 1246 1247
		mu 1 3 1245 1246 1247
		mc 0 3 1482 1483 1485
		f 3 -1369 1370 1371
		mu 0 3 1247 1246 1248
		mu 1 3 1247 1246 1248
		mc 0 3 1486 1484 1487
		f 3 1372 1373 1374
		mu 0 3 1249 1250 1251
		mu 1 3 1249 1250 1251
		mc 0 3 1488 1489 1491
		f 3 -1374 1375 1376
		mu 0 3 1251 1250 1252
		mu 1 3 1251 1250 1252
		mc 0 3 1492 1490 1493
		f 3 1377 1378 1379
		mu 0 3 1253 1254 1255
		mu 1 3 1253 1254 1255
		mc 0 3 1494 1495 1497
		f 3 -1379 1380 1381
		mu 0 3 1255 1254 1256
		mu 1 3 1255 1254 1256
		mc 0 3 1498 1496 1499;
	setAttr ".fc[500:999]"
		f 3 1382 1383 1384
		mu 0 3 1257 1258 1259
		mu 1 3 1257 1258 1259
		mc 0 3 1500 1501 1503
		f 3 -1384 1385 1386
		mu 0 3 1259 1258 1260
		mu 1 3 1259 1258 1260
		mc 0 3 1504 1502 1505
		f 3 1387 1388 1389
		mu 0 3 1261 1262 1263
		mu 1 3 1261 1262 1263
		mc 0 3 1506 1507 1509
		f 3 -1389 1390 1391
		mu 0 3 1263 1262 1264
		mu 1 3 1263 1262 1264
		mc 0 3 1510 1508 1511
		f 3 1392 1393 1394
		mu 0 3 1265 1266 1267
		mu 1 3 1265 1266 1267
		mc 0 3 1512 1513 1515
		f 3 -1394 1395 1396
		mu 0 3 1267 1266 1268
		mu 1 3 1267 1266 1268
		mc 0 3 1516 1514 1517
		f 3 1397 1398 1399
		mu 0 3 1269 1270 1271
		mu 1 3 1269 1270 1271
		mc 0 3 1518 1519 1521
		f 3 -1399 1400 1401
		mu 0 3 1271 1270 1272
		mu 1 3 1271 1270 1272
		mc 0 3 1522 1520 1523
		f 3 1402 1403 1404
		mu 0 3 1273 1274 1275
		mu 1 3 1273 1274 1275
		mc 0 3 1524 1525 1527
		f 3 -1404 1405 1406
		mu 0 3 1275 1274 1276
		mu 1 3 1275 1274 1276
		mc 0 3 1528 1526 1529
		f 3 1407 1408 1409
		mu 0 3 1277 1278 1279
		mu 1 3 1277 1278 1279
		mc 0 3 1530 1531 1533
		f 3 -1409 1410 1411
		mu 0 3 1279 1278 1280
		mu 1 3 1279 1278 1280
		mc 0 3 1534 1532 1535
		f 3 1412 1413 1414
		mu 0 3 1281 1282 1283
		mu 1 3 1281 1282 1283
		mc 0 3 1536 1537 1539
		f 3 -1414 1415 1416
		mu 0 3 1283 1282 1284
		mu 1 3 1283 1282 1284
		mc 0 3 1540 1538 1541
		f 3 1417 1418 1419
		mu 0 3 1285 1286 1287
		mu 1 3 1285 1286 1287
		mc 0 3 1542 1543 1545
		f 3 -1419 1420 1421
		mu 0 3 1287 1286 1288
		mu 1 3 1287 1286 1288
		mc 0 3 1546 1544 1547
		f 3 1422 1423 1424
		mu 0 3 1289 1290 1291
		mu 1 3 1289 1290 1291
		mc 0 3 1548 1549 1551
		f 3 -1424 1425 1426
		mu 0 3 1291 1290 1292
		mu 1 3 1291 1290 1292
		mc 0 3 1552 1550 1553
		f 3 1427 1428 1429
		mu 0 3 1293 1294 1295
		mu 1 3 1293 1294 1295
		mc 0 3 1554 1555 1557
		f 3 -1429 1430 1431
		mu 0 3 1295 1294 1296
		mu 1 3 1295 1294 1296
		mc 0 3 1558 1556 1559
		f 3 1432 1433 1434
		mu 0 3 1297 1298 1299
		mu 1 3 1297 1298 1299
		mc 0 3 1560 1561 1563
		f 3 -1434 1435 1436
		mu 0 3 1299 1298 1300
		mu 1 3 1299 1298 1300
		mc 0 3 1564 1562 1565
		f 3 1437 1438 1439
		mu 0 3 1301 1302 1303
		mu 1 3 1301 1302 1303
		mc 0 3 1566 1567 1569
		f 3 -1439 1440 1441
		mu 0 3 1303 1302 1304
		mu 1 3 1303 1302 1304
		mc 0 3 1570 1568 1571
		f 3 1442 1443 1444
		mu 0 3 1305 1306 1307
		mu 1 3 1305 1306 1307
		mc 0 3 1572 1573 1575
		f 3 -1444 1445 1446
		mu 0 3 1307 1306 1308
		mu 1 3 1307 1306 1308
		mc 0 3 1576 1574 1577
		f 3 1447 1448 1449
		mu 0 3 1309 1310 1311
		mu 1 3 1309 1310 1311
		mc 0 3 1578 1579 1581
		f 3 -1449 1450 1451
		mu 0 3 1311 1310 1312
		mu 1 3 1311 1310 1312
		mc 0 3 1582 1580 1583
		f 3 1452 1453 1454
		mu 0 3 1313 1314 1315
		mu 1 3 1313 1314 1315
		mc 0 3 1584 1585 1587
		f 3 -1454 1455 1456
		mu 0 3 1315 1314 1316
		mu 1 3 1315 1314 1316
		mc 0 3 1588 1586 1589
		f 3 1457 1458 1459
		mu 0 3 1317 1318 1319
		mu 1 3 1317 1318 1319
		mc 0 3 1590 1591 1593
		f 3 -1459 1460 1461
		mu 0 3 1319 1318 1320
		mu 1 3 1319 1318 1320
		mc 0 3 1594 1592 1595
		f 3 1462 1463 1464
		mu 0 3 1321 1322 1323
		mu 1 3 1321 1322 1323
		mc 0 3 1596 1597 1599
		f 3 -1464 1465 1466
		mu 0 3 1323 1322 1324
		mu 1 3 1323 1322 1324
		mc 0 3 1600 1598 1601
		f 3 1467 1468 1469
		mu 0 3 1325 1326 1327
		mu 1 3 1325 1326 1327
		mc 0 3 1602 1603 1605
		f 3 -1469 1470 1471
		mu 0 3 1327 1326 1328
		mu 1 3 1327 1326 1328
		mc 0 3 1606 1604 1607
		f 3 1472 1473 1474
		mu 0 3 1329 1330 1331
		mu 1 3 1329 1330 1331
		mc 0 3 1608 1609 1611
		f 3 -1474 1475 1476
		mu 0 3 1331 1330 1332
		mu 1 3 1331 1330 1332
		mc 0 3 1612 1610 1613
		f 3 1477 1478 1479
		mu 0 3 1333 1334 1335
		mu 1 3 1333 1334 1335
		mc 0 3 1614 1615 1617
		f 3 -1479 1480 1481
		mu 0 3 1335 1334 1336
		mu 1 3 1335 1334 1336
		mc 0 3 1618 1616 1619
		f 3 1482 1483 1484
		mu 0 3 1337 1338 1339
		mu 1 3 1337 1338 1339
		mc 0 3 1620 1621 1623
		f 3 -1484 1485 1486
		mu 0 3 1339 1338 1340
		mu 1 3 1339 1338 1340
		mc 0 3 1624 1622 1625
		f 3 1487 1488 1489
		mu 0 3 1341 1342 1343
		mu 1 3 1341 1342 1343
		mc 0 3 1626 1627 1629
		f 3 -1489 1490 1491
		mu 0 3 1343 1342 1344
		mu 1 3 1343 1342 1344
		mc 0 3 1630 1628 1631
		f 3 1492 1493 1494
		mu 0 3 1345 1346 1347
		mu 1 3 1345 1346 1347
		mc 0 3 1632 1633 1635
		f 3 -1494 1495 1496
		mu 0 3 1347 1346 1348
		mu 1 3 1347 1346 1348
		mc 0 3 1636 1634 1637
		f 3 1497 1498 1499
		mu 0 3 1349 1350 1351
		mu 1 3 1349 1350 1351
		mc 0 3 1638 1639 1641
		f 3 -1499 1500 1501
		mu 0 3 1351 1350 1352
		mu 1 3 1351 1350 1352
		mc 0 3 1642 1640 1643
		f 3 1502 1503 1504
		mu 0 3 1353 1354 1355
		mu 1 3 1353 1354 1355
		mc 0 3 1644 1645 1647
		f 3 -1504 1505 1506
		mu 0 3 1355 1354 1356
		mu 1 3 1355 1354 1356
		mc 0 3 1648 1646 1649
		f 3 1507 1508 1509
		mu 0 3 1357 1358 1359
		mu 1 3 1357 1358 1359
		mc 0 3 1650 1651 1653
		f 3 -1509 1510 1511
		mu 0 3 1359 1358 1360
		mu 1 3 1359 1358 1360
		mc 0 3 1654 1652 1655
		f 3 1512 1513 1514
		mu 0 3 1361 1362 1363
		mu 1 3 1361 1362 1363
		mc 0 3 1656 1657 1659
		f 3 -1514 1515 1516
		mu 0 3 1363 1362 1364
		mu 1 3 1363 1362 1364
		mc 0 3 1660 1658 1661
		f 3 1517 1518 1519
		mu 0 3 1365 1366 1367
		mu 1 3 1365 1366 1367
		mc 0 3 1662 1663 1665
		f 3 -1519 1520 1521
		mu 0 3 1367 1366 1368
		mu 1 3 1367 1366 1368
		mc 0 3 1666 1664 1667
		f 3 1522 1523 1524
		mu 0 3 1369 1370 1371
		mu 1 3 1369 1370 1371
		mc 0 3 1668 1669 1671
		f 3 -1524 1525 1526
		mu 0 3 1371 1370 1372
		mu 1 3 1371 1370 1372
		mc 0 3 1672 1670 1673
		f 3 1527 1528 1529
		mu 0 3 1373 1374 1375
		mu 1 3 1373 1374 1375
		mc 0 3 1674 1675 1677
		f 3 -1529 1530 1531
		mu 0 3 1375 1374 1376
		mu 1 3 1375 1374 1376
		mc 0 3 1678 1676 1679
		f 3 1532 1533 1534
		mu 0 3 1377 1378 1379
		mu 1 3 1377 1378 1379
		mc 0 3 1680 1681 1683
		f 3 -1534 1535 1536
		mu 0 3 1379 1378 1380
		mu 1 3 1379 1378 1380
		mc 0 3 1684 1682 1685
		f 3 1537 1538 1539
		mu 0 3 1381 1382 1383
		mu 1 3 1381 1382 1383
		mc 0 3 1686 1687 1689
		f 3 -1539 1540 1541
		mu 0 3 1383 1382 1384
		mu 1 3 1383 1382 1384
		mc 0 3 1690 1688 1691
		f 3 1542 1543 1544
		mu 0 3 1385 1386 1387
		mu 1 3 1385 1386 1387
		mc 0 3 1692 1693 1695
		f 3 -1544 1545 1546
		mu 0 3 1387 1386 1388
		mu 1 3 1387 1386 1388
		mc 0 3 1696 1694 1697
		f 3 1547 1548 1549
		mu 0 3 1389 1390 1391
		mu 1 3 1389 1390 1391
		mc 0 3 1698 1699 1701
		f 3 -1549 1550 1551
		mu 0 3 1391 1390 1392
		mu 1 3 1391 1390 1392
		mc 0 3 1702 1700 1703
		f 3 1552 1553 1554
		mu 0 3 1393 1394 1395
		mu 1 3 1393 1394 1395
		mc 0 3 1704 1705 1707
		f 3 -1554 1555 1556
		mu 0 3 1395 1394 1396
		mu 1 3 1395 1394 1396
		mc 0 3 1708 1706 1709
		f 3 1557 1558 1559
		mu 0 3 1397 1398 1399
		mu 1 3 1397 1398 1399
		mc 0 3 1710 1711 1713
		f 3 -1559 1560 1561
		mu 0 3 1399 1398 1400
		mu 1 3 1399 1398 1400
		mc 0 3 1714 1712 1715
		f 3 1562 1563 1564
		mu 0 3 1401 1402 1403
		mu 1 3 1401 1402 1403
		mc 0 3 1716 1717 1719
		f 3 -1564 1565 1566
		mu 0 3 1403 1402 1404
		mu 1 3 1403 1402 1404
		mc 0 3 1720 1718 1721
		f 3 1567 1568 1569
		mu 0 3 1405 1406 1407
		mu 1 3 1405 1406 1407
		mc 0 3 1722 1723 1725
		f 3 -1569 1570 1571
		mu 0 3 1407 1406 1408
		mu 1 3 1407 1406 1408
		mc 0 3 1726 1724 1727
		f 3 1572 1573 1574
		mu 0 3 1409 1410 1411
		mu 1 3 1409 1410 1411
		mc 0 3 1728 1729 1731
		f 3 -1574 1575 1576
		mu 0 3 1411 1410 1412
		mu 1 3 1411 1410 1412
		mc 0 3 1732 1730 1733
		f 3 1577 1578 1579
		mu 0 3 1413 1414 1415
		mu 1 3 1413 1414 1415
		mc 0 3 1734 1735 1737
		f 3 -1579 1580 1581
		mu 0 3 1415 1414 1416
		mu 1 3 1415 1414 1416
		mc 0 3 1738 1736 1739
		f 3 1582 1583 1584
		mu 0 3 1417 1418 1419
		mu 1 3 1417 1418 1419
		mc 0 3 1740 1741 1743
		f 3 -1584 1585 1586
		mu 0 3 1419 1418 1420
		mu 1 3 1419 1418 1420
		mc 0 3 1744 1742 1745
		f 3 1587 1588 1589
		mu 0 3 1421 1422 1423
		mu 1 3 1421 1422 1423
		mc 0 3 1746 1747 1749
		f 3 -1589 1590 1591
		mu 0 3 1423 1422 1424
		mu 1 3 1423 1422 1424
		mc 0 3 1750 1748 1751
		f 3 1592 1593 1594
		mu 0 3 1425 1426 1427
		mu 1 3 1425 1426 1427
		mc 0 3 1752 1753 1755
		f 3 -1594 1595 1596
		mu 0 3 1427 1426 1428
		mu 1 3 1427 1426 1428
		mc 0 3 1756 1754 1757
		f 3 1597 1598 1599
		mu 0 3 1429 1430 1431
		mu 1 3 1429 1430 1431
		mc 0 3 1758 1759 1761
		f 3 -1599 1600 1601
		mu 0 3 1431 1430 1432
		mu 1 3 1431 1430 1432
		mc 0 3 1762 1760 1763
		f 3 1602 1603 1604
		mu 0 3 1433 1434 1435
		mu 1 3 1433 1434 1435
		mc 0 3 1764 1765 1767
		f 3 -1604 1605 1606
		mu 0 3 1435 1434 1436
		mu 1 3 1435 1434 1436
		mc 0 3 1768 1766 1769
		f 3 1607 1608 1609
		mu 0 3 1437 1438 1439
		mu 1 3 1437 1438 1439
		mc 0 3 1770 1771 1773
		f 3 -1609 1610 1611
		mu 0 3 1439 1438 1440
		mu 1 3 1439 1438 1440
		mc 0 3 1774 1772 1775
		f 3 1612 1613 1614
		mu 0 3 1441 1442 1443
		mu 1 3 1441 1442 1443
		mc 0 3 1776 1777 1779
		f 3 -1614 1615 1616
		mu 0 3 1443 1442 1444
		mu 1 3 1443 1442 1444
		mc 0 3 1780 1778 1781
		f 3 1617 1618 1619
		mu 0 3 1445 1446 1447
		mu 1 3 1445 1446 1447
		mc 0 3 1782 1783 1785
		f 3 -1619 1620 1621
		mu 0 3 1447 1446 1448
		mu 1 3 1447 1446 1448
		mc 0 3 1786 1784 1787
		f 3 1622 1623 1624
		mu 0 3 1449 1450 1451
		mu 1 3 1449 1450 1451
		mc 0 3 1788 1789 1791
		f 3 -1624 1625 1626
		mu 0 3 1451 1450 1452
		mu 1 3 1451 1450 1452
		mc 0 3 1792 1790 1793
		f 3 1627 1628 1629
		mu 0 3 1453 1454 1455
		mu 1 3 1453 1454 1455
		mc 0 3 1794 1795 1797
		f 3 -1629 1630 1631
		mu 0 3 1455 1454 1456
		mu 1 3 1455 1454 1456
		mc 0 3 1798 1796 1799
		f 3 1632 1633 1634
		mu 0 3 1457 1458 1459
		mu 1 3 1457 1458 1459
		mc 0 3 1800 1801 1803
		f 3 -1634 1635 1636
		mu 0 3 1459 1458 1460
		mu 1 3 1459 1458 1460
		mc 0 3 1804 1802 1805
		f 3 1637 1638 1639
		mu 0 3 1461 1462 1463
		mu 1 3 1461 1462 1463
		mc 0 3 1806 1807 1809
		f 3 -1639 1640 1641
		mu 0 3 1463 1462 1464
		mu 1 3 1463 1462 1464
		mc 0 3 1810 1808 1811
		f 3 1642 1643 1644
		mu 0 3 1465 1466 1467
		mu 1 3 1465 1466 1467
		mc 0 3 1812 1813 1815
		f 3 -1644 1645 1646
		mu 0 3 1467 1466 1468
		mu 1 3 1467 1466 1468
		mc 0 3 1816 1814 1817
		f 3 1647 1648 1649
		mu 0 3 1469 1470 1471
		mu 1 3 1469 1470 1471
		mc 0 3 1818 1819 1821
		f 3 -1649 1650 1651
		mu 0 3 1471 1470 1472
		mu 1 3 1471 1470 1472
		mc 0 3 1822 1820 1823
		f 3 1652 1653 1654
		mu 0 3 1473 1474 1475
		mu 1 3 1473 1474 1475
		mc 0 3 1824 1825 1827
		f 3 -1654 1655 1656
		mu 0 3 1475 1474 1476
		mu 1 3 1475 1474 1476
		mc 0 3 1828 1826 1829
		f 3 1657 1658 1659
		mu 0 3 1477 1478 1479
		mu 1 3 1477 1478 1479
		mc 0 3 1830 1831 1833
		f 3 -1659 1660 1661
		mu 0 3 1479 1478 1480
		mu 1 3 1479 1478 1480
		mc 0 3 1834 1832 1835
		f 3 1662 1663 1664
		mu 0 3 1481 1482 1483
		mu 1 3 1481 1482 1483
		mc 0 3 1836 1837 1839
		f 3 -1664 1665 1666
		mu 0 3 1483 1482 1484
		mu 1 3 1483 1482 1484
		mc 0 3 1840 1838 1841
		f 3 1667 1668 1669
		mu 0 3 1485 1486 1487
		mu 1 3 1485 1486 1487
		mc 0 3 1842 1843 1845
		f 3 -1669 1670 1671
		mu 0 3 1487 1486 1488
		mu 1 3 1487 1486 1488
		mc 0 3 1846 1844 1847
		f 3 1672 1673 1674
		mu 0 3 1489 1490 1491
		mu 1 3 1489 1490 1491
		mc 0 3 1848 1849 1851
		f 3 -1674 1675 1676
		mu 0 3 1491 1490 1492
		mu 1 3 1491 1490 1492
		mc 0 3 1852 1850 1853
		f 3 1677 1678 1679
		mu 0 3 1493 1494 1495
		mu 1 3 1493 1494 1495
		mc 0 3 1854 1855 1857
		f 3 -1679 1680 1681
		mu 0 3 1495 1494 1496
		mu 1 3 1495 1494 1496
		mc 0 3 1858 1856 1859
		f 3 1682 1683 1684
		mu 0 3 1497 1498 1499
		mu 1 3 1497 1498 1499
		mc 0 3 1860 1861 1863
		f 3 -1684 1685 1686
		mu 0 3 1499 1498 1500
		mu 1 3 1499 1498 1500
		mc 0 3 1864 1862 1865
		f 3 1687 1688 1689
		mu 0 3 1501 1502 1503
		mu 1 3 1501 1502 1503
		mc 0 3 1866 1867 1869
		f 3 -1689 1690 1691
		mu 0 3 1503 1502 1504
		mu 1 3 1503 1502 1504
		mc 0 3 1870 1868 1871
		f 3 1692 1693 1694
		mu 0 3 1505 1506 1507
		mu 1 3 1505 1506 1507
		mc 0 3 1872 1873 1875
		f 3 -1694 1695 1696
		mu 0 3 1507 1506 1508
		mu 1 3 1507 1506 1508
		mc 0 3 1876 1874 1877
		f 3 1697 1698 1699
		mu 0 3 1509 1510 1511
		mu 1 3 1509 1510 1511
		mc 0 3 1878 1879 1881
		f 3 -1699 1700 1701
		mu 0 3 1511 1510 1512
		mu 1 3 1511 1510 1512
		mc 0 3 1882 1880 1883
		f 3 1702 1703 1704
		mu 0 3 1513 1514 1515
		mu 1 3 1513 1514 1515
		mc 0 3 1884 1885 1887
		f 3 -1704 1705 1706
		mu 0 3 1515 1514 1516
		mu 1 3 1515 1514 1516
		mc 0 3 1888 1886 1889
		f 3 1707 1708 1709
		mu 0 3 1517 1518 1519
		mu 1 3 1517 1518 1519
		mc 0 3 1890 1891 1893
		f 3 -1709 1710 1711
		mu 0 3 1519 1518 1520
		mu 1 3 1519 1518 1520
		mc 0 3 1894 1892 1895
		f 3 1712 1713 1714
		mu 0 3 1521 1522 1523
		mu 1 3 1521 1522 1523
		mc 0 3 1896 1897 1899
		f 3 -1714 1715 1716
		mu 0 3 1523 1522 1524
		mu 1 3 1523 1522 1524
		mc 0 3 1900 1898 1901
		f 3 1717 1718 1719
		mu 0 3 1525 1526 1527
		mu 1 3 1525 1526 1527
		mc 0 3 1902 1903 1905
		f 3 -1719 1720 1721
		mu 0 3 1527 1526 1528
		mu 1 3 1527 1526 1528
		mc 0 3 1906 1904 1907
		f 3 1722 1723 1724
		mu 0 3 1529 1530 1531
		mu 1 3 1529 1530 1531
		mc 0 3 1908 1909 1911
		f 3 -1724 1725 1726
		mu 0 3 1531 1530 1532
		mu 1 3 1531 1530 1532
		mc 0 3 1912 1910 1913
		f 3 1727 1728 1729
		mu 0 3 1533 1534 1535
		mu 1 3 1533 1534 1535
		mc 0 3 1914 1915 1917
		f 3 -1729 1730 1731
		mu 0 3 1535 1534 1536
		mu 1 3 1535 1534 1536
		mc 0 3 1918 1916 1919
		f 3 1732 1733 1734
		mu 0 3 1537 1538 1539
		mu 1 3 1537 1538 1539
		mc 0 3 1920 1921 1923
		f 3 -1734 1735 1736
		mu 0 3 1539 1538 1540
		mu 1 3 1539 1538 1540
		mc 0 3 1924 1922 1925
		f 3 1737 1738 1739
		mu 0 3 1541 1542 1543
		mu 1 3 1541 1542 1543
		mc 0 3 1926 1927 1929
		f 3 -1739 1740 1741
		mu 0 3 1543 1542 1544
		mu 1 3 1543 1542 1544
		mc 0 3 1930 1928 1931
		f 3 1742 1743 1744
		mu 0 3 1545 1546 1547
		mu 1 3 1545 1546 1547
		mc 0 3 1932 1933 1935
		f 3 -1744 1745 1746
		mu 0 3 1547 1546 1548
		mu 1 3 1547 1546 1548
		mc 0 3 1936 1934 1937
		f 3 1747 1748 1749
		mu 0 3 1549 1550 1551
		mu 1 3 1549 1550 1551
		mc 0 3 1938 1939 1941
		f 3 -1749 1750 1751
		mu 0 3 1551 1550 1552
		mu 1 3 1551 1550 1552
		mc 0 3 1942 1940 1943
		f 3 1752 1753 1754
		mu 0 3 1553 1554 1555
		mu 1 3 1553 1554 1555
		mc 0 3 1944 1945 1947
		f 3 -1754 1755 1756
		mu 0 3 1555 1554 1556
		mu 1 3 1555 1554 1556
		mc 0 3 1948 1946 1949
		f 3 1757 1758 1759
		mu 0 3 1557 1558 1559
		mu 1 3 1557 1558 1559
		mc 0 3 1950 1951 1953
		f 3 -1759 1760 1761
		mu 0 3 1559 1558 1560
		mu 1 3 1559 1558 1560
		mc 0 3 1954 1952 1955
		f 3 1762 1763 1764
		mu 0 3 1561 1562 1563
		mu 1 3 1561 1562 1563
		mc 0 3 1956 1957 1959
		f 3 -1764 1765 1766
		mu 0 3 1563 1562 1564
		mu 1 3 1563 1562 1564
		mc 0 3 1960 1958 1961
		f 3 1767 1768 1769
		mu 0 3 1565 1566 1567
		mu 1 3 1565 1566 1567
		mc 0 3 1962 1963 1965
		f 3 -1769 1770 1771
		mu 0 3 1567 1566 1568
		mu 1 3 1567 1566 1568
		mc 0 3 1966 1964 1967
		f 3 1772 1773 1774
		mu 0 3 1569 1570 1571
		mu 1 3 1569 1570 1571
		mc 0 3 1968 1969 1971
		f 3 -1774 1775 1776
		mu 0 3 1571 1570 1572
		mu 1 3 1571 1570 1572
		mc 0 3 1972 1970 1973
		f 3 1777 1778 1779
		mu 0 3 1573 1574 1575
		mu 1 3 1573 1574 1575
		mc 0 3 1974 1975 1977
		f 3 -1779 1780 1781
		mu 0 3 1575 1574 1576
		mu 1 3 1575 1574 1576
		mc 0 3 1978 1976 1979
		f 3 1782 1783 1784
		mu 0 3 1577 1578 1579
		mu 1 3 1577 1578 1579
		mc 0 3 1980 1981 1983
		f 3 -1784 1785 1786
		mu 0 3 1579 1578 1580
		mu 1 3 1579 1578 1580
		mc 0 3 1984 1982 1985
		f 3 1787 1788 1789
		mu 0 3 1581 1582 1583
		mu 1 3 1581 1582 1583
		mc 0 3 1986 1987 1989
		f 3 -1789 1790 1791
		mu 0 3 1583 1582 1584
		mu 1 3 1583 1582 1584
		mc 0 3 1990 1988 1991
		f 3 1792 1793 1794
		mu 0 3 1585 1586 1587
		mu 1 3 1585 1586 1587
		mc 0 3 1992 1993 1995
		f 3 -1794 1795 1796
		mu 0 3 1587 1586 1588
		mu 1 3 1587 1586 1588
		mc 0 3 1996 1994 1997
		f 3 1797 1798 1799
		mu 0 3 1589 1590 1591
		mu 1 3 1589 1590 1591
		mc 0 3 1998 1999 2001
		f 3 -1799 1800 1801
		mu 0 3 1591 1590 1592
		mu 1 3 1591 1590 1592
		mc 0 3 2002 2000 2003
		f 3 1802 1803 1804
		mu 0 3 1593 1594 1595
		mu 1 3 1593 1594 1595
		mc 0 3 2004 2005 2007
		f 3 -1804 1805 1806
		mu 0 3 1595 1594 1596
		mu 1 3 1595 1594 1596
		mc 0 3 2008 2006 2009
		f 3 1807 1808 1809
		mu 0 3 1597 1598 1599
		mu 1 3 1597 1598 1599
		mc 0 3 2010 2011 2013
		f 3 -1809 1810 1811
		mu 0 3 1599 1598 1600
		mu 1 3 1599 1598 1600
		mc 0 3 2014 2012 2015
		f 3 1812 1813 1814
		mu 0 3 1601 1602 1603
		mu 1 3 1601 1602 1603
		mc 0 3 2016 2017 2019
		f 3 -1814 1815 1816
		mu 0 3 1603 1602 1604
		mu 1 3 1603 1602 1604
		mc 0 3 2020 2018 2021
		f 3 1817 1818 1819
		mu 0 3 1605 1606 1607
		mu 1 3 1605 1606 1607
		mc 0 3 2022 2023 2025
		f 3 -1819 1820 1821
		mu 0 3 1607 1606 1608
		mu 1 3 1607 1606 1608
		mc 0 3 2026 2024 2027
		f 3 1822 1823 1824
		mu 0 3 1609 1610 1611
		mu 1 3 1609 1610 1611
		mc 0 3 2028 2029 2031
		f 3 -1824 1825 1826
		mu 0 3 1611 1610 1612
		mu 1 3 1611 1610 1612
		mc 0 3 2032 2030 2033
		f 3 1827 1828 1829
		mu 0 3 1613 1614 1615
		mu 1 3 1613 1614 1615
		mc 0 3 2034 2035 2037
		f 3 -1829 1830 1831
		mu 0 3 1615 1614 1616
		mu 1 3 1615 1614 1616
		mc 0 3 2038 2036 2039
		f 3 1832 1833 1834
		mu 0 3 1617 1618 1619
		mu 1 3 1617 1618 1619
		mc 0 3 2040 2041 2043
		f 3 -1834 1835 1836
		mu 0 3 1619 1618 1620
		mu 1 3 1619 1618 1620
		mc 0 3 2044 2042 2045
		f 3 1837 1838 1839
		mu 0 3 1621 1622 1623
		mu 1 3 1621 1622 1623
		mc 0 3 2046 2047 2049
		f 3 -1839 1840 1841
		mu 0 3 1623 1622 1624
		mu 1 3 1623 1622 1624
		mc 0 3 2050 2048 2051
		f 3 1842 1843 1844
		mu 0 3 1625 1626 1627
		mu 1 3 1625 1626 1627
		mc 0 3 2052 2053 2055
		f 3 -1844 1845 1846
		mu 0 3 1627 1626 1628
		mu 1 3 1627 1626 1628
		mc 0 3 2056 2054 2057
		f 3 1847 1848 1849
		mu 0 3 1629 1630 1631
		mu 1 3 1629 1630 1631
		mc 0 3 2058 2059 2061
		f 3 -1849 1850 1851
		mu 0 3 1631 1630 1632
		mu 1 3 1631 1630 1632
		mc 0 3 2062 2060 2063
		f 3 1852 1853 1854
		mu 0 3 1633 1634 1635
		mu 1 3 1633 1634 1635
		mc 0 3 2064 2065 2067
		f 3 -1854 1855 1856
		mu 0 3 1635 1634 1636
		mu 1 3 1635 1634 1636
		mc 0 3 2068 2066 2069
		f 3 1857 1858 1859
		mu 0 3 1637 1638 1639
		mu 1 3 1637 1638 1639
		mc 0 3 2070 2071 2073
		f 3 -1859 1860 1861
		mu 0 3 1639 1638 1640
		mu 1 3 1639 1638 1640
		mc 0 3 2074 2072 2075
		f 3 1862 1863 1864
		mu 0 3 1641 1642 1643
		mu 1 3 1641 1642 1643
		mc 0 3 2076 2077 2079
		f 3 -1864 1865 1866
		mu 0 3 1643 1642 1644
		mu 1 3 1643 1642 1644
		mc 0 3 2080 2078 2081
		f 3 1867 1868 1869
		mu 0 3 1645 1646 1647
		mu 1 3 1645 1646 1647
		mc 0 3 2082 2083 2085
		f 3 -1869 1870 1871
		mu 0 3 1647 1646 1648
		mu 1 3 1647 1646 1648
		mc 0 3 2086 2084 2087
		f 3 1872 1873 1874
		mu 0 3 1649 1650 1651
		mu 1 3 1649 1650 1651
		mc 0 3 2088 2089 2091
		f 3 -1874 1875 1876
		mu 0 3 1651 1650 1652
		mu 1 3 1651 1650 1652
		mc 0 3 2092 2090 2093
		f 3 1877 1878 1879
		mu 0 3 1653 1654 1655
		mu 1 3 1653 1654 1655
		mc 0 3 2094 2095 2097
		f 3 -1879 1880 1881
		mu 0 3 1655 1654 1656
		mu 1 3 1655 1654 1656
		mc 0 3 2098 2096 2099
		f 3 1882 1883 1884
		mu 0 3 1657 1658 1659
		mu 1 3 1657 1658 1659
		mc 0 3 2100 2101 2103
		f 3 -1884 1885 1886
		mu 0 3 1659 1658 1660
		mu 1 3 1659 1658 1660
		mc 0 3 2104 2102 2105
		f 3 1887 1888 1889
		mu 0 3 1661 1662 1663
		mu 1 3 1661 1662 1663
		mc 0 3 2106 2107 2109
		f 3 -1889 1890 1891
		mu 0 3 1663 1662 1664
		mu 1 3 1663 1662 1664
		mc 0 3 2110 2108 2111
		f 3 1892 1893 1894
		mu 0 3 1665 1666 1667
		mu 1 3 1665 1666 1667
		mc 0 3 2112 2113 2115
		f 3 -1894 1895 1896
		mu 0 3 1667 1666 1668
		mu 1 3 1667 1666 1668
		mc 0 3 2116 2114 2117
		f 3 1897 1898 1899
		mu 0 3 1669 1670 1671
		mu 1 3 1669 1670 1671
		mc 0 3 2118 2119 2121
		f 3 -1899 1900 1901
		mu 0 3 1671 1670 1672
		mu 1 3 1671 1670 1672
		mc 0 3 2122 2120 2123
		f 3 1902 1903 1904
		mu 0 3 1673 1674 1675
		mu 1 3 1673 1674 1675
		mc 0 3 2124 2125 2127
		f 3 -1904 1905 1906
		mu 0 3 1675 1674 1676
		mu 1 3 1675 1674 1676
		mc 0 3 2128 2126 2129
		f 3 1907 1908 1909
		mu 0 3 1677 1678 1679
		mu 1 3 1677 1678 1679
		mc 0 3 2130 2131 2133
		f 3 -1909 1910 1911
		mu 0 3 1679 1678 1680
		mu 1 3 1679 1678 1680
		mc 0 3 2134 2132 2135
		f 3 1912 1913 1914
		mu 0 3 1681 1682 1683
		mu 1 3 1681 1682 1683
		mc 0 3 2136 2137 2139
		f 3 -1914 1915 1916
		mu 0 3 1683 1682 1684
		mu 1 3 1683 1682 1684
		mc 0 3 2140 2138 2141
		f 3 1917 1918 1919
		mu 0 3 1685 1686 1687
		mu 1 3 1685 1686 1687
		mc 0 3 2142 2143 2145
		f 3 -1919 1920 1921
		mu 0 3 1687 1686 1688
		mu 1 3 1687 1686 1688
		mc 0 3 2146 2144 2147
		f 3 1922 1923 1924
		mu 0 3 1689 1690 1691
		mu 1 3 1689 1690 1691
		mc 0 3 2148 2149 2151
		f 3 -1924 1925 1926
		mu 0 3 1691 1690 1692
		mu 1 3 1691 1690 1692
		mc 0 3 2152 2150 2153
		f 3 1927 1928 1929
		mu 0 3 1693 1694 1695
		mu 1 3 1693 1694 1695
		mc 0 3 2154 2155 2157
		f 3 -1929 1930 1931
		mu 0 3 1695 1694 1696
		mu 1 3 1695 1694 1696
		mc 0 3 2158 2156 2159
		f 3 1932 1933 1934
		mu 0 3 1697 1698 1699
		mu 1 3 1697 1698 1699
		mc 0 3 2160 2161 2163
		f 3 -1934 1935 1936
		mu 0 3 1699 1698 1700
		mu 1 3 1699 1698 1700
		mc 0 3 2164 2162 2165
		f 3 1937 1938 1939
		mu 0 3 1701 1702 1703
		mu 1 3 1701 1702 1703
		mc 0 3 2166 2167 2169
		f 3 -1939 1940 1941
		mu 0 3 1703 1702 1704
		mu 1 3 1703 1702 1704
		mc 0 3 2170 2168 2171
		f 3 1942 1943 1944
		mu 0 3 1705 1706 1707
		mu 1 3 1705 1706 1707
		mc 0 3 2172 2173 2175
		f 3 -1944 1945 1946
		mu 0 3 1707 1706 1708
		mu 1 3 1707 1706 1708
		mc 0 3 2176 2174 2177
		f 3 1947 1948 1949
		mu 0 3 1709 1710 1711
		mu 1 3 1709 1710 1711
		mc 0 3 2178 2179 2181
		f 3 -1949 1950 1951
		mu 0 3 1711 1710 1712
		mu 1 3 1711 1710 1712
		mc 0 3 2182 2180 2183
		f 3 1952 1953 1954
		mu 0 3 1713 1714 1715
		mu 1 3 1713 1714 1715
		mc 0 3 2184 2185 2187
		f 3 -1954 1955 1956
		mu 0 3 1715 1714 1716
		mu 1 3 1715 1714 1716
		mc 0 3 2188 2186 2189
		f 3 1957 1958 1959
		mu 0 3 1717 1718 1719
		mu 1 3 1717 1718 1719
		mc 0 3 2190 2191 2193
		f 3 -1959 1960 1961
		mu 0 3 1719 1718 1720
		mu 1 3 1719 1718 1720
		mc 0 3 2194 2192 2195
		f 3 1962 1963 1964
		mu 0 3 1721 1722 1723
		mu 1 3 1721 1722 1723
		mc 0 3 2196 2197 2199
		f 3 -1964 1965 1966
		mu 0 3 1723 1722 1724
		mu 1 3 1723 1722 1724
		mc 0 3 2200 2198 2201
		f 3 1967 1968 1969
		mu 0 3 1725 1726 1727
		mu 1 3 1725 1726 1727
		mc 0 3 2202 2203 2205
		f 3 -1969 1970 1971
		mu 0 3 1727 1726 1728
		mu 1 3 1727 1726 1728
		mc 0 3 2206 2204 2207
		f 3 1972 1973 1974
		mu 0 3 1729 1730 1731
		mu 1 3 1729 1730 1731
		mc 0 3 2208 2209 2211
		f 3 -1974 1975 1976
		mu 0 3 1731 1730 1732
		mu 1 3 1731 1730 1732
		mc 0 3 2212 2210 2213
		f 3 1977 1978 1979
		mu 0 3 1733 1734 1735
		mu 1 3 1733 1734 1735
		mc 0 3 2214 2215 2217
		f 3 -1979 1980 1981
		mu 0 3 1735 1734 1736
		mu 1 3 1735 1734 1736
		mc 0 3 2218 2216 2219
		f 3 1982 1983 1984
		mu 0 3 1737 1738 1739
		mu 1 3 1737 1738 1739
		mc 0 3 2220 2221 2223
		f 3 -1984 1985 1986
		mu 0 3 1739 1738 1740
		mu 1 3 1739 1738 1740
		mc 0 3 2224 2222 2225
		f 3 1987 1988 1989
		mu 0 3 1741 1742 1743
		mu 1 3 1741 1742 1743
		mc 0 3 2226 2227 2229
		f 3 -1989 1990 1991
		mu 0 3 1743 1742 1744
		mu 1 3 1743 1742 1744
		mc 0 3 2230 2228 2231
		f 3 1992 1993 1994
		mu 0 3 1745 1746 1747
		mu 1 3 1745 1746 1747
		mc 0 3 2232 2233 2235
		f 3 -1994 1995 1996
		mu 0 3 1747 1746 1748
		mu 1 3 1747 1746 1748
		mc 0 3 2236 2234 2237
		f 3 1997 1998 1999
		mu 0 3 1749 1750 1751
		mu 1 3 1749 1750 1751
		mc 0 3 2238 2239 2241
		f 3 -1999 2000 2001
		mu 0 3 1751 1750 1752
		mu 1 3 1751 1750 1752
		mc 0 3 2242 2240 2243
		f 3 2002 2003 2004
		mu 0 3 1753 1754 1755
		mu 1 3 1753 1754 1755
		mc 0 3 2244 2245 2247
		f 3 -2004 2005 2006
		mu 0 3 1755 1754 1756
		mu 1 3 1755 1754 1756
		mc 0 3 2248 2246 2249
		f 3 2007 2008 2009
		mu 0 3 1757 1758 1759
		mu 1 3 1757 1758 1759
		mc 0 3 2250 2251 2253
		f 3 -2009 2010 2011
		mu 0 3 1759 1758 1760
		mu 1 3 1759 1758 1760
		mc 0 3 2254 2252 2255
		f 3 2012 2013 2014
		mu 0 3 1761 1762 1763
		mu 1 3 1761 1762 1763
		mc 0 3 2256 2257 2259
		f 3 -2014 2015 2016
		mu 0 3 1763 1762 1764
		mu 1 3 1763 1762 1764
		mc 0 3 2260 2258 2261
		f 3 2017 2018 2019
		mu 0 3 1765 1766 1767
		mu 1 3 1765 1766 1767
		mc 0 3 2262 2263 2265
		f 3 -2019 2020 2021
		mu 0 3 1767 1766 1768
		mu 1 3 1767 1766 1768
		mc 0 3 2266 2264 2267
		f 3 2022 2023 2024
		mu 0 3 1769 1770 1771
		mu 1 3 1769 1770 1771
		mc 0 3 2268 2269 2271
		f 3 -2024 2025 2026
		mu 0 3 1771 1770 1772
		mu 1 3 1771 1770 1772
		mc 0 3 2272 2270 2273
		f 3 2027 2028 2029
		mu 0 3 1773 1774 1775
		mu 1 3 1773 1774 1775
		mc 0 3 2274 2275 2277
		f 3 -2029 2030 2031
		mu 0 3 1775 1774 1776
		mu 1 3 1775 1774 1776
		mc 0 3 2278 2276 2279
		f 3 2032 2033 2034
		mu 0 3 1777 1778 1779
		mu 1 3 1777 1778 1779
		mc 0 3 2280 2281 2283
		f 3 -2034 2035 2036
		mu 0 3 1779 1778 1780
		mu 1 3 1779 1778 1780
		mc 0 3 2284 2282 2285
		f 3 2037 2038 2039
		mu 0 3 1781 1782 1783
		mu 1 3 1781 1782 1783
		mc 0 3 2286 2287 2289
		f 3 -2039 2040 2041
		mu 0 3 1783 1782 1784
		mu 1 3 1783 1782 1784
		mc 0 3 2290 2288 2291
		f 3 2042 2043 2044
		mu 0 3 1785 1786 1787
		mu 1 3 1785 1786 1787
		mc 0 3 2292 2293 2295
		f 3 -2044 2045 2046
		mu 0 3 1787 1786 1788
		mu 1 3 1787 1786 1788
		mc 0 3 2296 2294 2297
		f 3 2047 2048 2049
		mu 0 3 1789 1790 1791
		mu 1 3 1789 1790 1791
		mc 0 3 2298 2299 2301
		f 3 -2049 2050 2051
		mu 0 3 1791 1790 1792
		mu 1 3 1791 1790 1792
		mc 0 3 2302 2300 2303
		f 3 2052 2053 2054
		mu 0 3 1793 1794 1795
		mu 1 3 1793 1794 1795
		mc 0 3 2304 2305 2307
		f 3 -2054 2055 2056
		mu 0 3 1795 1794 1796
		mu 1 3 1795 1794 1796
		mc 0 3 2308 2306 2309
		f 3 2057 2058 2059
		mu 0 3 1797 1798 1799
		mu 1 3 1797 1798 1799
		mc 0 3 2310 2311 2313
		f 3 -2059 2060 2061
		mu 0 3 1799 1798 1800
		mu 1 3 1799 1798 1800
		mc 0 3 2314 2312 2315
		f 3 2062 2063 2064
		mu 0 3 1801 1802 1803
		mu 1 3 1801 1802 1803
		mc 0 3 2316 2317 2319
		f 3 -2064 2065 2066
		mu 0 3 1803 1802 1804
		mu 1 3 1803 1802 1804
		mc 0 3 2320 2318 2321
		f 3 2067 2068 2069
		mu 0 3 1805 1806 1807
		mu 1 3 1805 1806 1807
		mc 0 3 2322 2323 2325
		f 3 -2069 2070 2071
		mu 0 3 1807 1806 1808
		mu 1 3 1807 1806 1808
		mc 0 3 2326 2324 2327
		f 3 2072 2073 2074
		mu 0 3 1809 1810 1811
		mu 1 3 1809 1810 1811
		mc 0 3 2328 2329 2331
		f 3 -2074 2075 2076
		mu 0 3 1811 1810 1812
		mu 1 3 1811 1810 1812
		mc 0 3 2332 2330 2333
		f 3 2077 2078 2079
		mu 0 3 1813 1814 1815
		mu 1 3 1813 1814 1815
		mc 0 3 2334 2335 2337
		f 3 -2079 2080 2081
		mu 0 3 1815 1814 1816
		mu 1 3 1815 1814 1816
		mc 0 3 2338 2336 2339
		f 3 2082 2083 2084
		mu 0 3 1817 1818 1819
		mu 1 3 1817 1818 1819
		mc 0 3 2340 2341 2343
		f 3 -2084 2085 2086
		mu 0 3 1819 1818 1820
		mu 1 3 1819 1818 1820
		mc 0 3 2344 2342 2345
		f 3 2087 2088 2089
		mu 0 3 1821 1822 1823
		mu 1 3 1821 1822 1823
		mc 0 3 2346 2347 2349
		f 3 -2089 2090 2091
		mu 0 3 1823 1822 1824
		mu 1 3 1823 1822 1824
		mc 0 3 2350 2348 2351
		f 3 2092 2093 2094
		mu 0 3 1825 1826 1827
		mu 1 3 1825 1826 1827
		mc 0 3 2352 2353 2355
		f 3 -2094 2095 2096
		mu 0 3 1827 1826 1828
		mu 1 3 1827 1826 1828
		mc 0 3 2356 2354 2357
		f 3 2097 2098 2099
		mu 0 3 1829 1830 1831
		mu 1 3 1829 1830 1831
		mc 0 3 2358 2359 2361
		f 3 -2099 2100 2101
		mu 0 3 1831 1830 1832
		mu 1 3 1831 1830 1832
		mc 0 3 2362 2360 2363
		f 3 2102 2103 2104
		mu 0 3 1833 1834 1835
		mu 1 3 1833 1834 1835
		mc 0 3 2364 2365 2367
		f 3 -2104 2105 2106
		mu 0 3 1835 1834 1836
		mu 1 3 1835 1834 1836
		mc 0 3 2368 2366 2369
		f 3 2107 2108 2109
		mu 0 3 1837 1838 1839
		mu 1 3 1837 1838 1839
		mc 0 3 2370 2371 2373
		f 3 -2109 2110 2111
		mu 0 3 1839 1838 1840
		mu 1 3 1839 1838 1840
		mc 0 3 2374 2372 2375
		f 3 2112 2113 2114
		mu 0 3 1841 1842 1843
		mu 1 3 1841 1842 1843
		mc 0 3 2376 2377 2379
		f 3 -2114 2115 2116
		mu 0 3 1843 1842 1844
		mu 1 3 1843 1842 1844
		mc 0 3 2380 2378 2381
		f 3 2117 2118 2119
		mu 0 3 1845 1846 1847
		mu 1 3 1845 1846 1847
		mc 0 3 2382 2383 2385
		f 3 -2119 2120 2121
		mu 0 3 1847 1846 1848
		mu 1 3 1847 1846 1848
		mc 0 3 2386 2384 2387
		f 3 2122 2123 2124
		mu 0 3 1849 1850 1851
		mu 1 3 1849 1850 1851
		mc 0 3 2388 2389 2391
		f 3 -2124 2125 2126
		mu 0 3 1851 1850 1852
		mu 1 3 1851 1850 1852
		mc 0 3 2392 2390 2393
		f 3 2127 2128 2129
		mu 0 3 1853 1854 1855
		mu 1 3 1853 1854 1855
		mc 0 3 2394 2395 2397
		f 3 -2129 2130 2131
		mu 0 3 1855 1854 1856
		mu 1 3 1855 1854 1856
		mc 0 3 2398 2396 2399
		f 3 2132 2133 2134
		mu 0 3 1857 1858 1859
		mu 1 3 1857 1858 1859
		mc 0 3 2400 2401 2403
		f 3 -2134 2135 2136
		mu 0 3 1859 1858 1860
		mu 1 3 1859 1858 1860
		mc 0 3 2404 2402 2405
		f 3 2137 2138 2139
		mu 0 3 1861 1862 1863
		mu 1 3 1861 1862 1863
		mc 0 3 2406 2407 2409
		f 3 -2139 2140 2141
		mu 0 3 1863 1862 1864
		mu 1 3 1863 1862 1864
		mc 0 3 2410 2408 2411
		f 3 2142 2143 2144
		mu 0 3 1865 1866 1867
		mu 1 3 1865 1866 1867
		mc 0 3 2412 2413 2415
		f 3 -2144 2145 2146
		mu 0 3 1867 1866 1868
		mu 1 3 1867 1866 1868
		mc 0 3 2416 2414 2417
		f 3 2147 2148 2149
		mu 0 3 1869 1870 1871
		mu 1 3 1869 1870 1871
		mc 0 3 2418 2419 2421
		f 3 -2149 2150 2151
		mu 0 3 1871 1870 1872
		mu 1 3 1871 1870 1872
		mc 0 3 2422 2420 2423
		f 3 2152 2153 2154
		mu 0 3 1873 1874 1875
		mu 1 3 1873 1874 1875
		mc 0 3 2424 2425 2427
		f 3 -2154 2155 2156
		mu 0 3 1875 1874 1876
		mu 1 3 1875 1874 1876
		mc 0 3 2428 2426 2429
		f 3 2157 2158 2159
		mu 0 3 1877 1878 1879
		mu 1 3 1877 1878 1879
		mc 0 3 2430 2431 2433
		f 3 -2159 2160 2161
		mu 0 3 1879 1878 1880
		mu 1 3 1879 1878 1880
		mc 0 3 2434 2432 2435
		f 3 2162 2163 2164
		mu 0 3 1881 1882 1883
		mu 1 3 1881 1882 1883
		mc 0 3 2436 2437 2439
		f 3 -2164 2165 2166
		mu 0 3 1883 1882 1884
		mu 1 3 1883 1882 1884
		mc 0 3 2440 2438 2441
		f 3 2167 2168 2169
		mu 0 3 1885 1886 1887
		mu 1 3 1885 1886 1887
		mc 0 3 2442 2443 2445
		f 3 -2169 2170 2171
		mu 0 3 1887 1886 1888
		mu 1 3 1887 1886 1888
		mc 0 3 2446 2444 2447
		f 3 2172 2173 2174
		mu 0 3 1889 1890 1891
		mu 1 3 1889 1890 1891
		mc 0 3 2448 2449 2451
		f 3 -2174 2175 2176
		mu 0 3 1891 1890 1892
		mu 1 3 1891 1890 1892
		mc 0 3 2452 2450 2453
		f 3 2177 2178 2179
		mu 0 3 1893 1894 1895
		mu 1 3 1893 1894 1895
		mc 0 3 2454 2455 2457
		f 3 -2179 2180 2181
		mu 0 3 1895 1894 1896
		mu 1 3 1895 1894 1896
		mc 0 3 2458 2456 2459
		f 3 2182 2183 2184
		mu 0 3 1897 1898 1899
		mu 1 3 1897 1898 1899
		mc 0 3 2460 2461 2463
		f 3 -2184 2185 2186
		mu 0 3 1899 1898 1900
		mu 1 3 1899 1898 1900
		mc 0 3 2464 2462 2465
		f 3 2187 2188 2189
		mu 0 3 1901 1902 1903
		mu 1 3 1901 1902 1903
		mc 0 3 2466 2467 2469
		f 3 -2189 2190 2191
		mu 0 3 1903 1902 1904
		mu 1 3 1903 1902 1904
		mc 0 3 2470 2468 2471
		f 3 2192 2193 2194
		mu 0 3 1905 1906 1907
		mu 1 3 1905 1906 1907
		mc 0 3 2472 2473 2475
		f 3 -2194 2195 2196
		mu 0 3 1907 1906 1908
		mu 1 3 1907 1906 1908
		mc 0 3 2476 2474 2477
		f 3 2197 2198 2199
		mu 0 3 1909 1910 1911
		mu 1 3 1909 1910 1911
		mc 0 3 2478 2479 2481
		f 3 -2199 2200 2201
		mu 0 3 1911 1910 1912
		mu 1 3 1911 1910 1912
		mc 0 3 2482 2480 2483
		f 3 2202 2203 2204
		mu 0 3 1913 1914 1915
		mu 1 3 1913 1914 1915
		mc 0 3 2484 2485 2487
		f 3 -2204 2205 2206
		mu 0 3 1915 1914 1916
		mu 1 3 1915 1914 1916
		mc 0 3 2488 2486 2489
		f 3 2207 2208 2209
		mu 0 3 1917 1918 1919
		mu 1 3 1917 1918 1919
		mc 0 3 2490 2491 2493
		f 3 -2209 2210 2211
		mu 0 3 1919 1918 1920
		mu 1 3 1919 1918 1920
		mc 0 3 2494 2492 2495
		f 3 2212 2213 2214
		mu 0 3 1921 1922 1923
		mu 1 3 1921 1922 1923
		mc 0 3 2496 2497 2499
		f 3 -2214 2215 2216
		mu 0 3 1923 1922 1924
		mu 1 3 1923 1922 1924
		mc 0 3 2500 2498 2501
		f 3 2217 2218 2219
		mu 0 3 1925 1926 1927
		mu 1 3 1925 1926 1927
		mc 0 3 2502 2503 2505
		f 3 -2219 2220 2221
		mu 0 3 1927 1926 1928
		mu 1 3 1927 1926 1928
		mc 0 3 2506 2504 2507
		f 3 2222 2223 2224
		mu 0 3 1929 1930 1931
		mu 1 3 1929 1930 1931
		mc 0 3 2508 2509 2511
		f 3 -2224 2225 2226
		mu 0 3 1931 1930 1932
		mu 1 3 1931 1930 1932
		mc 0 3 2512 2510 2513
		f 3 2227 2228 2229
		mu 0 3 1933 1934 1935
		mu 1 3 1933 1934 1935
		mc 0 3 2514 2515 2517
		f 3 -2229 2230 2231
		mu 0 3 1935 1934 1936
		mu 1 3 1935 1934 1936
		mc 0 3 2518 2516 2519
		f 3 2232 2233 2234
		mu 0 3 1937 1938 1939
		mu 1 3 1937 1938 1939
		mc 0 3 2520 2521 2523
		f 3 -2234 2235 2236
		mu 0 3 1939 1938 1940
		mu 1 3 1939 1938 1940
		mc 0 3 2524 2522 2525
		f 3 2237 2238 2239
		mu 0 3 1941 1942 1943
		mu 1 3 1941 1942 1943
		mc 0 3 2526 2527 2529
		f 3 -2239 2240 2241
		mu 0 3 1943 1942 1944
		mu 1 3 1943 1942 1944
		mc 0 3 2530 2528 2531
		f 3 2242 2243 2244
		mu 0 3 1945 1946 1947
		mu 1 3 1945 1946 1947
		mc 0 3 2532 2533 2535
		f 3 -2244 2245 2246
		mu 0 3 1947 1946 1948
		mu 1 3 1947 1946 1948
		mc 0 3 2536 2534 2537
		f 3 2247 2248 2249
		mu 0 3 1949 1950 1951
		mu 1 3 1949 1950 1951
		mc 0 3 2538 2539 2541
		f 3 -2249 2250 2251
		mu 0 3 1951 1950 1952
		mu 1 3 1951 1950 1952
		mc 0 3 2542 2540 2543
		f 3 2252 2253 2254
		mu 0 3 1953 1954 1955
		mu 1 3 1953 1954 1955
		mc 0 3 2544 2545 2547
		f 3 -2254 2255 2256
		mu 0 3 1955 1954 1956
		mu 1 3 1955 1954 1956
		mc 0 3 2548 2546 2549
		f 3 2257 2258 2259
		mu 0 3 1957 1958 1959
		mu 1 3 1957 1958 1959
		mc 0 3 2550 2551 2553
		f 3 -2259 2260 2261
		mu 0 3 1959 1958 1960
		mu 1 3 1959 1958 1960
		mc 0 3 2554 2552 2555
		f 3 2262 2263 2264
		mu 0 3 1961 1962 1963
		mu 1 3 1961 1962 1963
		mc 0 3 2556 2557 2559
		f 3 -2264 2265 2266
		mu 0 3 1963 1962 1964
		mu 1 3 1963 1962 1964
		mc 0 3 2560 2558 2561
		f 3 2267 2268 2269
		mu 0 3 1965 1966 1967
		mu 1 3 1965 1966 1967
		mc 0 3 2562 2563 2565
		f 3 -2269 2270 2271
		mu 0 3 1967 1966 1968
		mu 1 3 1967 1966 1968
		mc 0 3 2566 2564 2567
		f 3 2272 2273 2274
		mu 0 3 1969 1970 1971
		mu 1 3 1969 1970 1971
		mc 0 3 2568 2569 2571
		f 3 -2274 2275 2276
		mu 0 3 1971 1970 1972
		mu 1 3 1971 1970 1972
		mc 0 3 2572 2570 2573
		f 3 2277 2278 2279
		mu 0 3 1973 1974 1975
		mu 1 3 1973 1974 1975
		mc 0 3 2574 2575 2577
		f 3 -2279 2280 2281
		mu 0 3 1975 1974 1976
		mu 1 3 1975 1974 1976
		mc 0 3 2578 2576 2579
		f 3 2282 2283 2284
		mu 0 3 1977 1978 1979
		mu 1 3 1977 1978 1979
		mc 0 3 2580 2581 2583
		f 3 -2284 2285 2286
		mu 0 3 1979 1978 1980
		mu 1 3 1979 1978 1980
		mc 0 3 2584 2582 2585
		f 3 2287 2288 2289
		mu 0 3 1981 1982 1983
		mu 1 3 1981 1982 1983
		mc 0 3 2586 2587 2589
		f 3 -2289 2290 2291
		mu 0 3 1983 1982 1984
		mu 1 3 1983 1982 1984
		mc 0 3 2590 2588 2591
		f 3 2292 2293 2294
		mu 0 3 1985 1986 1987
		mu 1 3 1985 1986 1987
		mc 0 3 2592 2593 2595
		f 3 -2294 2295 2296
		mu 0 3 1987 1986 1988
		mu 1 3 1987 1986 1988
		mc 0 3 2596 2594 2597
		f 3 2297 2298 2299
		mu 0 3 1989 1990 1991
		mu 1 3 1989 1990 1991
		mc 0 3 2598 2599 2601
		f 3 -2299 2300 2301
		mu 0 3 1991 1990 1992
		mu 1 3 1991 1990 1992
		mc 0 3 2602 2600 2603
		f 3 2302 2303 2304
		mu 0 3 1993 1994 1995
		mu 1 3 1993 1994 1995
		mc 0 3 2604 2605 2607
		f 3 -2304 2305 2306
		mu 0 3 1995 1994 1996
		mu 1 3 1995 1994 1996
		mc 0 3 2608 2606 2609
		f 3 2307 2308 2309
		mu 0 3 1997 1998 1999
		mu 1 3 1997 1998 1999
		mc 0 3 2610 2611 2613
		f 3 -2309 2310 2311
		mu 0 3 1999 1998 2000
		mu 1 3 1999 1998 2000
		mc 0 3 2614 2612 2615
		f 3 2312 2313 2314
		mu 0 3 2001 2002 2003
		mu 1 3 2001 2002 2003
		mc 0 3 2616 2617 2619
		f 3 -2314 2315 2316
		mu 0 3 2003 2002 2004
		mu 1 3 2003 2002 2004
		mc 0 3 2620 2618 2621
		f 3 2317 2318 2319
		mu 0 3 2005 2006 2007
		mu 1 3 2005 2006 2007
		mc 0 3 2622 2623 2625
		f 3 -2319 2320 2321
		mu 0 3 2007 2006 2008
		mu 1 3 2007 2006 2008
		mc 0 3 2626 2624 2627
		f 3 2322 2323 2324
		mu 0 3 2009 2010 2011
		mu 1 3 2009 2010 2011
		mc 0 3 2628 2629 2631
		f 3 -2324 2325 2326
		mu 0 3 2011 2010 2012
		mu 1 3 2011 2010 2012
		mc 0 3 2632 2630 2633
		f 3 2327 2328 2329
		mu 0 3 2013 2014 2015
		mu 1 3 2013 2014 2015
		mc 0 3 2634 2635 2637
		f 3 -2329 2330 2331
		mu 0 3 2015 2014 2016
		mu 1 3 2015 2014 2016
		mc 0 3 2638 2636 2639
		f 3 2332 2333 2334
		mu 0 3 2017 2018 2019
		mu 1 3 2017 2018 2019
		mc 0 3 2640 2641 2643
		f 3 -2334 2335 2336
		mu 0 3 2019 2018 2020
		mu 1 3 2019 2018 2020
		mc 0 3 2644 2642 2645
		f 3 2337 2338 2339
		mu 0 3 2021 2022 2023
		mu 1 3 2021 2022 2023
		mc 0 3 2646 2647 2649
		f 3 -2339 2340 2341
		mu 0 3 2023 2022 2024
		mu 1 3 2023 2022 2024
		mc 0 3 2650 2648 2651
		f 3 2342 2343 2344
		mu 0 3 2025 2026 2027
		mu 1 3 2025 2026 2027
		mc 0 3 2652 2653 2655
		f 3 -2344 2345 2346
		mu 0 3 2027 2026 2028
		mu 1 3 2027 2026 2028
		mc 0 3 2656 2654 2657
		f 3 2347 2348 2349
		mu 0 3 2029 2030 2031
		mu 1 3 2029 2030 2031
		mc 0 3 2658 2659 2661
		f 3 -2349 2350 2351
		mu 0 3 2031 2030 2032
		mu 1 3 2031 2030 2032
		mc 0 3 2662 2660 2663
		f 3 2352 2353 2354
		mu 0 3 2033 2034 2035
		mu 1 3 2033 2034 2035
		mc 0 3 2664 2665 2667
		f 3 -2354 2355 2356
		mu 0 3 2035 2034 2036
		mu 1 3 2035 2034 2036
		mc 0 3 2668 2666 2669
		f 3 2357 2358 2359
		mu 0 3 2037 2038 2039
		mu 1 3 2037 2038 2039
		mc 0 3 2670 2671 2673
		f 3 -2359 2360 2361
		mu 0 3 2039 2038 2040
		mu 1 3 2039 2038 2040
		mc 0 3 2674 2672 2675
		f 3 2362 2363 2364
		mu 0 3 2041 2042 2043
		mu 1 3 2041 2042 2043
		mc 0 3 2676 2677 2679
		f 3 -2364 2365 2366
		mu 0 3 2043 2042 2044
		mu 1 3 2043 2042 2044
		mc 0 3 2680 2678 2681
		f 3 2367 2368 2369
		mu 0 3 2045 2046 2047
		mu 1 3 2045 2046 2047
		mc 0 3 2682 2683 2685
		f 3 -2369 2370 2371
		mu 0 3 2047 2046 2048
		mu 1 3 2047 2046 2048
		mc 0 3 2686 2684 2687
		f 3 2372 2373 2374
		mu 0 3 2049 2050 2051
		mu 1 3 2049 2050 2051
		mc 0 3 2688 2689 2691
		f 3 -2374 2375 2376
		mu 0 3 2051 2050 2052
		mu 1 3 2051 2050 2052
		mc 0 3 2692 2690 2693
		f 3 2377 2378 2379
		mu 0 3 2052 2053 2054
		mu 1 3 2052 2053 2054
		mc 0 3 2694 2696 2698
		f 3 2380 -2378 2381
		mu 0 3 2055 2053 2052
		mu 1 3 2055 2053 2052
		mc 0 3 2699 2697 2695
		f 3 2382 2383 2384
		mu 0 3 2056 2057 2058
		mu 1 3 2056 2057 2058
		mc 0 3 2700 2701 2703
		f 3 -2384 2385 2386
		mu 0 3 2058 2057 2059
		mu 1 3 2058 2057 2059
		mc 0 3 2704 2702 2705
		f 3 2387 2388 2389
		mu 0 3 2060 2061 2062
		mu 1 3 2060 2061 2062
		mc 0 3 2706 2707 2709
		f 3 -2389 2390 2391
		mu 0 3 2062 2061 2063
		mu 1 3 2062 2061 2063
		mc 0 3 2710 2708 2711
		f 3 2392 2393 2394
		mu 0 3 2064 2065 2066
		mu 1 3 2064 2065 2066
		mc 0 3 2712 2713 2715
		f 3 -2394 2395 2396
		mu 0 3 2066 2065 2067
		mu 1 3 2066 2065 2067
		mc 0 3 2716 2714 2717
		f 3 2397 2398 2399
		mu 0 3 2068 2069 2070
		mu 1 3 2068 2069 2070
		mc 0 3 2718 2719 2721
		f 3 -2399 2400 2401
		mu 0 3 2070 2069 2071
		mu 1 3 2070 2069 2071
		mc 0 3 2722 2720 2723
		f 3 2402 2403 2404
		mu 0 3 2072 2073 2074
		mu 1 3 2072 2073 2074
		mc 0 3 2724 2725 2727
		f 3 -2404 2405 2406
		mu 0 3 2074 2073 2075
		mu 1 3 2074 2073 2075
		mc 0 3 2728 2726 2729
		f 3 2407 2408 2409
		mu 0 3 2076 2077 2078
		mu 1 3 2076 2077 2078
		mc 0 3 2730 2731 2733
		f 3 -2409 2410 2411
		mu 0 3 2078 2077 2079
		mu 1 3 2078 2077 2079
		mc 0 3 2734 2732 2735
		f 3 2412 2413 2414
		mu 0 3 2080 2081 2082
		mu 1 3 2080 2081 2082
		mc 0 3 2736 2737 2739
		f 3 -2414 2415 2416
		mu 0 3 2082 2081 2083
		mu 1 3 2082 2081 2083
		mc 0 3 2740 2738 2741
		f 3 2417 2418 2419
		mu 0 3 2084 2085 2086
		mu 1 3 2084 2085 2086
		mc 0 3 2742 2743 2745
		f 3 -2419 2420 2421
		mu 0 3 2086 2085 2087
		mu 1 3 2086 2085 2087
		mc 0 3 2746 2744 2747
		f 3 2422 2423 2424
		mu 0 3 2088 2089 2090
		mu 1 3 2088 2089 2090
		mc 0 3 2748 2749 2751
		f 3 -2424 2425 2426
		mu 0 3 2090 2089 2091
		mu 1 3 2090 2089 2091
		mc 0 3 2752 2750 2753
		f 3 2427 2428 2429
		mu 0 3 2092 2093 2094
		mu 1 3 2092 2093 2094
		mc 0 3 2754 2755 2757
		f 3 -2429 2430 2431
		mu 0 3 2094 2093 2095
		mu 1 3 2094 2093 2095
		mc 0 3 2758 2756 2759
		f 3 2432 2433 2434
		mu 0 3 2096 2097 2098
		mu 1 3 2096 2097 2098
		mc 0 3 2760 2761 2763
		f 3 -2434 2435 2436
		mu 0 3 2098 2097 2099
		mu 1 3 2098 2097 2099
		mc 0 3 2764 2762 2765
		f 3 2437 2438 2439
		mu 0 3 2100 2101 2102
		mu 1 3 2100 2101 2102
		mc 0 3 2766 2767 2769
		f 3 -2439 2440 2441
		mu 0 3 2102 2101 2103
		mu 1 3 2102 2101 2103
		mc 0 3 2770 2768 2771
		f 3 2442 2443 2444
		mu 0 3 2104 2105 2106
		mu 1 3 2104 2105 2106
		mc 0 3 2772 2773 2775
		f 3 -2444 2445 2446
		mu 0 3 2106 2105 2107
		mu 1 3 2106 2105 2107
		mc 0 3 2776 2774 2777
		f 3 2447 2448 2449
		mu 0 3 2108 2109 2110
		mu 1 3 2108 2109 2110
		mc 0 3 2778 2779 2781
		f 3 -2449 2450 2451
		mu 0 3 2110 2109 2111
		mu 1 3 2110 2109 2111
		mc 0 3 2782 2780 2783
		f 3 2452 2453 2454
		mu 0 3 2112 2113 2114
		mu 1 3 2112 2113 2114
		mc 0 3 2784 2785 2787
		f 3 -2454 2455 2456
		mu 0 3 2114 2113 2115
		mu 1 3 2114 2113 2115
		mc 0 3 2788 2786 2789
		f 3 2457 2458 2459
		mu 0 3 2116 2117 2118
		mu 1 3 2116 2117 2118
		mc 0 3 2790 2791 2793
		f 3 -2459 2460 2461
		mu 0 3 2118 2117 2119
		mu 1 3 2118 2117 2119
		mc 0 3 2794 2792 2795
		f 3 2462 2463 2464
		mu 0 3 2120 2121 2122
		mu 1 3 2120 2121 2122
		mc 0 3 2796 2797 2799
		f 3 -2464 2465 2466
		mu 0 3 2122 2121 2123
		mu 1 3 2122 2121 2123
		mc 0 3 2800 2798 2801
		f 3 2467 2468 2469
		mu 0 3 2124 2125 2126
		mu 1 3 2124 2125 2126
		mc 0 3 2802 2803 2805
		f 3 -2469 2470 2471
		mu 0 3 2126 2125 2127
		mu 1 3 2126 2125 2127
		mc 0 3 2806 2804 2807
		f 3 2472 2473 2474
		mu 0 3 2128 2129 2130
		mu 1 3 2128 2129 2130
		mc 0 3 2808 2809 2811
		f 3 -2474 2475 2476
		mu 0 3 2130 2129 2131
		mu 1 3 2130 2129 2131
		mc 0 3 2812 2810 2813
		f 3 2477 2478 2479
		mu 0 3 2132 2133 2134
		mu 1 3 2132 2133 2134
		mc 0 3 2814 2815 2817
		f 3 -2479 2480 2481
		mu 0 3 2134 2133 2135
		mu 1 3 2134 2133 2135
		mc 0 3 2818 2816 2819
		f 3 2482 2483 2484
		mu 0 3 2136 2137 2138
		mu 1 3 2136 2137 2138
		mc 0 3 2820 2821 2823
		f 3 -2484 2485 2486
		mu 0 3 2138 2137 2139
		mu 1 3 2138 2137 2139
		mc 0 3 2824 2822 2825
		f 3 2487 2488 2489
		mu 0 3 2140 2141 2142
		mu 1 3 2140 2141 2142
		mc 0 3 2826 2827 2829
		f 3 -2489 2490 2491
		mu 0 3 2142 2141 2143
		mu 1 3 2142 2141 2143
		mc 0 3 2830 2828 2831
		f 3 2492 2493 2494
		mu 0 3 2144 2145 2146
		mu 1 3 2144 2145 2146
		mc 0 3 2832 2833 2835
		f 3 -2494 2495 2496
		mu 0 3 2146 2145 2147
		mu 1 3 2146 2145 2147
		mc 0 3 2836 2834 2837
		f 3 2497 2498 2499
		mu 0 3 2148 2149 2150
		mu 1 3 2148 2149 2150
		mc 0 3 2838 2839 2841
		f 3 -2499 2500 2501
		mu 0 3 2150 2149 2151
		mu 1 3 2150 2149 2151
		mc 0 3 2842 2840 2843
		f 3 2502 2503 2504
		mu 0 3 2152 2153 2154
		mu 1 3 2152 2153 2154
		mc 0 3 2844 2845 2847
		f 3 -2504 2505 2506
		mu 0 3 2154 2153 2155
		mu 1 3 2154 2153 2155
		mc 0 3 2848 2846 2849
		f 3 2507 2508 2509
		mu 0 3 2156 2157 2158
		mu 1 3 2156 2157 2158
		mc 0 3 2850 2851 2853
		f 3 -2509 2510 2511
		mu 0 3 2158 2157 2159
		mu 1 3 2158 2157 2159
		mc 0 3 2854 2852 2855
		f 3 2512 2513 2514
		mu 0 3 2160 2161 2162
		mu 1 3 2160 2161 2162
		mc 0 3 2856 2857 2859
		f 3 -2514 2515 2516
		mu 0 3 2162 2161 2163
		mu 1 3 2162 2161 2163
		mc 0 3 2860 2858 2861
		f 3 2517 2518 2519
		mu 0 3 2164 2165 2166
		mu 1 3 2164 2165 2166
		mc 0 3 2862 2863 2865
		f 3 -2519 2520 2521
		mu 0 3 2166 2165 2167
		mu 1 3 2166 2165 2167
		mc 0 3 2866 2864 2867
		f 3 2522 2523 2524
		mu 0 3 2168 2169 2170
		mu 1 3 2168 2169 2170
		mc 0 3 2868 2869 2871
		f 3 -2524 2525 2526
		mu 0 3 2170 2169 2171
		mu 1 3 2170 2169 2171
		mc 0 3 2872 2870 2873
		f 3 2527 2528 2529
		mu 0 3 2172 2173 2174
		mu 1 3 2172 2173 2174
		mc 0 3 2874 2875 2877
		f 3 -2529 2530 2531
		mu 0 3 2174 2173 2175
		mu 1 3 2174 2173 2175
		mc 0 3 2878 2876 2879
		f 3 2532 2533 2534
		mu 0 3 2176 2177 2178
		mu 1 3 2176 2177 2178
		mc 0 3 2880 2881 2883
		f 3 -2534 2535 2536
		mu 0 3 2178 2177 2179
		mu 1 3 2178 2177 2179
		mc 0 3 2884 2882 2885
		f 3 2537 2538 2539
		mu 0 3 2180 2181 2182
		mu 1 3 2180 2181 2182
		mc 0 3 2886 2887 2889
		f 3 -2539 2540 2541
		mu 0 3 2182 2181 2183
		mu 1 3 2182 2181 2183
		mc 0 3 2890 2888 2891
		f 3 2542 2543 2544
		mu 0 3 2184 2185 2186
		mu 1 3 2184 2185 2186
		mc 0 3 2892 2893 2895
		f 3 -2544 2545 2546
		mu 0 3 2186 2185 2187
		mu 1 3 2186 2185 2187
		mc 0 3 2896 2894 2897
		f 3 2547 2548 2549
		mu 0 3 2188 2189 2190
		mu 1 3 2188 2189 2190
		mc 0 3 2898 2899 2901
		f 3 -2549 2550 2551
		mu 0 3 2190 2189 2191
		mu 1 3 2190 2189 2191
		mc 0 3 2902 2900 2903
		f 3 2552 2553 2554
		mu 0 3 2192 2193 2194
		mu 1 3 2192 2193 2194
		mc 0 3 2904 2905 2907
		f 3 -2554 2555 2556
		mu 0 3 2194 2193 2195
		mu 1 3 2194 2193 2195
		mc 0 3 2908 2906 2909
		f 3 2557 2558 2559
		mu 0 3 2196 2197 2198
		mu 1 3 2196 2197 2198
		mc 0 3 2910 2911 2913
		f 3 -2559 2560 2561
		mu 0 3 2198 2197 2199
		mu 1 3 2198 2197 2199
		mc 0 3 2914 2912 2915
		f 3 2562 2563 2564
		mu 0 3 2200 2201 2202
		mu 1 3 2200 2201 2202
		mc 0 3 2916 2917 2919
		f 3 -2564 2565 2566
		mu 0 3 2202 2201 2203
		mu 1 3 2202 2201 2203
		mc 0 3 2920 2918 2921
		f 3 2567 2568 2569
		mu 0 3 2204 2205 2206
		mu 1 3 2204 2205 2206
		mc 0 3 2922 2923 2925
		f 3 -2569 2570 2571
		mu 0 3 2206 2205 2207
		mu 1 3 2206 2205 2207
		mc 0 3 2926 2924 2927
		f 3 2572 2573 2574
		mu 0 3 2208 2209 2210
		mu 1 3 2208 2209 2210
		mc 0 3 2928 2929 2931
		f 3 -2574 2575 2576
		mu 0 3 2210 2209 2211
		mu 1 3 2210 2209 2211
		mc 0 3 2932 2930 2933
		f 3 2577 2578 2579
		mu 0 3 2212 2213 2214
		mu 1 3 2212 2213 2214
		mc 0 3 2934 2935 2937
		f 3 -2579 2580 2581
		mu 0 3 2214 2213 2215
		mu 1 3 2214 2213 2215
		mc 0 3 2938 2936 2939
		f 3 2582 2583 2584
		mu 0 3 2216 2217 2218
		mu 1 3 2216 2217 2218
		mc 0 3 2940 2941 2943
		f 3 -2584 2585 2586
		mu 0 3 2218 2217 2219
		mu 1 3 2218 2217 2219
		mc 0 3 2944 2942 2945
		f 3 2587 2588 2589
		mu 0 3 2220 2221 2222
		mu 1 3 2220 2221 2222
		mc 0 3 2946 2947 2949
		f 3 -2589 2590 2591
		mu 0 3 2222 2221 2223
		mu 1 3 2222 2221 2223
		mc 0 3 2950 2948 2951
		f 3 2592 2593 2594
		mu 0 3 2224 2225 2226
		mu 1 3 2224 2225 2226
		mc 0 3 2952 2953 2955
		f 3 -2594 2595 2596
		mu 0 3 2226 2225 2227
		mu 1 3 2226 2225 2227
		mc 0 3 2956 2954 2957
		f 3 2597 2598 2599
		mu 0 3 2228 2229 2230
		mu 1 3 2228 2229 2230
		mc 0 3 2958 2959 2961
		f 3 -2599 2600 2601
		mu 0 3 2230 2229 2231
		mu 1 3 2230 2229 2231
		mc 0 3 2962 2960 2963
		f 3 2602 2603 2604
		mu 0 3 2232 2233 2234
		mu 1 3 2232 2233 2234
		mc 0 3 2964 2965 2967
		f 3 -2604 2605 2606
		mu 0 3 2234 2233 2235
		mu 1 3 2234 2233 2235
		mc 0 3 2968 2966 2969
		f 3 2607 2608 2609
		mu 0 3 2236 2237 2238
		mu 1 3 2236 2237 2238
		mc 0 3 2970 2971 2973
		f 3 -2609 2610 2611
		mu 0 3 2238 2237 2239
		mu 1 3 2238 2237 2239
		mc 0 3 2974 2972 2975
		f 3 2612 2613 2614
		mu 0 3 2240 2241 2242
		mu 1 3 2240 2241 2242
		mc 0 3 2976 2977 2979
		f 3 -2614 2615 2616
		mu 0 3 2242 2241 2243
		mu 1 3 2242 2241 2243
		mc 0 3 2980 2978 2981
		f 3 2617 2618 2619
		mu 0 3 2244 2245 2246
		mu 1 3 2244 2245 2246
		mc 0 3 2982 2983 2985
		f 3 -2619 2620 2621
		mu 0 3 2246 2245 2247
		mu 1 3 2246 2245 2247
		mc 0 3 2986 2984 2987
		f 3 2622 2623 2624
		mu 0 3 2248 2249 2250
		mu 1 3 2248 2249 2250
		mc 0 3 2988 2989 2991
		f 3 -2624 2625 2626
		mu 0 3 2250 2249 2251
		mu 1 3 2250 2249 2251
		mc 0 3 2992 2990 2993
		f 3 2627 2628 2629
		mu 0 3 2252 2253 2254
		mu 1 3 2252 2253 2254
		mc 0 3 2994 2995 2997
		f 3 -2629 2630 2631
		mu 0 3 2254 2253 2255
		mu 1 3 2254 2253 2255
		mc 0 3 2998 2996 2999;
	setAttr ".fc[1000:1499]"
		f 3 2632 2633 2634
		mu 0 3 2256 2257 2258
		mu 1 3 2256 2257 2258
		mc 0 3 3000 3001 3003
		f 3 -2634 2635 2636
		mu 0 3 2258 2257 2259
		mu 1 3 2258 2257 2259
		mc 0 3 3004 3002 3005
		f 3 2637 2638 2639
		mu 0 3 2260 2261 2262
		mu 1 3 2260 2261 2262
		mc 0 3 3006 3007 3009
		f 3 -2639 2640 2641
		mu 0 3 2262 2261 2263
		mu 1 3 2262 2261 2263
		mc 0 3 3010 3008 3011
		f 3 2642 2643 2644
		mu 0 3 2264 2265 2266
		mu 1 3 2264 2265 2266
		mc 0 3 3012 3013 3015
		f 3 -2644 2645 2646
		mu 0 3 2266 2265 2267
		mu 1 3 2266 2265 2267
		mc 0 3 3016 3014 3017
		f 3 2647 2648 2649
		mu 0 3 2268 2269 2270
		mu 1 3 2268 2269 2270
		mc 0 3 3018 3019 3021
		f 3 -2649 2650 2651
		mu 0 3 2270 2269 2271
		mu 1 3 2270 2269 2271
		mc 0 3 3022 3020 3023
		f 3 2652 2653 2654
		mu 0 3 2272 2273 2274
		mu 1 3 2272 2273 2274
		mc 0 3 3024 3025 3027
		f 3 -2654 2655 2656
		mu 0 3 2274 2273 2275
		mu 1 3 2274 2273 2275
		mc 0 3 3028 3026 3029
		f 3 2657 2658 2659
		mu 0 3 2276 2277 2278
		mu 1 3 2276 2277 2278
		mc 0 3 3030 3031 3033
		f 3 -2659 2660 2661
		mu 0 3 2278 2277 2279
		mu 1 3 2278 2277 2279
		mc 0 3 3034 3032 3035
		f 3 2662 2663 2664
		mu 0 3 2280 2281 2282
		mu 1 3 2280 2281 2282
		mc 0 3 3036 3037 3039
		f 3 -2664 2665 2666
		mu 0 3 2282 2281 2283
		mu 1 3 2282 2281 2283
		mc 0 3 3040 3038 3041
		f 3 2667 2668 2669
		mu 0 3 2284 2285 2286
		mu 1 3 2284 2285 2286
		mc 0 3 3042 3043 3045
		f 3 -2669 2670 2671
		mu 0 3 2286 2285 2287
		mu 1 3 2286 2285 2287
		mc 0 3 3046 3044 3047
		f 3 2672 2673 2674
		mu 0 3 2288 2289 2290
		mu 1 3 2288 2289 2290
		mc 0 3 3048 3049 3051
		f 3 -2674 2675 2676
		mu 0 3 2290 2289 2291
		mu 1 3 2290 2289 2291
		mc 0 3 3052 3050 3053
		f 3 2677 2678 2679
		mu 0 3 2292 2293 2294
		mu 1 3 2292 2293 2294
		mc 0 3 3054 3055 3057
		f 3 -2679 2680 2681
		mu 0 3 2294 2293 2295
		mu 1 3 2294 2293 2295
		mc 0 3 3058 3056 3059
		f 3 2682 2683 2684
		mu 0 3 2296 2297 2298
		mu 1 3 2296 2297 2298
		mc 0 3 3060 3061 3063
		f 3 -2684 2685 2686
		mu 0 3 2298 2297 2299
		mu 1 3 2298 2297 2299
		mc 0 3 3064 3062 3065
		f 3 2687 2688 2689
		mu 0 3 2300 2301 2302
		mu 1 3 2300 2301 2302
		mc 0 3 3066 3067 3069
		f 3 -2689 2690 2691
		mu 0 3 2302 2301 2303
		mu 1 3 2302 2301 2303
		mc 0 3 3070 3068 3071
		f 3 2692 2693 2694
		mu 0 3 2304 2305 2306
		mu 1 3 2304 2305 2306
		mc 0 3 3072 3073 3075
		f 3 -2694 2695 2696
		mu 0 3 2306 2305 2307
		mu 1 3 2306 2305 2307
		mc 0 3 3076 3074 3077
		f 3 2697 2698 2699
		mu 0 3 2308 2309 2310
		mu 1 3 2308 2309 2310
		mc 0 3 3078 3079 3081
		f 3 -2699 2700 2701
		mu 0 3 2310 2309 2311
		mu 1 3 2310 2309 2311
		mc 0 3 3082 3080 3083
		f 3 2702 2703 2704
		mu 0 3 2312 2313 2314
		mu 1 3 2312 2313 2314
		mc 0 3 3084 3085 3087
		f 3 -2704 2705 2706
		mu 0 3 2314 2313 2315
		mu 1 3 2314 2313 2315
		mc 0 3 3088 3086 3089
		f 3 2707 2708 2709
		mu 0 3 2316 2317 2318
		mu 1 3 2316 2317 2318
		mc 0 3 3090 3091 3093
		f 3 -2709 2710 2711
		mu 0 3 2318 2317 2319
		mu 1 3 2318 2317 2319
		mc 0 3 3094 3092 3095
		f 3 2712 2713 2714
		mu 0 3 2320 2321 2322
		mu 1 3 2320 2321 2322
		mc 0 3 3096 3097 3099
		f 3 -2714 2715 2716
		mu 0 3 2322 2321 2323
		mu 1 3 2322 2321 2323
		mc 0 3 3100 3098 3101
		f 3 2717 2718 2719
		mu 0 3 2324 2325 2326
		mu 1 3 2324 2325 2326
		mc 0 3 3102 3103 3105
		f 3 -2719 2720 2721
		mu 0 3 2326 2325 2327
		mu 1 3 2326 2325 2327
		mc 0 3 3106 3104 3107
		f 3 2722 2723 2724
		mu 0 3 2328 2329 2330
		mu 1 3 2328 2329 2330
		mc 0 3 3108 3109 3111
		f 3 -2724 2725 2726
		mu 0 3 2330 2329 2331
		mu 1 3 2330 2329 2331
		mc 0 3 3112 3110 3113
		f 3 2727 2728 2729
		mu 0 3 2332 2333 2334
		mu 1 3 2332 2333 2334
		mc 0 3 3114 3115 3117
		f 3 -2729 2730 2731
		mu 0 3 2334 2333 2335
		mu 1 3 2334 2333 2335
		mc 0 3 3118 3116 3119
		f 3 2732 2733 2734
		mu 0 3 2336 2337 2338
		mu 1 3 2336 2337 2338
		mc 0 3 3120 3121 3123
		f 3 -2734 2735 2736
		mu 0 3 2338 2337 2339
		mu 1 3 2338 2337 2339
		mc 0 3 3124 3122 3125
		f 3 2737 2738 2739
		mu 0 3 2340 2341 2342
		mu 1 3 2340 2341 2342
		mc 0 3 3126 3127 3129
		f 3 -2739 2740 2741
		mu 0 3 2342 2341 2343
		mu 1 3 2342 2341 2343
		mc 0 3 3130 3128 3131
		f 3 2742 2743 2744
		mu 0 3 2344 2345 2346
		mu 1 3 2344 2345 2346
		mc 0 3 3132 3133 3135
		f 3 -2744 2745 2746
		mu 0 3 2346 2345 2347
		mu 1 3 2346 2345 2347
		mc 0 3 3136 3134 3137
		f 3 2747 2748 2749
		mu 0 3 2348 2349 2350
		mu 1 3 2348 2349 2350
		mc 0 3 3138 3139 3141
		f 3 -2749 2750 2751
		mu 0 3 2350 2349 2351
		mu 1 3 2350 2349 2351
		mc 0 3 3142 3140 3143
		f 3 2752 2753 2754
		mu 0 3 2352 2353 2354
		mu 1 3 2352 2353 2354
		mc 0 3 3144 3145 3147
		f 3 -2754 2755 2756
		mu 0 3 2354 2353 2355
		mu 1 3 2354 2353 2355
		mc 0 3 3148 3146 3149
		f 3 2757 2758 2759
		mu 0 3 2356 2357 2358
		mu 1 3 2356 2357 2358
		mc 0 3 3150 3151 3153
		f 3 -2759 2760 2761
		mu 0 3 2358 2357 2359
		mu 1 3 2358 2357 2359
		mc 0 3 3154 3152 3155
		f 3 2762 2763 2764
		mu 0 3 2360 2361 2362
		mu 1 3 2360 2361 2362
		mc 0 3 3156 3157 3159
		f 3 -2764 2765 2766
		mu 0 3 2362 2361 2363
		mu 1 3 2362 2361 2363
		mc 0 3 3160 3158 3161
		f 3 2767 2768 2769
		mu 0 3 2364 2365 2366
		mu 1 3 2364 2365 2366
		mc 0 3 3162 3163 3165
		f 3 -2769 2770 2771
		mu 0 3 2366 2365 2367
		mu 1 3 2366 2365 2367
		mc 0 3 3166 3164 3167
		f 3 2772 2773 2774
		mu 0 3 2368 2369 2370
		mu 1 3 2368 2369 2370
		mc 0 3 3168 3169 3171
		f 3 -2774 2775 2776
		mu 0 3 2370 2369 2371
		mu 1 3 2370 2369 2371
		mc 0 3 3172 3170 3173
		f 3 2777 2778 2779
		mu 0 3 2372 2373 2374
		mu 1 3 2372 2373 2374
		mc 0 3 3174 3175 3177
		f 3 -2779 2780 2781
		mu 0 3 2374 2373 2375
		mu 1 3 2374 2373 2375
		mc 0 3 3178 3176 3179
		f 3 2782 2783 2784
		mu 0 3 2376 2377 2378
		mu 1 3 2376 2377 2378
		mc 0 3 3180 3181 3183
		f 3 -2784 2785 2786
		mu 0 3 2378 2377 2379
		mu 1 3 2378 2377 2379
		mc 0 3 3184 3182 3185
		f 3 2787 2788 2789
		mu 0 3 2380 2381 2382
		mu 1 3 2380 2381 2382
		mc 0 3 3186 3187 3189
		f 3 -2789 2790 2791
		mu 0 3 2382 2381 2383
		mu 1 3 2382 2381 2383
		mc 0 3 3190 3188 3191
		f 3 2792 2793 2794
		mu 0 3 2384 2385 2386
		mu 1 3 2384 2385 2386
		mc 0 3 3192 3193 3195
		f 3 -2794 2795 2796
		mu 0 3 2386 2385 2387
		mu 1 3 2386 2385 2387
		mc 0 3 3196 3194 3197
		f 3 2797 2798 2799
		mu 0 3 2388 2389 2390
		mu 1 3 2388 2389 2390
		mc 0 3 3198 3199 3201
		f 3 -2799 2800 2801
		mu 0 3 2390 2389 2391
		mu 1 3 2390 2389 2391
		mc 0 3 3202 3200 3203
		f 3 2802 2803 2804
		mu 0 3 2392 2393 2394
		mu 1 3 2392 2393 2394
		mc 0 3 3204 3205 3207
		f 3 -2804 2805 2806
		mu 0 3 2394 2393 2395
		mu 1 3 2394 2393 2395
		mc 0 3 3208 3206 3209
		f 3 2807 2808 2809
		mu 0 3 2396 2397 2398
		mu 1 3 2396 2397 2398
		mc 0 3 3210 3211 3213
		f 3 -2809 2810 2811
		mu 0 3 2398 2397 2399
		mu 1 3 2398 2397 2399
		mc 0 3 3214 3212 3215
		f 3 2812 2813 2814
		mu 0 3 2400 2401 2402
		mu 1 3 2400 2401 2402
		mc 0 3 3216 3217 3219
		f 3 -2814 2815 2816
		mu 0 3 2402 2401 2403
		mu 1 3 2402 2401 2403
		mc 0 3 3220 3218 3221
		f 3 2817 2818 2819
		mu 0 3 2404 2405 2406
		mu 1 3 2404 2405 2406
		mc 0 3 3222 3223 3225
		f 3 -2819 2820 2821
		mu 0 3 2406 2405 2407
		mu 1 3 2406 2405 2407
		mc 0 3 3226 3224 3227
		f 3 2822 2823 2824
		mu 0 3 2408 2409 2410
		mu 1 3 2408 2409 2410
		mc 0 3 3228 3229 3231
		f 3 -2824 2825 2826
		mu 0 3 2410 2409 2411
		mu 1 3 2410 2409 2411
		mc 0 3 3232 3230 3233
		f 3 2827 2828 2829
		mu 0 3 2412 2413 2414
		mu 1 3 2412 2413 2414
		mc 0 3 3234 3235 3237
		f 3 -2829 2830 2831
		mu 0 3 2414 2413 2415
		mu 1 3 2414 2413 2415
		mc 0 3 3238 3236 3239
		f 3 2832 2833 2834
		mu 0 3 2416 2417 2418
		mu 1 3 2416 2417 2418
		mc 0 3 3240 3241 3243
		f 3 -2834 2835 2836
		mu 0 3 2418 2417 2419
		mu 1 3 2418 2417 2419
		mc 0 3 3244 3242 3245
		f 3 2837 2838 2839
		mu 0 3 2420 2421 2422
		mu 1 3 2420 2421 2422
		mc 0 3 3246 3247 3249
		f 3 -2839 2840 2841
		mu 0 3 2422 2421 2423
		mu 1 3 2422 2421 2423
		mc 0 3 3250 3248 3251
		f 3 2842 2843 2844
		mu 0 3 2424 2425 2426
		mu 1 3 2424 2425 2426
		mc 0 3 3252 3253 3255
		f 3 -2844 2845 2846
		mu 0 3 2426 2425 2427
		mu 1 3 2426 2425 2427
		mc 0 3 3256 3254 3257
		f 3 2847 2848 2849
		mu 0 3 2428 2429 2430
		mu 1 3 2428 2429 2430
		mc 0 3 3258 3259 3261
		f 3 -2849 2850 2851
		mu 0 3 2430 2429 2431
		mu 1 3 2430 2429 2431
		mc 0 3 3262 3260 3263
		f 3 2852 2853 2854
		mu 0 3 2432 2433 2434
		mu 1 3 2432 2433 2434
		mc 0 3 3264 3265 3267
		f 3 -2854 2855 2856
		mu 0 3 2434 2433 2435
		mu 1 3 2434 2433 2435
		mc 0 3 3268 3266 3269
		f 3 2857 2858 2859
		mu 0 3 2436 2437 2438
		mu 1 3 2436 2437 2438
		mc 0 3 3270 3271 3273
		f 3 -2859 2860 2861
		mu 0 3 2438 2437 2439
		mu 1 3 2438 2437 2439
		mc 0 3 3274 3272 3275
		f 3 2862 2863 2864
		mu 0 3 2440 2441 2442
		mu 1 3 2440 2441 2442
		mc 0 3 3276 3277 3279
		f 3 -2864 2865 2866
		mu 0 3 2442 2441 2443
		mu 1 3 2442 2441 2443
		mc 0 3 3280 3278 3281
		f 3 2867 2868 2869
		mu 0 3 2444 2445 2446
		mu 1 3 2444 2445 2446
		mc 0 3 3282 3283 3285
		f 3 -2869 2870 2871
		mu 0 3 2446 2445 2447
		mu 1 3 2446 2445 2447
		mc 0 3 3286 3284 3287
		f 3 2872 2873 2874
		mu 0 3 2448 2449 2450
		mu 1 3 2448 2449 2450
		mc 0 3 3288 3289 3291
		f 3 -2874 2875 2876
		mu 0 3 2450 2449 2451
		mu 1 3 2450 2449 2451
		mc 0 3 3292 3290 3293
		f 3 2877 2878 2879
		mu 0 3 2452 2453 2454
		mu 1 3 2452 2453 2454
		mc 0 3 3294 3295 3297
		f 3 -2879 2880 2881
		mu 0 3 2454 2453 2455
		mu 1 3 2454 2453 2455
		mc 0 3 3298 3296 3299
		f 3 2882 2883 2884
		mu 0 3 2456 2457 2458
		mu 1 3 2456 2457 2458
		mc 0 3 3300 3301 3303
		f 3 -2884 2885 2886
		mu 0 3 2458 2457 2459
		mu 1 3 2458 2457 2459
		mc 0 3 3304 3302 3305
		f 3 2887 2888 2889
		mu 0 3 2460 2461 2462
		mu 1 3 2460 2461 2462
		mc 0 3 3306 3307 3309
		f 3 -2889 2890 2891
		mu 0 3 2462 2461 2463
		mu 1 3 2462 2461 2463
		mc 0 3 3310 3308 3311
		f 3 2892 2893 2894
		mu 0 3 2464 2465 2466
		mu 1 3 2464 2465 2466
		mc 0 3 3312 3313 3315
		f 3 -2894 2895 2896
		mu 0 3 2466 2465 2467
		mu 1 3 2466 2465 2467
		mc 0 3 3316 3314 3317
		f 3 2897 2898 2899
		mu 0 3 2468 2469 2470
		mu 1 3 2468 2469 2470
		mc 0 3 3318 3319 3321
		f 3 -2899 2900 2901
		mu 0 3 2470 2469 2471
		mu 1 3 2470 2469 2471
		mc 0 3 3322 3320 3323
		f 3 2902 2903 2904
		mu 0 3 2472 2473 2474
		mu 1 3 2472 2473 2474
		mc 0 3 3324 3325 3327
		f 3 -2904 2905 2906
		mu 0 3 2474 2473 2475
		mu 1 3 2474 2473 2475
		mc 0 3 3328 3326 3329
		f 3 2907 2908 2909
		mu 0 3 2476 2477 2478
		mu 1 3 2476 2477 2478
		mc 0 3 3330 3331 3333
		f 3 -2909 2910 2911
		mu 0 3 2478 2477 2479
		mu 1 3 2478 2477 2479
		mc 0 3 3334 3332 3335
		f 3 2912 2913 2914
		mu 0 3 2480 2481 2482
		mu 1 3 2480 2481 2482
		mc 0 3 3336 3337 3339
		f 3 -2914 2915 2916
		mu 0 3 2482 2481 2483
		mu 1 3 2482 2481 2483
		mc 0 3 3340 3338 3341
		f 3 2917 2918 2919
		mu 0 3 2484 2485 2486
		mu 1 3 2484 2485 2486
		mc 0 3 3342 3343 3345
		f 3 -2919 2920 2921
		mu 0 3 2486 2485 2487
		mu 1 3 2486 2485 2487
		mc 0 3 3346 3344 3347
		f 3 2922 2923 2924
		mu 0 3 2488 2489 2490
		mu 1 3 2488 2489 2490
		mc 0 3 3348 3349 3351
		f 3 -2924 2925 2926
		mu 0 3 2490 2489 2491
		mu 1 3 2490 2489 2491
		mc 0 3 3352 3350 3353
		f 3 2927 2928 2929
		mu 0 3 2492 2493 2494
		mu 1 3 2492 2493 2494
		mc 0 3 3354 3355 3357
		f 3 -2929 2930 2931
		mu 0 3 2494 2493 2495
		mu 1 3 2494 2493 2495
		mc 0 3 3358 3356 3359
		f 3 2932 2933 2934
		mu 0 3 2496 2497 2498
		mu 1 3 2496 2497 2498
		mc 0 3 3360 3361 3363
		f 3 -2934 2935 2936
		mu 0 3 2498 2497 2499
		mu 1 3 2498 2497 2499
		mc 0 3 3364 3362 3365
		f 3 2937 2938 2939
		mu 0 3 2500 2501 2502
		mu 1 3 2500 2501 2502
		mc 0 3 3366 3367 3369
		f 3 -2939 2940 2941
		mu 0 3 2502 2501 2503
		mu 1 3 2502 2501 2503
		mc 0 3 3370 3368 3371
		f 3 2942 2943 2944
		mu 0 3 2504 2505 2506
		mu 1 3 2504 2505 2506
		mc 0 3 3372 3373 3375
		f 3 -2944 2945 2946
		mu 0 3 2506 2505 2507
		mu 1 3 2506 2505 2507
		mc 0 3 3376 3374 3377
		f 3 2947 2948 2949
		mu 0 3 2508 2509 2510
		mu 1 3 2508 2509 2510
		mc 0 3 3378 3379 3381
		f 3 -2949 2950 2951
		mu 0 3 2510 2509 2511
		mu 1 3 2510 2509 2511
		mc 0 3 3382 3380 3383
		f 3 2952 2953 2954
		mu 0 3 2512 2513 2514
		mu 1 3 2512 2513 2514
		mc 0 3 3384 3385 3387
		f 3 -2954 2955 2956
		mu 0 3 2514 2513 2515
		mu 1 3 2514 2513 2515
		mc 0 3 3388 3386 3389
		f 3 2957 2958 2959
		mu 0 3 2516 2517 2518
		mu 1 3 2516 2517 2518
		mc 0 3 3390 3391 3393
		f 3 -2959 2960 2961
		mu 0 3 2518 2517 2519
		mu 1 3 2518 2517 2519
		mc 0 3 3394 3392 3395
		f 3 2962 2963 2964
		mu 0 3 2520 2521 2522
		mu 1 3 2520 2521 2522
		mc 0 3 3396 3397 3399
		f 3 -2964 2965 2966
		mu 0 3 2522 2521 2523
		mu 1 3 2522 2521 2523
		mc 0 3 3400 3398 3401
		f 3 2967 2968 2969
		mu 0 3 2524 2525 2526
		mu 1 3 2524 2525 2526
		mc 0 3 3402 3403 3405
		f 3 -2969 2970 2971
		mu 0 3 2526 2525 2527
		mu 1 3 2526 2525 2527
		mc 0 3 3406 3404 3407
		f 3 2972 2973 2974
		mu 0 3 2528 2529 2530
		mu 1 3 2528 2529 2530
		mc 0 3 3408 3409 3411
		f 3 -2974 2975 2976
		mu 0 3 2530 2529 2531
		mu 1 3 2530 2529 2531
		mc 0 3 3412 3410 3413
		f 3 2977 2978 2979
		mu 0 3 2532 2533 2534
		mu 1 3 2532 2533 2534
		mc 0 3 3414 3415 3417
		f 3 -2979 2980 2981
		mu 0 3 2534 2533 2535
		mu 1 3 2534 2533 2535
		mc 0 3 3418 3416 3419
		f 3 2982 2983 2984
		mu 0 3 2536 2537 2538
		mu 1 3 2536 2537 2538
		mc 0 3 3420 3421 3423
		f 3 -2984 2985 2986
		mu 0 3 2538 2537 2539
		mu 1 3 2538 2537 2539
		mc 0 3 3424 3422 3425
		f 3 2987 2988 2989
		mu 0 3 2540 2541 2542
		mu 1 3 2540 2541 2542
		mc 0 3 3426 3427 3429
		f 3 -2989 2990 2991
		mu 0 3 2542 2541 2543
		mu 1 3 2542 2541 2543
		mc 0 3 3430 3428 3431
		f 3 2992 2993 2994
		mu 0 3 2544 2545 2546
		mu 1 3 2544 2545 2546
		mc 0 3 3432 3433 3435
		f 3 -2994 2995 2996
		mu 0 3 2546 2545 2547
		mu 1 3 2546 2545 2547
		mc 0 3 3436 3434 3437
		f 3 2997 2998 2999
		mu 0 3 2548 2549 2550
		mu 1 3 2548 2549 2550
		mc 0 3 3438 3439 3441
		f 3 -2999 3000 3001
		mu 0 3 2550 2549 2551
		mu 1 3 2550 2549 2551
		mc 0 3 3442 3440 3443
		f 3 3002 3003 3004
		mu 0 3 2552 2553 2554
		mu 1 3 2552 2553 2554
		mc 0 3 3444 3445 3447
		f 3 -3004 3005 3006
		mu 0 3 2554 2553 2555
		mu 1 3 2554 2553 2555
		mc 0 3 3448 3446 3449
		f 3 3007 3008 3009
		mu 0 3 2556 2557 2558
		mu 1 3 2556 2557 2558
		mc 0 3 3450 3451 3453
		f 3 -3009 3010 3011
		mu 0 3 2558 2557 2559
		mu 1 3 2558 2557 2559
		mc 0 3 3454 3452 3455
		f 3 3012 3013 3014
		mu 0 3 2560 2561 2562
		mu 1 3 2560 2561 2562
		mc 0 3 3456 3457 3459
		f 3 -3014 3015 3016
		mu 0 3 2562 2561 2563
		mu 1 3 2562 2561 2563
		mc 0 3 3460 3458 3461
		f 3 3017 3018 3019
		mu 0 3 2564 2565 2566
		mu 1 3 2564 2565 2566
		mc 0 3 3462 3463 3465
		f 3 -3019 3020 3021
		mu 0 3 2566 2565 2567
		mu 1 3 2566 2565 2567
		mc 0 3 3466 3464 3467
		f 3 3022 3023 3024
		mu 0 3 2568 2569 2570
		mu 1 3 2568 2569 2570
		mc 0 3 3468 3469 3471
		f 3 -3024 3025 3026
		mu 0 3 2570 2569 2571
		mu 1 3 2570 2569 2571
		mc 0 3 3472 3470 3473
		f 3 3027 3028 3029
		mu 0 3 2572 2573 2574
		mu 1 3 2572 2573 2574
		mc 0 3 3474 3475 3477
		f 3 -3029 3030 3031
		mu 0 3 2574 2573 2575
		mu 1 3 2574 2573 2575
		mc 0 3 3478 3476 3479
		f 3 3032 3033 3034
		mu 0 3 2576 2577 2578
		mu 1 3 2576 2577 2578
		mc 0 3 3480 3481 3483
		f 3 -3034 3035 3036
		mu 0 3 2578 2577 2579
		mu 1 3 2578 2577 2579
		mc 0 3 3484 3482 3485
		f 3 3037 3038 3039
		mu 0 3 2580 2581 2582
		mu 1 3 2580 2581 2582
		mc 0 3 3486 3487 3489
		f 3 -3039 3040 3041
		mu 0 3 2582 2581 2583
		mu 1 3 2582 2581 2583
		mc 0 3 3490 3488 3491
		f 3 3042 3043 3044
		mu 0 3 2584 2585 2586
		mu 1 3 2584 2585 2586
		mc 0 3 3492 3493 3495
		f 3 -3044 3045 3046
		mu 0 3 2586 2585 2587
		mu 1 3 2586 2585 2587
		mc 0 3 3496 3494 3497
		f 3 3047 3048 3049
		mu 0 3 2588 2589 2590
		mu 1 3 2588 2589 2590
		mc 0 3 3498 3499 3501
		f 3 -3049 3050 3051
		mu 0 3 2590 2589 2591
		mu 1 3 2590 2589 2591
		mc 0 3 3502 3500 3503
		f 3 3052 3053 3054
		mu 0 3 2592 2593 2594
		mu 1 3 2592 2593 2594
		mc 0 3 3504 3505 3507
		f 3 -3054 3055 3056
		mu 0 3 2594 2593 2595
		mu 1 3 2594 2593 2595
		mc 0 3 3508 3506 3509
		f 3 3057 3058 3059
		mu 0 3 2596 2597 2598
		mu 1 3 2596 2597 2598
		mc 0 3 3510 3511 3513
		f 3 -3059 3060 3061
		mu 0 3 2598 2597 2599
		mu 1 3 2598 2597 2599
		mc 0 3 3514 3512 3515
		f 3 3062 3063 3064
		mu 0 3 2600 2601 2602
		mu 1 3 2600 2601 2602
		mc 0 3 3516 3517 3519
		f 3 -3064 3065 3066
		mu 0 3 2602 2601 2603
		mu 1 3 2602 2601 2603
		mc 0 3 3520 3518 3521
		f 3 3067 3068 3069
		mu 0 3 2604 2605 2606
		mu 1 3 2604 2605 2606
		mc 0 3 3522 3523 3525
		f 3 -3069 3070 3071
		mu 0 3 2606 2605 2607
		mu 1 3 2606 2605 2607
		mc 0 3 3526 3524 3527
		f 3 3072 3073 3074
		mu 0 3 2608 2609 2610
		mu 1 3 2608 2609 2610
		mc 0 3 3528 3529 3531
		f 3 -3074 3075 3076
		mu 0 3 2610 2609 2611
		mu 1 3 2610 2609 2611
		mc 0 3 3532 3530 3533
		f 3 3077 3078 3079
		mu 0 3 2612 2613 2614
		mu 1 3 2612 2613 2614
		mc 0 3 3534 3535 3537
		f 3 -3079 3080 3081
		mu 0 3 2614 2613 2615
		mu 1 3 2614 2613 2615
		mc 0 3 3538 3536 3539
		f 3 3082 3083 3084
		mu 0 3 2616 2617 2618
		mu 1 3 2616 2617 2618
		mc 0 3 3540 3541 3543
		f 3 -3084 3085 3086
		mu 0 3 2618 2617 2619
		mu 1 3 2618 2617 2619
		mc 0 3 3544 3542 3545
		f 3 3087 3088 3089
		mu 0 3 2620 2621 2622
		mu 1 3 2620 2621 2622
		mc 0 3 3546 3547 3549
		f 3 -3089 3090 3091
		mu 0 3 2622 2621 2623
		mu 1 3 2622 2621 2623
		mc 0 3 3550 3548 3551
		f 3 3092 3093 3094
		mu 0 3 2624 2625 2626
		mu 1 3 2624 2625 2626
		mc 0 3 3552 3553 3555
		f 3 -3094 3095 3096
		mu 0 3 2626 2625 2627
		mu 1 3 2626 2625 2627
		mc 0 3 3556 3554 3557
		f 3 3097 3098 3099
		mu 0 3 2628 2629 2630
		mu 1 3 2628 2629 2630
		mc 0 3 3558 3559 3561
		f 3 -3099 3100 3101
		mu 0 3 2630 2629 2631
		mu 1 3 2630 2629 2631
		mc 0 3 3562 3560 3563
		f 3 3102 3103 3104
		mu 0 3 2632 2633 2634
		mu 1 3 2632 2633 2634
		mc 0 3 3564 3565 3567
		f 3 -3104 3105 3106
		mu 0 3 2634 2633 2635
		mu 1 3 2634 2633 2635
		mc 0 3 3568 3566 3569
		f 3 3107 3108 3109
		mu 0 3 2636 2637 2638
		mu 1 3 2636 2637 2638
		mc 0 3 3570 3571 3573
		f 3 -3109 3110 3111
		mu 0 3 2638 2637 2639
		mu 1 3 2638 2637 2639
		mc 0 3 3574 3572 3575
		f 3 3112 3113 3114
		mu 0 3 2640 2641 2642
		mu 1 3 2640 2641 2642
		mc 0 3 3576 3577 3579
		f 3 -3114 3115 3116
		mu 0 3 2642 2641 2643
		mu 1 3 2642 2641 2643
		mc 0 3 3580 3578 3581
		f 3 3117 3118 3119
		mu 0 3 2644 2645 2646
		mu 1 3 2644 2645 2646
		mc 0 3 3582 3583 3585
		f 3 -3119 3120 3121
		mu 0 3 2646 2645 2647
		mu 1 3 2646 2645 2647
		mc 0 3 3586 3584 3587
		f 3 3122 3123 3124
		mu 0 3 2648 2649 2650
		mu 1 3 2648 2649 2650
		mc 0 3 3588 3589 3591
		f 3 -3124 3125 3126
		mu 0 3 2650 2649 2651
		mu 1 3 2650 2649 2651
		mc 0 3 3592 3590 3593
		f 3 3127 3128 3129
		mu 0 3 2652 2653 2654
		mu 1 3 2652 2653 2654
		mc 0 3 3594 3595 3597
		f 3 -3129 3130 3131
		mu 0 3 2654 2653 2655
		mu 1 3 2654 2653 2655
		mc 0 3 3598 3596 3599
		f 3 3132 3133 3134
		mu 0 3 2656 2657 2658
		mu 1 3 2656 2657 2658
		mc 0 3 3600 3601 3603
		f 3 -3134 3135 3136
		mu 0 3 2658 2657 2659
		mu 1 3 2658 2657 2659
		mc 0 3 3604 3602 3605
		f 3 3137 3138 3139
		mu 0 3 2660 2661 2662
		mu 1 3 2660 2661 2662
		mc 0 3 3606 3607 3609
		f 3 -3139 3140 3141
		mu 0 3 2662 2661 2663
		mu 1 3 2662 2661 2663
		mc 0 3 3610 3608 3611
		f 3 3142 3143 3144
		mu 0 3 2664 2665 2666
		mu 1 3 2664 2665 2666
		mc 0 3 3612 3613 3615
		f 3 -3144 3145 3146
		mu 0 3 2666 2665 2667
		mu 1 3 2666 2665 2667
		mc 0 3 3616 3614 3617
		f 3 3147 3148 3149
		mu 0 3 2668 2669 2670
		mu 1 3 2668 2669 2670
		mc 0 3 3618 3619 3621
		f 3 -3149 3150 3151
		mu 0 3 2670 2669 2671
		mu 1 3 2670 2669 2671
		mc 0 3 3622 3620 3623
		f 3 3152 3153 3154
		mu 0 3 2672 2673 2674
		mu 1 3 2672 2673 2674
		mc 0 3 3624 3625 3627
		f 3 -3154 3155 3156
		mu 0 3 2674 2673 2675
		mu 1 3 2674 2673 2675
		mc 0 3 3628 3626 3629
		f 3 3157 3158 3159
		mu 0 3 2676 2677 2678
		mu 1 3 2676 2677 2678
		mc 0 3 3630 3631 3633
		f 3 -3159 3160 3161
		mu 0 3 2678 2677 2679
		mu 1 3 2678 2677 2679
		mc 0 3 3634 3632 3635
		f 3 3162 3163 3164
		mu 0 3 2680 2681 2682
		mu 1 3 2680 2681 2682
		mc 0 3 3636 3637 3639
		f 3 -3164 3165 3166
		mu 0 3 2682 2681 2683
		mu 1 3 2682 2681 2683
		mc 0 3 3640 3638 3641
		f 3 3167 3168 3169
		mu 0 3 2684 2685 2686
		mu 1 3 2684 2685 2686
		mc 0 3 3642 3643 3645
		f 3 -3169 3170 3171
		mu 0 3 2686 2685 2687
		mu 1 3 2686 2685 2687
		mc 0 3 3646 3644 3647
		f 3 3172 3173 3174
		mu 0 3 2688 2689 2690
		mu 1 3 2688 2689 2690
		mc 0 3 3648 3649 3651
		f 3 -3174 3175 3176
		mu 0 3 2690 2689 2691
		mu 1 3 2690 2689 2691
		mc 0 3 3652 3650 3653
		f 3 3177 3178 3179
		mu 0 3 2692 2693 2694
		mu 1 3 2692 2693 2694
		mc 0 3 3654 3655 3657
		f 3 -3179 3180 3181
		mu 0 3 2694 2693 2695
		mu 1 3 2694 2693 2695
		mc 0 3 3658 3656 3659
		f 3 3182 3183 3184
		mu 0 3 2696 2697 2698
		mu 1 3 2696 2697 2698
		mc 0 3 3660 3661 3663
		f 3 -3184 3185 3186
		mu 0 3 2698 2697 2699
		mu 1 3 2698 2697 2699
		mc 0 3 3664 3662 3665
		f 3 3187 3188 3189
		mu 0 3 2700 2701 2702
		mu 1 3 2700 2701 2702
		mc 0 3 3666 3667 3669
		f 3 -3189 3190 3191
		mu 0 3 2702 2701 2703
		mu 1 3 2702 2701 2703
		mc 0 3 3670 3668 3671
		f 3 3192 3193 3194
		mu 0 3 2704 2705 2706
		mu 1 3 2704 2705 2706
		mc 0 3 3672 3673 3675
		f 3 -3194 3195 3196
		mu 0 3 2706 2705 2707
		mu 1 3 2706 2705 2707
		mc 0 3 3676 3674 3677
		f 3 3197 3198 3199
		mu 0 3 2708 2709 2710
		mu 1 3 2708 2709 2710
		mc 0 3 3678 3679 3681
		f 3 -3199 3200 3201
		mu 0 3 2710 2709 2711
		mu 1 3 2710 2709 2711
		mc 0 3 3682 3680 3683
		f 3 3202 3203 3204
		mu 0 3 2712 2713 2714
		mu 1 3 2712 2713 2714
		mc 0 3 3684 3685 3687
		f 3 -3204 3205 3206
		mu 0 3 2714 2713 2715
		mu 1 3 2714 2713 2715
		mc 0 3 3688 3686 3689
		f 3 3207 3208 3209
		mu 0 3 2716 2717 2718
		mu 1 3 2716 2717 2718
		mc 0 3 3690 3691 3693
		f 3 -3209 3210 3211
		mu 0 3 2718 2717 2719
		mu 1 3 2718 2717 2719
		mc 0 3 3694 3692 3695
		f 3 3212 3213 3214
		mu 0 3 2720 2721 2722
		mu 1 3 2720 2721 2722
		mc 0 3 3696 3697 3699
		f 3 -3214 3215 3216
		mu 0 3 2722 2721 2723
		mu 1 3 2722 2721 2723
		mc 0 3 3700 3698 3701
		f 3 3217 3218 3219
		mu 0 3 2724 2725 2726
		mu 1 3 2724 2725 2726
		mc 0 3 3702 3703 3705
		f 3 -3219 3220 3221
		mu 0 3 2726 2725 2727
		mu 1 3 2726 2725 2727
		mc 0 3 3706 3704 3707
		f 3 3222 3223 3224
		mu 0 3 2728 2729 2730
		mu 1 3 2728 2729 2730
		mc 0 3 3708 3709 3711
		f 3 -3224 3225 3226
		mu 0 3 2730 2729 2731
		mu 1 3 2730 2729 2731
		mc 0 3 3712 3710 3713
		f 3 3227 3228 3229
		mu 0 3 2732 2733 2734
		mu 1 3 2732 2733 2734
		mc 0 3 3714 3715 3717
		f 3 -3229 3230 3231
		mu 0 3 2734 2733 2735
		mu 1 3 2734 2733 2735
		mc 0 3 3718 3716 3719
		f 3 3232 3233 3234
		mu 0 3 2736 2737 2738
		mu 1 3 2736 2737 2738
		mc 0 3 3720 3721 3723
		f 3 -3234 3235 3236
		mu 0 3 2738 2737 2739
		mu 1 3 2738 2737 2739
		mc 0 3 3724 3722 3725
		f 3 3237 3238 3239
		mu 0 3 2740 2741 2742
		mu 1 3 2740 2741 2742
		mc 0 3 3726 3727 3729
		f 3 -3239 3240 3241
		mu 0 3 2742 2741 2743
		mu 1 3 2742 2741 2743
		mc 0 3 3730 3728 3731
		f 3 3242 3243 3244
		mu 0 3 2744 2745 2746
		mu 1 3 2744 2745 2746
		mc 0 3 3732 3733 3735
		f 3 -3244 3245 3246
		mu 0 3 2746 2745 2747
		mu 1 3 2746 2745 2747
		mc 0 3 3736 3734 3737
		f 3 3247 3248 3249
		mu 0 3 2748 2749 2750
		mu 1 3 2748 2749 2750
		mc 0 3 3738 3739 3741
		f 3 -3249 3250 3251
		mu 0 3 2750 2749 2751
		mu 1 3 2750 2749 2751
		mc 0 3 3742 3740 3743
		f 3 3252 3253 3254
		mu 0 3 2752 2753 2754
		mu 1 3 2752 2753 2754
		mc 0 3 3744 3745 3747
		f 3 -3254 3255 3256
		mu 0 3 2754 2753 2755
		mu 1 3 2754 2753 2755
		mc 0 3 3748 3746 3749
		f 3 3257 3258 3259
		mu 0 3 2756 2757 2758
		mu 1 3 2756 2757 2758
		mc 0 3 3750 3751 3753
		f 3 -3259 3260 3261
		mu 0 3 2758 2757 2759
		mu 1 3 2758 2757 2759
		mc 0 3 3754 3752 3755
		f 3 3262 3263 3264
		mu 0 3 2760 2761 2762
		mu 1 3 2760 2761 2762
		mc 0 3 3756 3757 3759
		f 3 -3264 3265 3266
		mu 0 3 2762 2761 2763
		mu 1 3 2762 2761 2763
		mc 0 3 3760 3758 3761
		f 3 3267 3268 3269
		mu 0 3 2764 2765 2766
		mu 1 3 2764 2765 2766
		mc 0 3 3762 3763 3765
		f 3 -3269 3270 3271
		mu 0 3 2766 2765 2767
		mu 1 3 2766 2765 2767
		mc 0 3 3766 3764 3767
		f 3 3272 3273 3274
		mu 0 3 2768 2769 2770
		mu 1 3 2768 2769 2770
		mc 0 3 3768 3769 3771
		f 3 -3274 3275 3276
		mu 0 3 2770 2769 2771
		mu 1 3 2770 2769 2771
		mc 0 3 3772 3770 3773
		f 3 3277 3278 3279
		mu 0 3 2772 2773 2774
		mu 1 3 2772 2773 2774
		mc 0 3 3774 3775 3777
		f 3 -3279 3280 3281
		mu 0 3 2774 2773 2775
		mu 1 3 2774 2773 2775
		mc 0 3 3778 3776 3779
		f 3 3282 3283 3284
		mu 0 3 2776 2777 2778
		mu 1 3 2776 2777 2778
		mc 0 3 3780 3781 3783
		f 3 -3284 3285 3286
		mu 0 3 2778 2777 2779
		mu 1 3 2778 2777 2779
		mc 0 3 3784 3782 3785
		f 3 3287 3288 3289
		mu 0 3 2780 2781 2782
		mu 1 3 2780 2781 2782
		mc 0 3 3786 3787 3789
		f 3 -3289 3290 3291
		mu 0 3 2782 2781 2783
		mu 1 3 2782 2781 2783
		mc 0 3 3790 3788 3791
		f 3 3292 3293 3294
		mu 0 3 2784 2785 2786
		mu 1 3 2784 2785 2786
		mc 0 3 3792 3793 3795
		f 3 -3294 3295 3296
		mu 0 3 2786 2785 2787
		mu 1 3 2786 2785 2787
		mc 0 3 3796 3794 3797
		f 3 3297 3298 3299
		mu 0 3 2788 2789 2790
		mu 1 3 2788 2789 2790
		mc 0 3 3798 3799 3801
		f 3 -3299 3300 3301
		mu 0 3 2790 2789 2791
		mu 1 3 2790 2789 2791
		mc 0 3 3802 3800 3803
		f 3 3302 3303 3304
		mu 0 3 2792 2793 2794
		mu 1 3 2792 2793 2794
		mc 0 3 3804 3805 3807
		f 3 -3304 3305 3306
		mu 0 3 2794 2793 2795
		mu 1 3 2794 2793 2795
		mc 0 3 3808 3806 3809
		f 3 3307 3308 3309
		mu 0 3 2796 2797 2798
		mu 1 3 2796 2797 2798
		mc 0 3 3810 3811 3813
		f 3 -3309 3310 3311
		mu 0 3 2798 2797 2799
		mu 1 3 2798 2797 2799
		mc 0 3 3814 3812 3815
		f 3 3312 3313 3314
		mu 0 3 2800 2801 2802
		mu 1 3 2800 2801 2802
		mc 0 3 3816 3817 3819
		f 3 -3314 3315 3316
		mu 0 3 2802 2801 2803
		mu 1 3 2802 2801 2803
		mc 0 3 3820 3818 3821
		f 3 3317 3318 3319
		mu 0 3 2804 2805 2806
		mu 1 3 2804 2805 2806
		mc 0 3 3822 3823 3825
		f 3 -3319 3320 3321
		mu 0 3 2806 2805 2807
		mu 1 3 2806 2805 2807
		mc 0 3 3826 3824 3827
		f 3 3322 3323 3324
		mu 0 3 2808 2809 2810
		mu 1 3 2808 2809 2810
		mc 0 3 3828 3829 3831
		f 3 -3324 3325 3326
		mu 0 3 2810 2809 2811
		mu 1 3 2810 2809 2811
		mc 0 3 3832 3830 3833
		f 3 3327 3328 3329
		mu 0 3 2812 2813 2814
		mu 1 3 2812 2813 2814
		mc 0 3 3834 3835 3837
		f 3 -3329 3330 3331
		mu 0 3 2814 2813 2815
		mu 1 3 2814 2813 2815
		mc 0 3 3838 3836 3839
		f 3 3332 3333 3334
		mu 0 3 2816 2817 2818
		mu 1 3 2816 2817 2818
		mc 0 3 3840 3841 3843
		f 3 -3334 3335 3336
		mu 0 3 2818 2817 2819
		mu 1 3 2818 2817 2819
		mc 0 3 3844 3842 3845
		f 3 3337 3338 3339
		mu 0 3 2820 2821 2822
		mu 1 3 2820 2821 2822
		mc 0 3 3846 3847 3849
		f 3 -3339 3340 3341
		mu 0 3 2822 2821 2823
		mu 1 3 2822 2821 2823
		mc 0 3 3850 3848 3851
		f 3 3342 3343 3344
		mu 0 3 2824 2825 2826
		mu 1 3 2824 2825 2826
		mc 0 3 3852 3853 3855
		f 3 -3344 3345 3346
		mu 0 3 2826 2825 2827
		mu 1 3 2826 2825 2827
		mc 0 3 3856 3854 3857
		f 3 3347 3348 3349
		mu 0 3 2828 2829 2830
		mu 1 3 2828 2829 2830
		mc 0 3 3858 3859 3861
		f 3 -3349 3350 3351
		mu 0 3 2830 2829 2831
		mu 1 3 2830 2829 2831
		mc 0 3 3862 3860 3863
		f 3 3352 3353 3354
		mu 0 3 2832 2833 2834
		mu 1 3 2832 2833 2834
		mc 0 3 3864 3865 3867
		f 3 -3354 3355 3356
		mu 0 3 2834 2833 2835
		mu 1 3 2834 2833 2835
		mc 0 3 3868 3866 3869
		f 3 3357 3358 3359
		mu 0 3 2836 2837 2838
		mu 1 3 2836 2837 2838
		mc 0 3 3870 3871 3873
		f 3 -3359 3360 3361
		mu 0 3 2838 2837 2839
		mu 1 3 2838 2837 2839
		mc 0 3 3874 3872 3875
		f 3 3362 3363 3364
		mu 0 3 2840 2841 2842
		mu 1 3 2840 2841 2842
		mc 0 3 3876 3877 3879
		f 3 -3364 3365 3366
		mu 0 3 2842 2841 2843
		mu 1 3 2842 2841 2843
		mc 0 3 3880 3878 3881
		f 3 3367 3368 3369
		mu 0 3 2844 2845 2846
		mu 1 3 2844 2845 2846
		mc 0 3 3882 3883 3885
		f 3 -3369 3370 3371
		mu 0 3 2846 2845 2847
		mu 1 3 2846 2845 2847
		mc 0 3 3886 3884 3887
		f 3 3372 3373 3374
		mu 0 3 2848 2849 2850
		mu 1 3 2848 2849 2850
		mc 0 3 3888 3889 3891
		f 3 -3374 3375 3376
		mu 0 3 2850 2849 2851
		mu 1 3 2850 2849 2851
		mc 0 3 3892 3890 3893
		f 3 3377 3378 3379
		mu 0 3 2852 2853 2854
		mu 1 3 2852 2853 2854
		mc 0 3 3894 3895 3897
		f 3 -3379 3380 3381
		mu 0 3 2854 2853 2855
		mu 1 3 2854 2853 2855
		mc 0 3 3898 3896 3899
		f 3 3382 3383 3384
		mu 0 3 2856 2857 2858
		mu 1 3 2856 2857 2858
		mc 0 3 3900 3901 3903
		f 3 -3384 3385 3386
		mu 0 3 2858 2857 2859
		mu 1 3 2858 2857 2859
		mc 0 3 3904 3902 3905
		f 3 3387 3388 3389
		mu 0 3 2860 2861 2862
		mu 1 3 2860 2861 2862
		mc 0 3 3906 3907 3909
		f 3 -3389 3390 3391
		mu 0 3 2862 2861 2863
		mu 1 3 2862 2861 2863
		mc 0 3 3910 3908 3911
		f 3 3392 3393 3394
		mu 0 3 2864 2865 2866
		mu 1 3 2864 2865 2866
		mc 0 3 3912 3913 3915
		f 3 -3394 3395 3396
		mu 0 3 2866 2865 2867
		mu 1 3 2866 2865 2867
		mc 0 3 3916 3914 3917
		f 3 3397 3398 3399
		mu 0 3 2868 2869 2870
		mu 1 3 2868 2869 2870
		mc 0 3 3918 3919 3921
		f 3 -3399 3400 3401
		mu 0 3 2870 2869 2871
		mu 1 3 2870 2869 2871
		mc 0 3 3922 3920 3923
		f 3 3402 3403 3404
		mu 0 3 2872 2873 2874
		mu 1 3 2872 2873 2874
		mc 0 3 3924 3925 3927
		f 3 -3404 3405 3406
		mu 0 3 2874 2873 2875
		mu 1 3 2874 2873 2875
		mc 0 3 3928 3926 3929
		f 3 3407 3408 3409
		mu 0 3 2876 2877 2878
		mu 1 3 2876 2877 2878
		mc 0 3 3930 3931 3933
		f 3 -3409 3410 3411
		mu 0 3 2878 2877 2879
		mu 1 3 2878 2877 2879
		mc 0 3 3934 3932 3935
		f 3 3412 3413 3414
		mu 0 3 2880 2881 2882
		mu 1 3 2880 2881 2882
		mc 0 3 3936 3937 3939
		f 3 -3414 3415 3416
		mu 0 3 2882 2881 2883
		mu 1 3 2882 2881 2883
		mc 0 3 3940 3938 3941
		f 3 3417 3418 3419
		mu 0 3 2884 2885 2886
		mu 1 3 2884 2885 2886
		mc 0 3 3942 3943 3945
		f 3 -3419 3420 3421
		mu 0 3 2886 2885 2887
		mu 1 3 2886 2885 2887
		mc 0 3 3946 3944 3947
		f 3 3422 3423 3424
		mu 0 3 2888 2889 2890
		mu 1 3 2888 2889 2890
		mc 0 3 3948 3949 3951
		f 3 -3424 3425 3426
		mu 0 3 2890 2889 2891
		mu 1 3 2890 2889 2891
		mc 0 3 3952 3950 3953
		f 3 3427 3428 3429
		mu 0 3 2892 2893 2894
		mu 1 3 2892 2893 2894
		mc 0 3 3954 3955 3957
		f 3 -3429 3430 3431
		mu 0 3 2894 2893 2895
		mu 1 3 2894 2893 2895
		mc 0 3 3958 3956 3959
		f 3 3432 3433 3434
		mu 0 3 2896 2897 2898
		mu 1 3 2896 2897 2898
		mc 0 3 3960 3961 3963
		f 3 -3434 3435 3436
		mu 0 3 2898 2897 2899
		mu 1 3 2898 2897 2899
		mc 0 3 3964 3962 3965
		f 3 3437 3438 3439
		mu 0 3 2900 2901 2902
		mu 1 3 2900 2901 2902
		mc 0 3 3966 3967 3969
		f 3 -3439 3440 3441
		mu 0 3 2902 2901 2903
		mu 1 3 2902 2901 2903
		mc 0 3 3970 3968 3971
		f 3 3442 3443 3444
		mu 0 3 2904 2905 2906
		mu 1 3 2904 2905 2906
		mc 0 3 3972 3973 3975
		f 3 -3444 3445 3446
		mu 0 3 2906 2905 2907
		mu 1 3 2906 2905 2907
		mc 0 3 3976 3974 3977
		f 3 3447 3448 3449
		mu 0 3 2908 2909 2910
		mu 1 3 2908 2909 2910
		mc 0 3 3978 3979 3981
		f 3 -3449 3450 3451
		mu 0 3 2910 2909 2911
		mu 1 3 2910 2909 2911
		mc 0 3 3982 3980 3983
		f 3 3452 3453 3454
		mu 0 3 2912 2913 2914
		mu 1 3 2912 2913 2914
		mc 0 3 3984 3985 3987
		f 3 -3454 3455 3456
		mu 0 3 2914 2913 2915
		mu 1 3 2914 2913 2915
		mc 0 3 3988 3986 3989
		f 3 3457 3458 3459
		mu 0 3 2916 2917 2918
		mu 1 3 2916 2917 2918
		mc 0 3 3990 3991 3993
		f 3 -3459 3460 3461
		mu 0 3 2918 2917 2919
		mu 1 3 2918 2917 2919
		mc 0 3 3994 3992 3995
		f 3 3462 3463 3464
		mu 0 3 2920 2921 2922
		mu 1 3 2920 2921 2922
		mc 0 3 3996 3997 3999
		f 3 -3464 3465 3466
		mu 0 3 2922 2921 2923
		mu 1 3 2922 2921 2923
		mc 0 3 4000 3998 4001
		f 3 3467 3468 3469
		mu 0 3 2924 2925 2926
		mu 1 3 2924 2925 2926
		mc 0 3 4002 4003 4005
		f 3 -3469 3470 3471
		mu 0 3 2926 2925 2927
		mu 1 3 2926 2925 2927
		mc 0 3 4006 4004 4007
		f 3 3472 3473 3474
		mu 0 3 2928 2929 2930
		mu 1 3 2928 2929 2930
		mc 0 3 4008 4009 4011
		f 3 -3474 3475 3476
		mu 0 3 2930 2929 2931
		mu 1 3 2930 2929 2931
		mc 0 3 4012 4010 4013
		f 3 3477 3478 3479
		mu 0 3 2932 2933 2934
		mu 1 3 2932 2933 2934
		mc 0 3 4014 4015 4017
		f 3 -3479 3480 3481
		mu 0 3 2934 2933 2935
		mu 1 3 2934 2933 2935
		mc 0 3 4018 4016 4019
		f 3 3482 3483 3484
		mu 0 3 2936 2937 2938
		mu 1 3 2936 2937 2938
		mc 0 3 4020 4021 4023
		f 3 -3484 3485 3486
		mu 0 3 2938 2937 2939
		mu 1 3 2938 2937 2939
		mc 0 3 4024 4022 4025
		f 3 3487 3488 3489
		mu 0 3 2940 2941 2942
		mu 1 3 2940 2941 2942
		mc 0 3 4026 4027 4029
		f 3 -3489 3490 3491
		mu 0 3 2942 2941 2943
		mu 1 3 2942 2941 2943
		mc 0 3 4030 4028 4031
		f 3 3492 3493 3494
		mu 0 3 2944 2945 2946
		mu 1 3 2944 2945 2946
		mc 0 3 4032 4033 4035
		f 3 -3494 3495 3496
		mu 0 3 2946 2945 2947
		mu 1 3 2946 2945 2947
		mc 0 3 4036 4034 4037
		f 3 3497 3498 3499
		mu 0 3 2948 2949 2950
		mu 1 3 2948 2949 2950
		mc 0 3 4038 4039 4041
		f 3 -3499 3500 3501
		mu 0 3 2950 2949 2951
		mu 1 3 2950 2949 2951
		mc 0 3 4042 4040 4043
		f 3 3502 3503 3504
		mu 0 3 2952 2953 2954
		mu 1 3 2952 2953 2954
		mc 0 3 4044 4045 4047
		f 3 -3504 3505 3506
		mu 0 3 2954 2953 2955
		mu 1 3 2954 2953 2955
		mc 0 3 4048 4046 4049
		f 3 3507 3508 3509
		mu 0 3 2956 2957 2958
		mu 1 3 2956 2957 2958
		mc 0 3 4050 4051 4053
		f 3 -3509 3510 3511
		mu 0 3 2958 2957 2959
		mu 1 3 2958 2957 2959
		mc 0 3 4054 4052 4055
		f 3 3512 3513 3514
		mu 0 3 2960 2961 2962
		mu 1 3 2960 2961 2962
		mc 0 3 4056 4057 4059
		f 3 -3514 3515 3516
		mu 0 3 2962 2961 2963
		mu 1 3 2962 2961 2963
		mc 0 3 4060 4058 4061
		f 3 3517 3518 3519
		mu 0 3 2964 2965 2966
		mu 1 3 2964 2965 2966
		mc 0 3 4062 4063 4065
		f 3 -3519 3520 3521
		mu 0 3 2966 2965 2967
		mu 1 3 2966 2965 2967
		mc 0 3 4066 4064 4067
		f 3 3522 3523 3524
		mu 0 3 2968 2969 2970
		mu 1 3 2968 2969 2970
		mc 0 3 4068 4069 4071
		f 3 -3524 3525 3526
		mu 0 3 2970 2969 2971
		mu 1 3 2970 2969 2971
		mc 0 3 4072 4070 4073
		f 3 3527 3528 3529
		mu 0 3 2972 2973 2974
		mu 1 3 2972 2973 2974
		mc 0 3 4074 4075 4077
		f 3 -3529 3530 3531
		mu 0 3 2974 2973 2975
		mu 1 3 2974 2973 2975
		mc 0 3 4078 4076 4079
		f 3 3532 3533 3534
		mu 0 3 2976 2977 2978
		mu 1 3 2976 2977 2978
		mc 0 3 4080 4081 4083
		f 3 -3534 3535 3536
		mu 0 3 2978 2977 2979
		mu 1 3 2978 2977 2979
		mc 0 3 4084 4082 4085
		f 3 3537 3538 3539
		mu 0 3 2980 2981 2982
		mu 1 3 2980 2981 2982
		mc 0 3 4086 4087 4089
		f 3 -3539 3540 3541
		mu 0 3 2982 2981 2983
		mu 1 3 2982 2981 2983
		mc 0 3 4090 4088 4091
		f 3 3542 3543 3544
		mu 0 3 2984 2985 2986
		mu 1 3 2984 2985 2986
		mc 0 3 4092 4093 4095
		f 3 -3544 3545 3546
		mu 0 3 2986 2985 2987
		mu 1 3 2986 2985 2987
		mc 0 3 4096 4094 4097
		f 3 3547 3548 3549
		mu 0 3 2988 2989 2990
		mu 1 3 2988 2989 2990
		mc 0 3 4098 4099 4101
		f 3 -3549 3550 3551
		mu 0 3 2990 2989 2991
		mu 1 3 2990 2989 2991
		mc 0 3 4102 4100 4103
		f 3 3552 3553 3554
		mu 0 3 2992 2993 2994
		mu 1 3 2992 2993 2994
		mc 0 3 4104 4105 4107
		f 3 -3554 3555 3556
		mu 0 3 2994 2993 2995
		mu 1 3 2994 2993 2995
		mc 0 3 4108 4106 4109
		f 3 3557 3558 3559
		mu 0 3 2996 2997 2998
		mu 1 3 2996 2997 2998
		mc 0 3 4110 4111 4113
		f 3 -3559 3560 3561
		mu 0 3 2998 2997 2999
		mu 1 3 2998 2997 2999
		mc 0 3 4114 4112 4115
		f 3 3562 3563 3564
		mu 0 3 3000 3001 3002
		mu 1 3 3000 3001 3002
		mc 0 3 4116 4117 4119
		f 3 -3564 3565 3566
		mu 0 3 3002 3001 3003
		mu 1 3 3002 3001 3003
		mc 0 3 4120 4118 4121
		f 3 3567 3568 3569
		mu 0 3 3004 3005 3006
		mu 1 3 3004 3005 3006
		mc 0 3 4122 4123 4125
		f 3 -3569 3570 3571
		mu 0 3 3006 3005 3007
		mu 1 3 3006 3005 3007
		mc 0 3 4126 4124 4127
		f 3 3572 3573 3574
		mu 0 3 3008 3009 3010
		mu 1 3 3008 3009 3010
		mc 0 3 4128 4129 4131
		f 3 -3574 3575 3576
		mu 0 3 3010 3009 3011
		mu 1 3 3010 3009 3011
		mc 0 3 4132 4130 4133
		f 3 3577 3578 3579
		mu 0 3 3012 3013 3014
		mu 1 3 3012 3013 3014
		mc 0 3 4134 4135 4137
		f 3 -3579 3580 3581
		mu 0 3 3014 3013 3015
		mu 1 3 3014 3013 3015
		mc 0 3 4138 4136 4139
		f 3 3582 3583 3584
		mu 0 3 3016 3017 3018
		mu 1 3 3016 3017 3018
		mc 0 3 4140 4141 4143
		f 3 -3584 3585 3586
		mu 0 3 3018 3017 3019
		mu 1 3 3018 3017 3019
		mc 0 3 4144 4142 4145
		f 3 3587 3588 3589
		mu 0 3 3020 3021 3022
		mu 1 3 3020 3021 3022
		mc 0 3 4146 4147 4149
		f 3 -3589 3590 3591
		mu 0 3 3022 3021 3023
		mu 1 3 3022 3021 3023
		mc 0 3 4150 4148 4151
		f 3 3592 3593 3594
		mu 0 3 3024 3025 3026
		mu 1 3 3024 3025 3026
		mc 0 3 4152 4153 4155
		f 3 -3594 3595 3596
		mu 0 3 3026 3025 3027
		mu 1 3 3026 3025 3027
		mc 0 3 4156 4154 4157
		f 3 3597 3598 3599
		mu 0 3 3028 3029 3030
		mu 1 3 3028 3029 3030
		mc 0 3 4158 4159 4161
		f 3 -3599 3600 3601
		mu 0 3 3030 3029 3031
		mu 1 3 3030 3029 3031
		mc 0 3 4162 4160 4163
		f 3 3602 3603 3604
		mu 0 3 3032 3033 3034
		mu 1 3 3032 3033 3034
		mc 0 3 4164 4165 4167
		f 3 -3604 3605 3606
		mu 0 3 3034 3033 3035
		mu 1 3 3034 3033 3035
		mc 0 3 4168 4166 4169
		f 3 3607 3608 3609
		mu 0 3 3036 3037 3038
		mu 1 3 3036 3037 3038
		mc 0 3 4170 4171 4173
		f 3 -3609 3610 3611
		mu 0 3 3038 3037 3039
		mu 1 3 3038 3037 3039
		mc 0 3 4174 4172 4175
		f 3 3612 3613 3614
		mu 0 3 3040 3041 3042
		mu 1 3 3040 3041 3042
		mc 0 3 4176 4177 4179
		f 3 -3614 3615 3616
		mu 0 3 3042 3041 3043
		mu 1 3 3042 3041 3043
		mc 0 3 4180 4178 4181
		f 3 3617 3618 3619
		mu 0 3 3044 3045 3046
		mu 1 3 3044 3045 3046
		mc 0 3 4182 4183 4185
		f 3 -3619 3620 3621
		mu 0 3 3046 3045 3047
		mu 1 3 3046 3045 3047
		mc 0 3 4186 4184 4187
		f 3 3622 3623 3624
		mu 0 3 3048 3049 3050
		mu 1 3 3048 3049 3050
		mc 0 3 4188 4189 4191
		f 3 -3624 3625 3626
		mu 0 3 3050 3049 3051
		mu 1 3 3050 3049 3051
		mc 0 3 4192 4190 4193
		f 3 3627 3628 3629
		mu 0 3 3052 3053 3054
		mu 1 3 3052 3053 3054
		mc 0 3 4194 4195 4197
		f 3 -3629 3630 3631
		mu 0 3 3054 3053 3055
		mu 1 3 3054 3053 3055
		mc 0 3 4198 4196 4199
		f 3 3632 3633 3634
		mu 0 3 3056 3057 3058
		mu 1 3 3056 3057 3058
		mc 0 3 4200 4201 4203
		f 3 -3634 3635 3636
		mu 0 3 3058 3057 3059
		mu 1 3 3058 3057 3059
		mc 0 3 4204 4202 4205
		f 3 3637 3638 3639
		mu 0 3 3060 3061 3062
		mu 1 3 3060 3061 3062
		mc 0 3 4206 4207 4209
		f 3 -3639 3640 3641
		mu 0 3 3062 3061 3063
		mu 1 3 3062 3061 3063
		mc 0 3 4210 4208 4211
		f 3 3642 3643 3644
		mu 0 3 3064 3065 3066
		mu 1 3 3064 3065 3066
		mc 0 3 4212 4213 4215
		f 3 -3644 3645 3646
		mu 0 3 3066 3065 3067
		mu 1 3 3066 3065 3067
		mc 0 3 4216 4214 4217
		f 3 3647 3648 3649
		mu 0 3 3068 3069 3070
		mu 1 3 3068 3069 3070
		mc 0 3 4218 4220 4222
		f 3 3650 -3648 3651
		mu 0 3 3071 3069 3068
		mu 1 3 3071 3069 3068
		mc 0 3 4223 4221 4219
		f 3 3652 3653 3654
		mu 0 3 3072 3073 3071
		mu 1 3 3072 3073 3071
		mc 0 3 4225 4227 4224
		f 3 3655 -3653 3656
		mu 0 3 3074 3073 3072
		mu 1 3 3074 3073 3072
		mc 0 3 4229 4228 4226
		f 3 3657 3658 3659
		mu 0 3 3075 3076 3077
		mu 1 3 3075 3076 3077
		mc 0 3 4230 4231 4233
		f 3 -3659 3660 3661
		mu 0 3 3077 3076 3078
		mu 1 3 3077 3076 3078
		mc 0 3 4234 4232 4235
		f 3 3662 3663 3664
		mu 0 3 3079 3080 3081
		mu 1 3 3079 3080 3081
		mc 0 3 4236 4237 4239
		f 3 -3664 3665 3666
		mu 0 3 3081 3080 3082
		mu 1 3 3081 3080 3082
		mc 0 3 4240 4238 4241
		f 3 3667 3668 3669
		mu 0 3 3083 3084 3085
		mu 1 3 3083 3084 3085
		mc 0 3 4242 4243 4245
		f 3 -3669 3670 3671
		mu 0 3 3085 3084 3086
		mu 1 3 3085 3084 3086
		mc 0 3 4246 4244 4247
		f 3 3672 3673 3674
		mu 0 3 3087 3088 3089
		mu 1 3 3087 3088 3089
		mc 0 3 4248 4249 4251
		f 3 -3674 3675 3676
		mu 0 3 3089 3088 3090
		mu 1 3 3089 3088 3090
		mc 0 3 4252 4250 4253
		f 3 3677 3678 3679
		mu 0 3 3091 3092 3093
		mu 1 3 3091 3092 3093
		mc 0 3 4254 4255 4257
		f 3 -3679 3680 3681
		mu 0 3 3093 3092 3094
		mu 1 3 3093 3092 3094
		mc 0 3 4258 4256 4259
		f 3 3682 3683 3684
		mu 0 3 3095 3096 3097
		mu 1 3 3095 3096 3097
		mc 0 3 4260 4261 4263
		f 3 -3684 3685 3686
		mu 0 3 3097 3096 3098
		mu 1 3 3097 3096 3098
		mc 0 3 4264 4262 4265
		f 3 3687 3688 3689
		mu 0 3 3099 3100 3101
		mu 1 3 3099 3100 3101
		mc 0 3 4266 4267 4269
		f 3 -3689 3690 3691
		mu 0 3 3101 3100 3102
		mu 1 3 3101 3100 3102
		mc 0 3 4270 4268 4271
		f 3 3692 3693 3694
		mu 0 3 3103 3104 3105
		mu 1 3 3103 3104 3105
		mc 0 3 4272 4273 4275
		f 3 -3694 3695 3696
		mu 0 3 3105 3104 3106
		mu 1 3 3105 3104 3106
		mc 0 3 4276 4274 4277
		f 3 3697 3698 3699
		mu 0 3 3107 3108 3109
		mu 1 3 3107 3108 3109
		mc 0 3 4278 4279 4281
		f 3 -3699 3700 3701
		mu 0 3 3109 3108 3110
		mu 1 3 3109 3108 3110
		mc 0 3 4282 4280 4283
		f 3 3702 3703 3704
		mu 0 3 3111 3112 3113
		mu 1 3 3111 3112 3113
		mc 0 3 4284 4285 4287
		f 3 -3704 3705 3706
		mu 0 3 3113 3112 3114
		mu 1 3 3113 3112 3114
		mc 0 3 4288 4286 4289
		f 3 3707 3708 3709
		mu 0 3 3115 3116 3117
		mu 1 3 3115 3116 3117
		mc 0 3 4290 4291 4293
		f 3 -3709 3710 3711
		mu 0 3 3117 3116 3118
		mu 1 3 3117 3116 3118
		mc 0 3 4294 4292 4295
		f 3 3712 3713 3714
		mu 0 3 3119 3120 3121
		mu 1 3 3119 3120 3121
		mc 0 3 4296 4297 4299
		f 3 -3714 3715 3716
		mu 0 3 3121 3120 3122
		mu 1 3 3121 3120 3122
		mc 0 3 4300 4298 4301
		f 3 3717 3718 3719
		mu 0 3 3123 3124 3125
		mu 1 3 3123 3124 3125
		mc 0 3 4302 4303 4305
		f 3 -3719 3720 3721
		mu 0 3 3125 3124 3126
		mu 1 3 3125 3124 3126
		mc 0 3 4306 4304 4307
		f 3 3722 3723 3724
		mu 0 3 3127 3128 3129
		mu 1 3 3127 3128 3129
		mc 0 3 4308 4309 4311
		f 3 -3724 3725 3726
		mu 0 3 3129 3128 3130
		mu 1 3 3129 3128 3130
		mc 0 3 4312 4310 4313
		f 3 3727 3728 3729
		mu 0 3 3131 3132 3133
		mu 1 3 3131 3132 3133
		mc 0 3 4314 4315 4317
		f 3 -3729 3730 3731
		mu 0 3 3133 3132 3134
		mu 1 3 3133 3132 3134
		mc 0 3 4318 4316 4319
		f 3 3732 3733 3734
		mu 0 3 3135 3136 3137
		mu 1 3 3135 3136 3137
		mc 0 3 4320 4321 4323
		f 3 -3734 3735 3736
		mu 0 3 3137 3136 3138
		mu 1 3 3137 3136 3138
		mc 0 3 4324 4322 4325
		f 3 3737 3738 3739
		mu 0 3 3139 3140 3141
		mu 1 3 3139 3140 3141
		mc 0 3 4326 4327 4329
		f 3 -3739 3740 3741
		mu 0 3 3141 3140 3142
		mu 1 3 3141 3140 3142
		mc 0 3 4330 4328 4331
		f 3 3742 3743 3744
		mu 0 3 3143 3144 3145
		mu 1 3 3143 3144 3145
		mc 0 3 4332 4333 4335
		f 3 -3744 3745 3746
		mu 0 3 3145 3144 3146
		mu 1 3 3145 3144 3146
		mc 0 3 4336 4334 4337
		f 3 3747 3748 3749
		mu 0 3 3147 3148 3149
		mu 1 3 3147 3148 3149
		mc 0 3 4338 4339 4341
		f 3 -3749 3750 3751
		mu 0 3 3149 3148 3150
		mu 1 3 3149 3148 3150
		mc 0 3 4342 4340 4343
		f 3 3752 3753 3754
		mu 0 3 3151 3152 3153
		mu 1 3 3151 3152 3153
		mc 0 3 4344 4345 4347
		f 3 -3754 3755 3756
		mu 0 3 3153 3152 3154
		mu 1 3 3153 3152 3154
		mc 0 3 4348 4346 4349
		f 3 3757 3758 3759
		mu 0 3 3155 3156 3157
		mu 1 3 3155 3156 3157
		mc 0 3 4350 4351 4353
		f 3 -3759 3760 3761
		mu 0 3 3157 3156 3158
		mu 1 3 3157 3156 3158
		mc 0 3 4354 4352 4355
		f 3 3762 3763 3764
		mu 0 3 3159 3160 3161
		mu 1 3 3159 3160 3161
		mc 0 3 4356 4357 4359
		f 3 -3764 3765 3766
		mu 0 3 3161 3160 3162
		mu 1 3 3161 3160 3162
		mc 0 3 4360 4358 4361
		f 3 3767 3768 3769
		mu 0 3 3163 3164 3165
		mu 1 3 3163 3164 3165
		mc 0 3 4362 4363 4365
		f 3 -3769 3770 3771
		mu 0 3 3165 3164 3166
		mu 1 3 3165 3164 3166
		mc 0 3 4366 4364 4367
		f 3 3772 3773 3774
		mu 0 3 3167 3168 3169
		mu 1 3 3167 3168 3169
		mc 0 3 4368 4369 4371
		f 3 -3774 3775 3776
		mu 0 3 3169 3168 3170
		mu 1 3 3169 3168 3170
		mc 0 3 4372 4370 4373
		f 3 3777 3778 3779
		mu 0 3 3171 3172 3173
		mu 1 3 3171 3172 3173
		mc 0 3 4374 4375 4377
		f 3 -3779 3780 3781
		mu 0 3 3173 3172 3174
		mu 1 3 3173 3172 3174
		mc 0 3 4378 4376 4379
		f 3 3782 3783 3784
		mu 0 3 3175 3176 3177
		mu 1 3 3175 3176 3177
		mc 0 3 4380 4381 4383
		f 3 -3784 3785 3786
		mu 0 3 3177 3176 3178
		mu 1 3 3177 3176 3178
		mc 0 3 4384 4382 4385
		f 3 3787 3788 3789
		mu 0 3 3179 3180 3181
		mu 1 3 3179 3180 3181
		mc 0 3 4386 4387 4389
		f 3 -3789 3790 3791
		mu 0 3 3181 3180 3182
		mu 1 3 3181 3180 3182
		mc 0 3 4390 4388 4391
		f 3 3792 3793 3794
		mu 0 3 3183 3184 3185
		mu 1 3 3183 3184 3185
		mc 0 3 4392 4393 4395
		f 3 -3794 3795 3796
		mu 0 3 3185 3184 3186
		mu 1 3 3185 3184 3186
		mc 0 3 4396 4394 4397
		f 3 3797 3798 3799
		mu 0 3 3187 3188 3189
		mu 1 3 3187 3188 3189
		mc 0 3 4398 4399 4401
		f 3 -3799 3800 3801
		mu 0 3 3189 3188 3190
		mu 1 3 3189 3188 3190
		mc 0 3 4402 4400 4403
		f 3 3802 3803 3804
		mu 0 3 3191 3192 3193
		mu 1 3 3191 3192 3193
		mc 0 3 4404 4405 4407
		f 3 -3804 3805 3806
		mu 0 3 3193 3192 3194
		mu 1 3 3193 3192 3194
		mc 0 3 4408 4406 4409
		f 3 3807 3808 3809
		mu 0 3 3195 3196 3197
		mu 1 3 3195 3196 3197
		mc 0 3 4410 4411 4413
		f 3 -3809 3810 3811
		mu 0 3 3197 3196 3198
		mu 1 3 3197 3196 3198
		mc 0 3 4414 4412 4415
		f 3 3812 3813 3814
		mu 0 3 3199 3200 3201
		mu 1 3 3199 3200 3201
		mc 0 3 4416 4417 4419
		f 3 -3814 3815 3816
		mu 0 3 3201 3200 3202
		mu 1 3 3201 3200 3202
		mc 0 3 4420 4418 4421
		f 3 3817 3818 3819
		mu 0 3 3203 3204 3205
		mu 1 3 3203 3204 3205
		mc 0 3 4422 4423 4425
		f 3 -3819 3820 3821
		mu 0 3 3205 3204 3206
		mu 1 3 3205 3204 3206
		mc 0 3 4426 4424 4427
		f 3 3822 3823 3824
		mu 0 3 3207 3208 3209
		mu 1 3 3207 3208 3209
		mc 0 3 4428 4429 4431
		f 3 -3824 3825 3826
		mu 0 3 3209 3208 3210
		mu 1 3 3209 3208 3210
		mc 0 3 4432 4430 4433
		f 3 3827 3828 3829
		mu 0 3 3211 3212 3213
		mu 1 3 3211 3212 3213
		mc 0 3 4434 4435 4437
		f 3 -3829 3830 3831
		mu 0 3 3213 3212 3214
		mu 1 3 3213 3212 3214
		mc 0 3 4438 4436 4439
		f 3 3832 3833 3834
		mu 0 3 3215 3216 3217
		mu 1 3 3215 3216 3217
		mc 0 3 4440 4441 4443
		f 3 -3834 3835 3836
		mu 0 3 3217 3216 3218
		mu 1 3 3217 3216 3218
		mc 0 3 4444 4442 4445
		f 3 3837 3838 3839
		mu 0 3 3219 3220 3221
		mu 1 3 3219 3220 3221
		mc 0 3 4446 4447 4449
		f 3 -3839 3840 3841
		mu 0 3 3221 3220 3222
		mu 1 3 3221 3220 3222
		mc 0 3 4450 4448 4451
		f 3 3842 3843 3844
		mu 0 3 3223 3224 3225
		mu 1 3 3223 3224 3225
		mc 0 3 4452 4453 4455
		f 3 -3844 3845 3846
		mu 0 3 3225 3224 3226
		mu 1 3 3225 3224 3226
		mc 0 3 4456 4454 4457
		f 3 3847 3848 3849
		mu 0 3 3227 3228 3229
		mu 1 3 3227 3228 3229
		mc 0 3 4458 4459 4461
		f 3 -3849 3850 3851
		mu 0 3 3229 3228 3230
		mu 1 3 3229 3228 3230
		mc 0 3 4462 4460 4463
		f 3 3852 3853 3854
		mu 0 3 3231 3232 3233
		mu 1 3 3231 3232 3233
		mc 0 3 4464 4465 4467
		f 3 -3854 3855 3856
		mu 0 3 3233 3232 3234
		mu 1 3 3233 3232 3234
		mc 0 3 4468 4466 4469
		f 3 3857 3858 3859
		mu 0 3 3235 3236 3237
		mu 1 3 3235 3236 3237
		mc 0 3 4470 4471 4473
		f 3 -3859 3860 3861
		mu 0 3 3237 3236 3238
		mu 1 3 3237 3236 3238
		mc 0 3 4474 4472 4475
		f 3 3862 3863 3864
		mu 0 3 3239 3240 3241
		mu 1 3 3239 3240 3241
		mc 0 3 4476 4477 4479
		f 3 -3864 3865 3866
		mu 0 3 3241 3240 3242
		mu 1 3 3241 3240 3242
		mc 0 3 4480 4478 4481
		f 3 3867 3868 3869
		mu 0 3 3243 3244 3245
		mu 1 3 3243 3244 3245
		mc 0 3 4482 4483 4485
		f 3 -3869 3870 3871
		mu 0 3 3245 3244 3246
		mu 1 3 3245 3244 3246
		mc 0 3 4486 4484 4487
		f 3 3872 3873 3874
		mu 0 3 3247 3248 3249
		mu 1 3 3247 3248 3249
		mc 0 3 4488 4489 4491
		f 3 -3874 3875 3876
		mu 0 3 3249 3248 3250
		mu 1 3 3249 3248 3250
		mc 0 3 4492 4490 4493
		f 3 3877 3878 3879
		mu 0 3 3251 3252 3253
		mu 1 3 3251 3252 3253
		mc 0 3 4494 4495 4497
		f 3 -3879 3880 3881
		mu 0 3 3253 3252 3254
		mu 1 3 3253 3252 3254
		mc 0 3 4498 4496 4499;
	setAttr ".fc[1500:1800]"
		f 3 3882 3883 3884
		mu 0 3 3255 3256 3257
		mu 1 3 3255 3256 3257
		mc 0 3 4500 4501 4503
		f 3 -3884 3885 3886
		mu 0 3 3257 3256 3258
		mu 1 3 3257 3256 3258
		mc 0 3 4504 4502 4505
		f 3 3887 3888 3889
		mu 0 3 3259 3260 3261
		mu 1 3 3259 3260 3261
		mc 0 3 4506 4507 4509
		f 3 -3889 3890 3891
		mu 0 3 3261 3260 3262
		mu 1 3 3261 3260 3262
		mc 0 3 4510 4508 4511
		f 3 3892 3893 3894
		mu 0 3 3263 3264 3265
		mu 1 3 3263 3264 3265
		mc 0 3 4512 4513 4515
		f 3 -3894 3895 3896
		mu 0 3 3265 3264 3266
		mu 1 3 3265 3264 3266
		mc 0 3 4516 4514 4517
		f 3 3897 3898 3899
		mu 0 3 3267 3268 3269
		mu 1 3 3267 3268 3269
		mc 0 3 4518 4519 4521
		f 3 -3899 3900 3901
		mu 0 3 3269 3268 3270
		mu 1 3 3269 3268 3270
		mc 0 3 4522 4520 4523
		f 3 3902 3903 3904
		mu 0 3 3271 3272 3273
		mu 1 3 3271 3272 3273
		mc 0 3 4524 4525 4527
		f 3 -3904 3905 3906
		mu 0 3 3273 3272 3274
		mu 1 3 3273 3272 3274
		mc 0 3 4528 4526 4529
		f 3 3907 3908 3909
		mu 0 3 3275 3276 3277
		mu 1 3 3275 3276 3277
		mc 0 3 4530 4531 4533
		f 3 -3909 3910 3911
		mu 0 3 3277 3276 3278
		mu 1 3 3277 3276 3278
		mc 0 3 4534 4532 4535
		f 3 3912 3913 3914
		mu 0 3 3279 3280 3281
		mu 1 3 3279 3280 3281
		mc 0 3 4536 4537 4539
		f 3 -3914 3915 3916
		mu 0 3 3281 3280 3282
		mu 1 3 3281 3280 3282
		mc 0 3 4540 4538 4541
		f 3 3917 3918 3919
		mu 0 3 3283 3284 3285
		mu 1 3 3283 3284 3285
		mc 0 3 4542 4543 4545
		f 3 -3919 3920 3921
		mu 0 3 3285 3284 3286
		mu 1 3 3285 3284 3286
		mc 0 3 4546 4544 4547
		f 3 3922 3923 3924
		mu 0 3 3287 3288 3289
		mu 1 3 3287 3288 3289
		mc 0 3 4548 4549 4551
		f 3 -3924 3925 3926
		mu 0 3 3289 3288 3290
		mu 1 3 3289 3288 3290
		mc 0 3 4552 4550 4553
		f 3 3927 3928 3929
		mu 0 3 3291 3292 3293
		mu 1 3 3291 3292 3293
		mc 0 3 4554 4555 4557
		f 3 -3929 3930 3931
		mu 0 3 3293 3292 3294
		mu 1 3 3293 3292 3294
		mc 0 3 4558 4556 4559
		f 3 3932 3933 3934
		mu 0 3 3295 3296 3297
		mu 1 3 3295 3296 3297
		mc 0 3 4560 4561 4563
		f 3 -3934 3935 3936
		mu 0 3 3297 3296 3298
		mu 1 3 3297 3296 3298
		mc 0 3 4564 4562 4565
		f 3 3937 3938 3939
		mu 0 3 3299 3300 3301
		mu 1 3 3299 3300 3301
		mc 0 3 4566 4567 4569
		f 3 -3939 3940 3941
		mu 0 3 3301 3300 3302
		mu 1 3 3301 3300 3302
		mc 0 3 4570 4568 4571
		f 3 3942 3943 3944
		mu 0 3 3303 3304 3305
		mu 1 3 3303 3304 3305
		mc 0 3 4572 4573 4575
		f 3 -3944 3945 3946
		mu 0 3 3305 3304 3306
		mu 1 3 3305 3304 3306
		mc 0 3 4576 4574 4577
		f 3 3947 3948 3949
		mu 0 3 3307 3308 3309
		mu 1 3 3307 3308 3309
		mc 0 3 4578 4579 4581
		f 3 -3949 3950 3951
		mu 0 3 3309 3308 3310
		mu 1 3 3309 3308 3310
		mc 0 3 4582 4580 4583
		f 3 3952 3953 3954
		mu 0 3 3311 3312 3313
		mu 1 3 3311 3312 3313
		mc 0 3 4584 4585 4587
		f 3 -3954 3955 3956
		mu 0 3 3313 3312 3314
		mu 1 3 3313 3312 3314
		mc 0 3 4588 4586 4589
		f 3 3957 3958 3959
		mu 0 3 3315 3316 3317
		mu 1 3 3315 3316 3317
		mc 0 3 4590 4591 4593
		f 3 -3959 3960 3961
		mu 0 3 3317 3316 3318
		mu 1 3 3317 3316 3318
		mc 0 3 4594 4592 4595
		f 3 3962 3963 3964
		mu 0 3 3319 3320 3321
		mu 1 3 3319 3320 3321
		mc 0 3 4596 4597 4599
		f 3 -3964 3965 3966
		mu 0 3 3321 3320 3322
		mu 1 3 3321 3320 3322
		mc 0 3 4600 4598 4601
		f 3 3967 3968 3969
		mu 0 3 3323 3324 3325
		mu 1 3 3323 3324 3325
		mc 0 3 4602 4603 4605
		f 3 -3969 3970 3971
		mu 0 3 3325 3324 3326
		mu 1 3 3325 3324 3326
		mc 0 3 4606 4604 4607
		f 3 3972 3973 3974
		mu 0 3 3327 3328 3329
		mu 1 3 3327 3328 3329
		mc 0 3 4608 4609 4611
		f 3 -3974 3975 3976
		mu 0 3 3329 3328 3330
		mu 1 3 3329 3328 3330
		mc 0 3 4612 4610 4613
		f 3 3977 3978 3979
		mu 0 3 3331 3332 3333
		mu 1 3 3331 3332 3333
		mc 0 3 4614 4615 4617
		f 3 -3979 3980 3981
		mu 0 3 3333 3332 3334
		mu 1 3 3333 3332 3334
		mc 0 3 4618 4616 4619
		f 3 3982 3983 3984
		mu 0 3 3335 3336 3337
		mu 1 3 3335 3336 3337
		mc 0 3 4620 4621 4623
		f 3 -3984 3985 3986
		mu 0 3 3337 3336 3338
		mu 1 3 3337 3336 3338
		mc 0 3 4624 4622 4625
		f 3 3987 3988 3989
		mu 0 3 3339 3340 3341
		mu 1 3 3339 3340 3341
		mc 0 3 4626 4627 4629
		f 3 -3989 3990 3991
		mu 0 3 3341 3340 3342
		mu 1 3 3341 3340 3342
		mc 0 3 4630 4628 4631
		f 3 3992 3993 3994
		mu 0 3 3343 3344 3345
		mu 1 3 3343 3344 3345
		mc 0 3 4632 4633 4635
		f 3 -3994 3995 3996
		mu 0 3 3345 3344 3346
		mu 1 3 3345 3344 3346
		mc 0 3 4636 4634 4637
		f 3 3997 3998 3999
		mu 0 3 3347 3348 3349
		mu 1 3 3347 3348 3349
		mc 0 3 4638 4639 4641
		f 3 -3999 4000 4001
		mu 0 3 3349 3348 3350
		mu 1 3 3349 3348 3350
		mc 0 3 4642 4640 4643
		f 3 4002 4003 4004
		mu 0 3 3351 3352 3353
		mu 1 3 3351 3352 3353
		mc 0 3 4644 4645 4647
		f 3 -4004 4005 4006
		mu 0 3 3353 3352 3354
		mu 1 3 3353 3352 3354
		mc 0 3 4648 4646 4649
		f 3 4007 4008 4009
		mu 0 3 3355 3356 3357
		mu 1 3 3355 3356 3357
		mc 0 3 4650 4651 4653
		f 3 -4009 4010 4011
		mu 0 3 3357 3356 3358
		mu 1 3 3357 3356 3358
		mc 0 3 4654 4652 4655
		f 3 4012 4013 4014
		mu 0 3 3359 3360 3361
		mu 1 3 3359 3360 3361
		mc 0 3 4656 4657 4659
		f 3 -4014 4015 4016
		mu 0 3 3361 3360 3362
		mu 1 3 3361 3360 3362
		mc 0 3 4660 4658 4661
		f 3 4017 4018 4019
		mu 0 3 3363 3364 3365
		mu 1 3 3363 3364 3365
		mc 0 3 4662 4663 4665
		f 3 -4019 4020 4021
		mu 0 3 3365 3364 3366
		mu 1 3 3365 3364 3366
		mc 0 3 4666 4664 4667
		f 3 4022 4023 4024
		mu 0 3 3367 3368 3369
		mu 1 3 3367 3368 3369
		mc 0 3 4668 4669 4671
		f 3 -4024 4025 4026
		mu 0 3 3369 3368 3370
		mu 1 3 3369 3368 3370
		mc 0 3 4672 4670 4673
		f 3 4027 4028 4029
		mu 0 3 3371 3372 3373
		mu 1 3 3371 3372 3373
		mc 0 3 4674 4675 4677
		f 3 -4029 4030 4031
		mu 0 3 3373 3372 3374
		mu 1 3 3373 3372 3374
		mc 0 3 4678 4676 4679
		f 3 4032 4033 4034
		mu 0 3 3375 3376 3377
		mu 1 3 3375 3376 3377
		mc 0 3 4680 4681 4683
		f 3 -4034 4035 4036
		mu 0 3 3377 3376 3378
		mu 1 3 3377 3376 3378
		mc 0 3 4684 4682 4685
		f 3 4037 4038 4039
		mu 0 3 3379 3380 3381
		mu 1 3 3379 3380 3381
		mc 0 3 4686 4687 4689
		f 3 -4039 4040 4041
		mu 0 3 3381 3380 3382
		mu 1 3 3381 3380 3382
		mc 0 3 4690 4688 4691
		f 3 4042 4043 4044
		mu 0 3 3383 3384 3385
		mu 1 3 3383 3384 3385
		mc 0 3 4692 4693 4695
		f 3 -4044 4045 4046
		mu 0 3 3385 3384 3386
		mu 1 3 3385 3384 3386
		mc 0 3 4696 4694 4697
		f 3 4047 4048 4049
		mu 0 3 3387 3388 3389
		mu 1 3 3387 3388 3389
		mc 0 3 4698 4699 4701
		f 3 -4049 4050 4051
		mu 0 3 3389 3388 3390
		mu 1 3 3389 3388 3390
		mc 0 3 4702 4700 4703
		f 3 4052 4053 4054
		mu 0 3 3391 3392 3393
		mu 1 3 3391 3392 3393
		mc 0 3 4704 4705 4707
		f 3 -4054 4055 4056
		mu 0 3 3393 3392 3394
		mu 1 3 3393 3392 3394
		mc 0 3 4708 4706 4709
		f 3 4057 4058 4059
		mu 0 3 3395 3396 3397
		mu 1 3 3395 3396 3397
		mc 0 3 4710 4711 4713
		f 3 -4059 4060 4061
		mu 0 3 3397 3396 3398
		mu 1 3 3397 3396 3398
		mc 0 3 4714 4712 4715
		f 3 4062 4063 4064
		mu 0 3 3399 3400 3401
		mu 1 3 3399 3400 3401
		mc 0 3 4716 4717 4719
		f 3 -4064 4065 4066
		mu 0 3 3401 3400 3402
		mu 1 3 3401 3400 3402
		mc 0 3 4720 4718 4721
		f 3 4067 4068 4069
		mu 0 3 3403 3404 3405
		mu 1 3 3403 3404 3405
		mc 0 3 4722 4723 4725
		f 3 -4069 4070 4071
		mu 0 3 3405 3404 3406
		mu 1 3 3405 3404 3406
		mc 0 3 4726 4724 4727
		f 3 4072 4073 4074
		mu 0 3 3407 3408 3409
		mu 1 3 3407 3408 3409
		mc 0 3 4728 4729 4731
		f 3 -4074 4075 4076
		mu 0 3 3409 3408 3410
		mu 1 3 3409 3408 3410
		mc 0 3 4732 4730 4733
		f 3 4077 4078 4079
		mu 0 3 3411 3412 3413
		mu 1 3 3411 3412 3413
		mc 0 3 4734 4735 4737
		f 3 -4079 4080 4081
		mu 0 3 3413 3412 3414
		mu 1 3 3413 3412 3414
		mc 0 3 4738 4736 4739
		f 3 4082 4083 4084
		mu 0 3 3415 3416 3417
		mu 1 3 3415 3416 3417
		mc 0 3 4740 4741 4743
		f 3 -4084 4085 4086
		mu 0 3 3417 3416 3418
		mu 1 3 3417 3416 3418
		mc 0 3 4744 4742 4745
		f 3 4087 4088 4089
		mu 0 3 3419 3420 3421
		mu 1 3 3419 3420 3421
		mc 0 3 4746 4747 4749
		f 3 -4089 4090 4091
		mu 0 3 3421 3420 3422
		mu 1 3 3421 3420 3422
		mc 0 3 4750 4748 4751
		f 3 4092 4093 4094
		mu 0 3 3423 3424 3425
		mu 1 3 3423 3424 3425
		mc 0 3 4752 4753 4755
		f 3 -4094 4095 4096
		mu 0 3 3425 3424 3426
		mu 1 3 3425 3424 3426
		mc 0 3 4756 4754 4757
		f 3 4097 4098 4099
		mu 0 3 3427 3428 3429
		mu 1 3 3427 3428 3429
		mc 0 3 4758 4759 4761
		f 3 -4099 4100 4101
		mu 0 3 3429 3428 3430
		mu 1 3 3429 3428 3430
		mc 0 3 4762 4760 4763
		f 3 4102 4103 4104
		mu 0 3 3431 3432 3433
		mu 1 3 3431 3432 3433
		mc 0 3 4764 4765 4767
		f 3 -4104 4105 4106
		mu 0 3 3433 3432 3434
		mu 1 3 3433 3432 3434
		mc 0 3 4768 4766 4769
		f 3 4107 4108 4109
		mu 0 3 3435 3436 3437
		mu 1 3 3435 3436 3437
		mc 0 3 4770 4771 4773
		f 3 -4109 4110 4111
		mu 0 3 3437 3436 3438
		mu 1 3 3437 3436 3438
		mc 0 3 4774 4772 4775
		f 3 4112 4113 4114
		mu 0 3 3439 3440 3441
		mu 1 3 3439 3440 3441
		mc 0 3 4776 4777 4779
		f 3 -4114 4115 4116
		mu 0 3 3441 3440 3442
		mu 1 3 3441 3440 3442
		mc 0 3 4780 4778 4781
		f 3 4117 4118 4119
		mu 0 3 3443 3444 3445
		mu 1 3 3443 3444 3445
		mc 0 3 4782 4783 4785
		f 3 -4119 4120 4121
		mu 0 3 3445 3444 3446
		mu 1 3 3445 3444 3446
		mc 0 3 4786 4784 4787
		f 3 4122 4123 4124
		mu 0 3 3447 3448 3449
		mu 1 3 3447 3448 3449
		mc 0 3 4788 4789 4791
		f 3 -4124 4125 4126
		mu 0 3 3449 3448 3450
		mu 1 3 3449 3448 3450
		mc 0 3 4792 4790 4793
		f 3 4127 4128 4129
		mu 0 3 3451 3452 3453
		mu 1 3 3451 3452 3453
		mc 0 3 4794 4795 4797
		f 3 -4129 4130 4131
		mu 0 3 3453 3452 3454
		mu 1 3 3453 3452 3454
		mc 0 3 4798 4796 4799
		f 3 4132 4133 4134
		mu 0 3 3455 3456 3457
		mu 1 3 3455 3456 3457
		mc 0 3 4800 4801 4803
		f 3 -4134 4135 4136
		mu 0 3 3457 3456 3458
		mu 1 3 3457 3456 3458
		mc 0 3 4804 4802 4805
		f 3 4137 4138 4139
		mu 0 3 3459 3460 3461
		mu 1 3 3459 3460 3461
		mc 0 3 4806 4807 4809
		f 3 -4139 4140 4141
		mu 0 3 3461 3460 3462
		mu 1 3 3461 3460 3462
		mc 0 3 4810 4808 4811
		f 3 4142 4143 4144
		mu 0 3 3463 3464 3465
		mu 1 3 3463 3464 3465
		mc 0 3 4812 4813 4815
		f 3 -4144 4145 4146
		mu 0 3 3465 3464 3466
		mu 1 3 3465 3464 3466
		mc 0 3 4816 4814 4817
		f 3 4147 4148 4149
		mu 0 3 3467 3468 3469
		mu 1 3 3467 3468 3469
		mc 0 3 4818 4819 4821
		f 3 -4149 4150 4151
		mu 0 3 3469 3468 3470
		mu 1 3 3469 3468 3470
		mc 0 3 4822 4820 4823
		f 3 4152 4153 4154
		mu 0 3 3471 3472 3473
		mu 1 3 3471 3472 3473
		mc 0 3 4824 4825 4827
		f 3 -4154 4155 4156
		mu 0 3 3473 3472 3474
		mu 1 3 3473 3472 3474
		mc 0 3 4828 4826 4829
		f 3 4157 4158 4159
		mu 0 3 3475 3476 3477
		mu 1 3 3475 3476 3477
		mc 0 3 4830 4831 4833
		f 3 -4159 4160 4161
		mu 0 3 3477 3476 3478
		mu 1 3 3477 3476 3478
		mc 0 3 4834 4832 4835
		f 3 4162 4163 4164
		mu 0 3 3479 3480 3481
		mu 1 3 3479 3480 3481
		mc 0 3 4836 4837 4839
		f 3 -4164 4165 4166
		mu 0 3 3481 3480 3482
		mu 1 3 3481 3480 3482
		mc 0 3 4840 4838 4841
		f 3 4167 4168 4169
		mu 0 3 3483 3484 3485
		mu 1 3 3483 3484 3485
		mc 0 3 4842 4843 4845
		f 3 -4169 4170 4171
		mu 0 3 3485 3484 3486
		mu 1 3 3485 3484 3486
		mc 0 3 4846 4844 4847
		f 3 4172 4173 4174
		mu 0 3 3487 3488 3489
		mu 1 3 3487 3488 3489
		mc 0 3 4848 4849 4851
		f 3 -4174 4175 4176
		mu 0 3 3489 3488 3490
		mu 1 3 3489 3488 3490
		mc 0 3 4852 4850 4853
		f 3 4177 4178 4179
		mu 0 3 3491 3492 3493
		mu 1 3 3491 3492 3493
		mc 0 3 4854 4855 4857
		f 3 -4179 4180 4181
		mu 0 3 3493 3492 3494
		mu 1 3 3493 3492 3494
		mc 0 3 4858 4856 4859
		f 3 4182 4183 4184
		mu 0 3 3495 3496 3497
		mu 1 3 3495 3496 3497
		mc 0 3 4860 4861 4863
		f 3 -4184 4185 4186
		mu 0 3 3497 3496 3498
		mu 1 3 3497 3496 3498
		mc 0 3 4864 4862 4865
		f 3 4187 4188 4189
		mu 0 3 3499 3500 3501
		mu 1 3 3499 3500 3501
		mc 0 3 4866 4867 4869
		f 3 -4189 4190 4191
		mu 0 3 3501 3500 3502
		mu 1 3 3501 3500 3502
		mc 0 3 4870 4868 4871
		f 3 4192 4193 4194
		mu 0 3 3503 3504 3505
		mu 1 3 3503 3504 3505
		mc 0 3 4872 4873 4875
		f 3 -4194 4195 4196
		mu 0 3 3505 3504 3506
		mu 1 3 3505 3504 3506
		mc 0 3 4876 4874 4877
		f 3 4197 4198 4199
		mu 0 3 3507 3508 3509
		mu 1 3 3507 3508 3509
		mc 0 3 4878 4880 4882
		f 3 4200 -4198 4201
		mu 0 3 3510 3508 3507
		mu 1 3 3510 3508 3507
		mc 0 3 4883 4881 4879
		f 3 4202 4203 4204
		mu 0 3 3511 3512 3510
		mu 1 3 3511 3512 3510
		mc 0 3 4885 4887 4884
		f 3 4205 -4203 4206
		mu 0 3 3513 3512 3511
		mu 1 3 3513 3512 3511
		mc 0 3 4889 4888 4886
		f 3 4207 4208 4209
		mu 0 3 3514 3515 3516
		mu 1 3 3514 3515 3516
		mc 0 3 4890 4891 4893
		f 3 -4209 4210 4211
		mu 0 3 3516 3515 3517
		mu 1 3 3516 3515 3517
		mc 0 3 4894 4892 4895
		f 3 4212 4213 4214
		mu 0 3 3518 3519 3520
		mu 1 3 3518 3519 3520
		mc 0 3 4896 4897 4899
		f 3 -4214 4215 4216
		mu 0 3 3520 3519 3521
		mu 1 3 3520 3519 3521
		mc 0 3 4900 4898 4901
		f 3 4217 4218 4219
		mu 0 3 3522 3523 3524
		mu 1 3 3522 3523 3524
		mc 0 3 4902 4903 4905
		f 3 -4219 4220 4221
		mu 0 3 3524 3523 3525
		mu 1 3 3524 3523 3525
		mc 0 3 4906 4904 4907
		f 3 4222 4223 4224
		mu 0 3 3526 3527 3528
		mu 1 3 3526 3527 3528
		mc 0 3 4908 4909 4911
		f 3 -4224 4225 4226
		mu 0 3 3528 3527 3529
		mu 1 3 3528 3527 3529
		mc 0 3 4912 4910 4913
		f 3 4227 4228 4229
		mu 0 3 3530 3531 3532
		mu 1 3 3530 3531 3532
		mc 0 3 4914 4915 4917
		f 3 -4229 4230 4231
		mu 0 3 3532 3531 3533
		mu 1 3 3532 3531 3533
		mc 0 3 4918 4916 4919
		f 3 4232 4233 4234
		mu 0 3 3534 3535 3536
		mu 1 3 3534 3535 3536
		mc 0 3 4920 4921 4923
		f 3 -4234 4235 4236
		mu 0 3 3536 3535 3537
		mu 1 3 3536 3535 3537
		mc 0 3 4924 4922 4925
		f 3 4237 4238 4239
		mu 0 3 3538 3539 3540
		mu 1 3 3538 3539 3540
		mc 0 3 4926 4927 4929
		f 3 -4239 4240 4241
		mu 0 3 3540 3539 3541
		mu 1 3 3540 3539 3541
		mc 0 3 4930 4928 4931
		f 3 4242 4243 4244
		mu 0 3 3542 3543 3544
		mu 1 3 3542 3543 3544
		mc 0 3 4932 4933 4935
		f 3 -4244 4245 4246
		mu 0 3 3544 3543 3545
		mu 1 3 3544 3543 3545
		mc 0 3 4936 4934 4937
		f 3 4247 4248 4249
		mu 0 3 3546 3547 3548
		mu 1 3 3546 3547 3548
		mc 0 3 4938 4939 4941
		f 3 -4249 4250 4251
		mu 0 3 3548 3547 3549
		mu 1 3 3548 3547 3549
		mc 0 3 4942 4940 4943
		f 3 4252 4253 4254
		mu 0 3 3550 3551 3552
		mu 1 3 3550 3551 3552
		mc 0 3 4944 4945 4947
		f 3 -4254 4255 4256
		mu 0 3 3552 3551 3553
		mu 1 3 3552 3551 3553
		mc 0 3 4948 4946 4949
		f 3 4257 4258 4259
		mu 0 3 3554 3555 3556
		mu 1 3 3554 3555 3556
		mc 0 3 4950 4951 4953
		f 3 -4259 4260 4261
		mu 0 3 3556 3555 3557
		mu 1 3 3556 3555 3557
		mc 0 3 4954 4952 4955
		f 3 4262 4263 4264
		mu 0 3 3558 3559 3560
		mu 1 3 3558 3559 3560
		mc 0 3 4956 4957 4959
		f 3 -4264 4265 4266
		mu 0 3 3560 3559 3561
		mu 1 3 3560 3559 3561
		mc 0 3 4960 4958 4961
		f 3 4267 4268 4269
		mu 0 3 3562 3563 3564
		mu 1 3 3562 3563 3564
		mc 0 3 4962 4963 4965
		f 3 -4269 4270 4271
		mu 0 3 3564 3563 3565
		mu 1 3 3564 3563 3565
		mc 0 3 4966 4964 4967
		f 3 4272 4273 4274
		mu 0 3 3566 3567 3568
		mu 1 3 3566 3567 3568
		mc 0 3 4968 4969 4971
		f 3 -4274 4275 4276
		mu 0 3 3568 3567 3569
		mu 1 3 3568 3567 3569
		mc 0 3 4972 4970 4973
		f 3 4277 4278 4279
		mu 0 3 3570 3571 3572
		mu 1 3 3570 3571 3572
		mc 0 3 4974 4975 4977
		f 3 -4279 4280 4281
		mu 0 3 3572 3571 3573
		mu 1 3 3572 3571 3573
		mc 0 3 4978 4976 4979
		f 3 4282 4283 4284
		mu 0 3 3574 3575 3576
		mu 1 3 3574 3575 3576
		mc 0 3 4980 4981 4983
		f 3 -4284 4285 4286
		mu 0 3 3576 3575 3577
		mu 1 3 3576 3575 3577
		mc 0 3 4984 4982 4985
		f 3 4287 4288 4289
		mu 0 3 3578 3579 3580
		mu 1 3 3578 3579 3580
		mc 0 3 4986 4987 4989
		f 3 -4289 4290 4291
		mu 0 3 3580 3579 3581
		mu 1 3 3580 3579 3581
		mc 0 3 4990 4988 4991
		f 3 4292 4293 4294
		mu 0 3 3582 3583 3584
		mu 1 3 3582 3583 3584
		mc 0 3 4992 4993 4995
		f 3 -4294 4295 4296
		mu 0 3 3584 3583 3585
		mu 1 3 3584 3583 3585
		mc 0 3 4996 4994 4997
		f 3 4297 4298 4299
		mu 0 3 3586 3587 3588
		mu 1 3 3586 3587 3588
		mc 0 3 4998 4999 5001
		f 3 -4299 4300 4301
		mu 0 3 3588 3587 3589
		mu 1 3 3588 3587 3589
		mc 0 3 5002 5000 5003
		f 3 4302 4303 4304
		mu 0 3 3590 3591 3592
		mu 1 3 3590 3591 3592
		mc 0 3 5004 5005 5007
		f 3 -4304 4305 4306
		mu 0 3 3592 3591 3593
		mu 1 3 3592 3591 3593
		mc 0 3 5008 5006 5009
		f 3 4307 4308 4309
		mu 0 3 3594 3595 3596
		mu 1 3 3594 3595 3596
		mc 0 3 5010 5011 5013
		f 3 -4309 4310 4311
		mu 0 3 3596 3595 3597
		mu 1 3 3596 3595 3597
		mc 0 3 5014 5012 5015
		f 3 4312 4313 4314
		mu 0 3 3598 3599 3600
		mu 1 3 3598 3599 3600
		mc 0 3 5016 5017 5019
		f 3 -4314 4315 4316
		mu 0 3 3600 3599 3601
		mu 1 3 3600 3599 3601
		mc 0 3 5020 5018 5021
		f 3 4317 4318 4319
		mu 0 3 3602 3603 3604
		mu 1 3 3602 3603 3604
		mc 0 3 5022 5023 5025
		f 3 -4319 4320 4321
		mu 0 3 3604 3603 3605
		mu 1 3 3604 3603 3605
		mc 0 3 5026 5024 5027
		f 3 4322 4323 4324
		mu 0 3 3606 3607 3608
		mu 1 3 3606 3607 3608
		mc 0 3 5028 5029 5031
		f 3 -4324 4325 4326
		mu 0 3 3608 3607 3609
		mu 1 3 3608 3607 3609
		mc 0 3 5032 5030 5033
		f 3 4327 4328 4329
		mu 0 3 3610 3611 3612
		mu 1 3 3610 3611 3612
		mc 0 3 5034 5035 5037
		f 3 -4329 4330 4331
		mu 0 3 3612 3611 3613
		mu 1 3 3612 3611 3613
		mc 0 3 5038 5036 5039
		f 3 4332 4333 4334
		mu 0 3 3614 3615 3616
		mu 1 3 3614 3615 3616
		mc 0 3 5040 5041 5043
		f 3 -4334 4335 4336
		mu 0 3 3616 3615 3617
		mu 1 3 3616 3615 3617
		mc 0 3 5044 5042 5045
		f 3 4337 4338 4339
		mu 0 3 3618 3619 3620
		mu 1 3 3618 3619 3620
		mc 0 3 5046 5047 5049
		f 3 -4339 4340 4341
		mu 0 3 3620 3619 3621
		mu 1 3 3620 3619 3621
		mc 0 3 5050 5048 5051
		f 3 4342 4343 4344
		mu 0 3 3622 3623 3624
		mu 1 3 3622 3623 3624
		mc 0 3 5052 5053 5055
		f 3 -4344 4345 4346
		mu 0 3 3624 3623 3625
		mu 1 3 3624 3623 3625
		mc 0 3 5056 5054 5057
		f 3 4347 4348 4349
		mu 0 3 3626 3627 3628
		mu 1 3 3626 3627 3628
		mc 0 3 5058 5059 5061
		f 3 -4349 4350 4351
		mu 0 3 3628 3627 3629
		mu 1 3 3628 3627 3629
		mc 0 3 5062 5060 5063
		f 3 4352 4353 4354
		mu 0 3 3630 3631 3632
		mu 1 3 3630 3631 3632
		mc 0 3 5064 5065 5067
		f 3 -4354 4355 4356
		mu 0 3 3632 3631 3633
		mu 1 3 3632 3631 3633
		mc 0 3 5068 5066 5069
		f 3 4357 4358 4359
		mu 0 3 3634 3635 3636
		mu 1 3 3634 3635 3636
		mc 0 3 5070 5071 5073
		f 3 -4359 4360 4361
		mu 0 3 3636 3635 3637
		mu 1 3 3636 3635 3637
		mc 0 3 5074 5072 5075
		f 3 4362 4363 4364
		mu 0 3 3638 3639 3640
		mu 1 3 3638 3639 3640
		mc 0 3 5076 5077 5079
		f 3 -4364 4365 4366
		mu 0 3 3640 3639 3641
		mu 1 3 3640 3639 3641
		mc 0 3 5080 5078 5081
		f 3 4367 4368 4369
		mu 0 3 3642 3643 3644
		mu 1 3 3642 3643 3644
		mc 0 3 5082 5083 5085
		f 3 -4369 4370 4371
		mu 0 3 3644 3643 3645
		mu 1 3 3644 3643 3645
		mc 0 3 5086 5084 5087
		f 3 4372 4373 4374
		mu 0 3 3646 3647 3648
		mu 1 3 3646 3647 3648
		mc 0 3 5088 5089 5091
		f 3 -4374 4375 4376
		mu 0 3 3648 3647 3649
		mu 1 3 3648 3647 3649
		mc 0 3 5092 5090 5093
		f 3 4377 4378 4379
		mu 0 3 3650 3651 3652
		mu 1 3 3650 3651 3652
		mc 0 3 5094 5095 5097
		f 3 -4379 4380 4381
		mu 0 3 3652 3651 3653
		mu 1 3 3652 3651 3653
		mc 0 3 5098 5096 5099
		f 3 4382 4383 4384
		mu 0 3 3654 3655 3656
		mu 1 3 3654 3655 3656
		mc 0 3 5100 5101 5103
		f 3 -4384 4385 4386
		mu 0 3 3656 3655 3657
		mu 1 3 3656 3655 3657
		mc 0 3 5104 5102 5105
		f 3 4387 4388 4389
		mu 0 3 3658 3659 3660
		mu 1 3 3658 3659 3660
		mc 0 3 5106 5107 5109
		f 3 -4389 4390 4391
		mu 0 3 3660 3659 3661
		mu 1 3 3660 3659 3661
		mc 0 3 5110 5108 5111
		f 3 4392 4393 4394
		mu 0 3 3662 3663 3664
		mu 1 3 3662 3663 3664
		mc 0 3 5112 5113 5115
		f 3 -4394 4395 4396
		mu 0 3 3664 3663 3665
		mu 1 3 3664 3663 3665
		mc 0 3 5116 5114 5117
		f 3 4397 4398 4399
		mu 0 3 3666 3667 3668
		mu 1 3 3666 3667 3668
		mc 0 3 5118 5119 5121
		f 3 -4399 4400 4401
		mu 0 3 3668 3667 3669
		mu 1 3 3668 3667 3669
		mc 0 3 5122 5120 5123
		f 3 4402 4403 4404
		mu 0 3 3670 3671 3672
		mu 1 3 3670 3671 3672
		mc 0 3 5124 5125 5127
		f 3 -4404 4405 4406
		mu 0 3 3672 3671 3673
		mu 1 3 3672 3671 3673
		mc 0 3 5128 5126 5129
		f 3 4407 4408 4409
		mu 0 3 3674 3675 3676
		mu 1 3 3674 3675 3676
		mc 0 3 5130 5131 5133
		f 3 -4409 4410 4411
		mu 0 3 3676 3675 3677
		mu 1 3 3676 3675 3677
		mc 0 3 5134 5132 5135
		f 3 4412 4413 4414
		mu 0 3 3678 3679 3680
		mu 1 3 3678 3679 3680
		mc 0 3 5136 5137 5139
		f 3 -4414 4415 4416
		mu 0 3 3680 3679 3681
		mu 1 3 3680 3679 3681
		mc 0 3 5140 5138 5141
		f 3 4417 4418 4419
		mu 0 3 3682 3683 3684
		mu 1 3 3682 3683 3684
		mc 0 3 5142 5143 5145
		f 3 -4419 4420 4421
		mu 0 3 3684 3683 3685
		mu 1 3 3684 3683 3685
		mc 0 3 5146 5144 5147
		f 3 4422 4423 4424
		mu 0 3 3686 3687 3688
		mu 1 3 3686 3687 3688
		mc 0 3 5148 5149 5151
		f 3 -4424 4425 4426
		mu 0 3 3688 3687 3689
		mu 1 3 3688 3687 3689
		mc 0 3 5152 5150 5153
		f 3 4427 4428 4429
		mu 0 3 3690 3691 3692
		mu 1 3 3690 3691 3692
		mc 0 3 5154 5155 5157
		f 3 -4429 4430 4431
		mu 0 3 3692 3691 3693
		mu 1 3 3692 3691 3693
		mc 0 3 5158 5156 5159
		f 3 4432 4433 4434
		mu 0 3 3694 3695 3696
		mu 1 3 3694 3695 3696
		mc 0 3 5160 5161 5163
		f 3 -4434 4435 4436
		mu 0 3 3696 3695 3697
		mu 1 3 3696 3695 3697
		mc 0 3 5164 5162 5165
		f 3 4437 4438 4439
		mu 0 3 3698 3699 3700
		mu 1 3 3698 3699 3700
		mc 0 3 5166 5167 5169
		f 3 -4439 4440 4441
		mu 0 3 3700 3699 3701
		mu 1 3 3700 3699 3701
		mc 0 3 5170 5168 5171
		f 3 4442 4443 4444
		mu 0 3 3702 3703 3704
		mu 1 3 3702 3703 3704
		mc 0 3 5172 5173 5175
		f 3 -4444 4445 4446
		mu 0 3 3704 3703 3705
		mu 1 3 3704 3703 3705
		mc 0 3 5176 5174 5177
		f 3 4447 4448 4449
		mu 0 3 3706 3707 3708
		mu 1 3 3706 3707 3708
		mc 0 3 5178 5179 5181
		f 3 -4449 4450 4451
		mu 0 3 3708 3707 3709
		mu 1 3 3708 3707 3709
		mc 0 3 5182 5180 5183
		f 3 4452 4453 4454
		mu 0 3 3710 3711 3712
		mu 1 3 3710 3711 3712
		mc 0 3 5184 5185 5187
		f 3 -4454 4455 4456
		mu 0 3 3712 3711 3713
		mu 1 3 3712 3711 3713
		mc 0 3 5188 5186 5189
		f 3 4457 4458 4459
		mu 0 3 3714 3715 3716
		mu 1 3 3714 3715 3716
		mc 0 3 5190 5191 5193
		f 3 -4459 4460 4461
		mu 0 3 3716 3715 3717
		mu 1 3 3716 3715 3717
		mc 0 3 5194 5192 5195
		f 3 4462 4463 4464
		mu 0 3 3718 3719 3720
		mu 1 3 3718 3719 3720
		mc 0 3 5196 5197 5199
		f 3 -4464 4465 4466
		mu 0 3 3720 3719 3721
		mu 1 3 3720 3719 3721
		mc 0 3 5200 5198 5201
		f 3 4467 4468 4469
		mu 0 3 3722 3723 3724
		mu 1 3 3722 3723 3724
		mc 0 3 5202 5203 5205
		f 3 -4469 4470 4471
		mu 0 3 3724 3723 3725
		mu 1 3 3724 3723 3725
		mc 0 3 5206 5204 5207
		f 3 4472 4473 4474
		mu 0 3 3726 3727 3728
		mu 1 3 3726 3727 3728
		mc 0 3 5208 5209 5211
		f 3 -4474 4475 4476
		mu 0 3 3728 3727 3729
		mu 1 3 3728 3727 3729
		mc 0 3 5212 5210 5213
		f 3 4477 4478 4479
		mu 0 3 3730 3731 3732
		mu 1 3 3730 3731 3732
		mc 0 3 5214 5215 5217
		f 3 -4479 4480 4481
		mu 0 3 3732 3731 3733
		mu 1 3 3732 3731 3733
		mc 0 3 5218 5216 5219
		f 3 4482 4483 4484
		mu 0 3 3734 3735 3736
		mu 1 3 3734 3735 3736
		mc 0 3 5220 5221 5223
		f 3 -4484 4485 4486
		mu 0 3 3736 3735 3737
		mu 1 3 3736 3735 3737
		mc 0 3 5224 5222 5225
		f 3 4487 4488 4489
		mu 0 3 3738 3739 3740
		mu 1 3 3738 3739 3740
		mc 0 3 5226 5227 5229
		f 3 -4489 4490 4491
		mu 0 3 3740 3739 3741
		mu 1 3 3740 3739 3741
		mc 0 3 5230 5228 5231
		f 3 4492 4493 4494
		mu 0 3 3742 3743 3744
		mu 1 3 3742 3743 3744
		mc 0 3 5232 5233 5235
		f 3 -4494 4495 4496
		mu 0 3 3744 3743 3745
		mu 1 3 3744 3743 3745
		mc 0 3 5236 5234 5237
		f 3 4497 4498 4499
		mu 0 3 3746 3747 3748
		mu 1 3 3746 3747 3748
		mc 0 3 5238 5239 5241
		f 3 -4499 4500 4501
		mu 0 3 3748 3747 3749
		mu 1 3 3748 3747 3749
		mc 0 3 5242 5240 5243
		f 3 4502 4503 4504
		mu 0 3 3750 3751 3752
		mu 1 3 3750 3751 3752
		mc 0 3 5244 5245 5247
		f 3 -4504 4505 4506
		mu 0 3 3752 3751 3753
		mu 1 3 3752 3751 3753
		mc 0 3 5248 5246 5249
		f 3 4507 4508 4509
		mu 0 3 3754 3755 3756
		mu 1 3 3754 3755 3756
		mc 0 3 5250 5251 5253
		f 3 -4509 4510 4511
		mu 0 3 3756 3755 3757
		mu 1 3 3756 3755 3757
		mc 0 3 5254 5252 5255
		f 3 4512 4513 4514
		mu 0 3 3758 3759 3760
		mu 1 3 3758 3759 3760
		mc 0 3 5256 5257 5259
		f 3 -4514 4515 4516
		mu 0 3 3760 3759 3761
		mu 1 3 3760 3759 3761
		mc 0 3 5260 5258 5261
		f 3 4517 4518 4519
		mu 0 3 3762 3763 3764
		mu 1 3 3762 3763 3764
		mc 0 3 5262 5263 5265
		f 3 -4519 4520 4521
		mu 0 3 3764 3763 3765
		mu 1 3 3764 3763 3765
		mc 0 3 5266 5264 5267
		f 3 4522 4523 4524
		mu 0 3 3766 3767 3768
		mu 1 3 3766 3767 3768
		mc 0 3 5268 5269 5271
		f 3 -4524 4525 4526
		mu 0 3 3768 3767 3769
		mu 1 3 3768 3767 3769
		mc 0 3 5272 5270 5273
		f 3 4527 4528 4529
		mu 0 3 3770 3771 3772
		mu 1 3 3770 3771 3772
		mc 0 3 5274 5275 5277
		f 3 -4529 4530 4531
		mu 0 3 3772 3771 3773
		mu 1 3 3772 3771 3773
		mc 0 3 5278 5276 5279
		f 3 4532 4533 4534
		mu 0 3 3774 3775 3776
		mu 1 3 3774 3775 3776
		mc 0 3 5280 5281 5283
		f 3 -4534 4535 4536
		mu 0 3 3776 3775 3777
		mu 1 3 3776 3775 3777
		mc 0 3 5284 5282 5285
		f 3 4537 4538 4539
		mu 0 3 3778 3779 3780
		mu 1 3 3778 3779 3780
		mc 0 3 5286 5287 5289
		f 3 4540 4541 -4539
		mu 0 3 3779 3781 3780
		mu 1 3 3779 3781 3780
		mc 0 3 5288 5291 5290
		f 3 4542 4543 4544
		mu 0 3 3782 3783 3784
		mu 1 3 3782 3783 3784
		mc 0 3 5292 5293 5295
		f 3 -4544 4545 4546
		mu 0 3 3784 3783 3785
		mu 1 3 3784 3783 3785
		mc 0 3 5296 5294 5298
		f 3 4547 -4547 4548
		mu 0 3 3786 3784 3785
		mu 1 3 3786 3784 3785
		mc 0 3 5300 5297 5299
		f 3 4549 4550 4551
		mu 0 3 3787 3788 3789
		mu 1 3 3787 3788 3789
		mc 0 3 5301 5302 5304
		f 3 -4551 4552 4553
		mu 0 3 3789 3788 3790
		mu 1 3 3789 3788 3790
		mc 0 3 5305 5303 5307
		f 3 -4554 4554 4555
		mu 0 3 3789 3790 3791
		mu 1 3 3789 3790 3791
		mc 0 3 5306 5308 5310
		f 3 -4555 4556 4557
		mu 0 3 3791 3790 3792
		mu 1 3 3791 3790 3792
		mc 0 3 5311 5309 5312
		f 3 4558 4559 4560
		mu 0 3 3793 3794 3795
		mu 1 3 3793 3794 3795
		mc 0 3 5313 5314 5316
		f 3 -4560 4561 4562
		mu 0 3 3795 3794 3796
		mu 1 3 3795 3794 3796
		mc 0 3 5317 5315 5319
		f 3 -4563 4563 4564
		mu 0 3 3795 3796 3797
		mu 1 3 3795 3796 3797
		mc 0 3 5318 5320 5322
		f 3 -4564 4565 4566
		mu 0 3 3797 3796 3798
		mu 1 3 3797 3796 3798
		mc 0 3 5323 5321 5324
		f 3 4567 4568 4569
		mu 0 3 3799 3800 3801
		mu 1 3 3799 3800 3801
		mc 0 3 5325 5327 5328
		f 3 -4570 4570 4571
		mu 0 3 3799 3801 3802
		mu 1 3 3799 3801 3802
		mc 0 3 5326 5329 5331
		f 3 -4571 4572 4573
		mu 0 3 3802 3801 3803
		mu 1 3 3802 3801 3803
		mc 0 3 5332 5330 5333
		f 3 4574 4575 4576
		mu 0 3 3804 3805 3806
		mu 1 3 3804 3805 3806
		mc 0 3 5334 5335 5337
		f 3 4577 4578 -4576
		mu 0 3 3805 3807 3806
		mu 1 3 3805 3807 3806
		mc 0 3 5336 5340 5338
		f 3 -4579 4579 4580
		mu 0 3 3806 3807 3808
		mu 1 3 3806 3807 3808
		mc 0 3 5339 5341 5342
		f 3 4581 4582 4583
		mu 0 3 3809 3810 3811
		mu 1 3 3809 3810 3811
		mc 0 3 5343 5346 5348
		f 3 4584 -4582 4585
		mu 0 3 3812 3810 3809
		mu 1 3 3812 3810 3809
		mc 0 3 5349 5347 5344
		f 3 4586 -4586 4587
		mu 0 3 3813 3812 3809
		mu 1 3 3813 3812 3809
		mc 0 3 5352 5350 5345
		f 3 4588 -4587 4589
		mu 0 3 3814 3812 3813
		mu 1 3 3814 3812 3813
		mc 0 3 5355 5351 5353
		f 3 4590 -4590 4591
		mu 0 3 3815 3814 3813
		mu 1 3 3815 3814 3813
		mc 0 3 5358 5356 5354
		f 3 4592 -4591 4593
		mu 0 3 3816 3814 3815
		mu 1 3 3816 3814 3815
		mc 0 3 5360 5357 5359
		f 3 4594 4595 4596
		mu 0 3 3817 3818 3819
		mu 1 3 3817 3818 3819
		mc 0 3 5361 5363 5366
		f 3 4597 -4595 4598
		mu 0 3 3820 3818 3817
		mu 1 3 3820 3818 3817
		mc 0 3 5367 5364 5362
		f 3 4599 4600 -4598
		mu 0 3 3820 3821 3818
		mu 1 3 3820 3821 3818
		mc 0 3 5368 5370 5365
		f 3 4601 -4600 4602
		mu 0 3 3822 3821 3820
		mu 1 3 3822 3821 3820
		mc 0 3 5373 5371 5369
		f 3 -4602 4603 4604
		mu 0 3 3821 3822 3823
		mu 1 3 3821 3822 3823
		mc 0 3 5372 5374 5376
		f 3 -4604 4605 4606
		mu 0 3 3823 3822 3824
		mu 1 3 3823 3822 3824
		mc 0 3 5377 5375 5378
		f 3 4607 4608 4609
		mu 0 3 3825 3826 3827
		mu 1 3 3825 3826 3827
		mc 0 3 5379 5380 5383
		f 3 -4609 4610 4611
		mu 0 3 3827 3826 3828
		mu 1 3 3827 3826 3828
		mc 0 3 5384 5381 5385
		f 3 4612 4613 -4611
		mu 0 3 3826 3829 3828
		mu 1 3 3826 3829 3828
		mc 0 3 5382 5388 5386
		f 3 -4614 4614 4615
		mu 0 3 3828 3829 3830
		mu 1 3 3828 3829 3830
		mc 0 3 5387 5389 5390
		f 3 4616 4617 4618
		mu 0 3 3831 3832 3833
		mu 1 3 3831 3832 3833
		mc 0 3 5391 5394 5396
		f 3 4619 -4617 4620
		mu 0 3 3834 3832 3831
		mu 1 3 3834 3832 3831
		mc 0 3 5397 5395 5392
		f 3 4621 -4621 4622
		mu 0 3 3835 3834 3831
		mu 1 3 3835 3834 3831
		mc 0 3 5400 5398 5393
		f 3 4623 -4622 4624
		mu 0 3 3836 3834 3835
		mu 1 3 3836 3834 3835
		mc 0 3 5402 5399 5401;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr -s 2 ".pd";
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".pd[1]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ik_ref";
	rename -uid "A4A7FC3B-4BA3-C3BE-1713-D481B801C4AE";
	setAttr ".v" no;
createNode joint -n "UpperArm_L_ik" -p "ik_ref";
	rename -uid "52E12722-4A38-82B7-71B1-909F9C15AF24";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.046875946896754658 0.56613352176573795 -4.732634876986344 ;
	setAttr ".radi" 1.5;
createNode joint -n "lowerarm_l_ik" -p "UpperArm_L_ik";
	rename -uid "3D56D301-45E6-F562-1770-4F81AE7759F5";
	setAttr ".t" -type "double3" 33.947402917349777 -0.14490677425763465 -0.14362803424856807 ;
	setAttr ".r" -type "double3" 4.5207057342997828e-12 -3.1126141070152201e-09 3.2141658455375804e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.1954694928915403e-08 -4.6748381634256457 4.7324004432730593 ;
	setAttr ".radi" 1.5;
createNode joint -n "Hand_L_ik" -p "lowerarm_l_ik";
	rename -uid "2FAFD328-4634-7E53-A81F-0586160AB48B";
	setAttr ".t" -type "double3" 27.114528639707849 -2.6490425852898625e-07 -0.038136684769790818 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.7919841526161466e-08 4.1067815614643504 -5.6524076750016584e-07 ;
	setAttr ".radi" 1.5;
createNode ikEffector -n "effector1" -p "lowerarm_l_ik";
	rename -uid "49ACF522-4790-B375-41ED-77890511D0E3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "UpperArm_L_ik_parentConstraint1" -p "UpperArm_L_ik";
	rename -uid "25301B7C-4DC6-B5DC-515B-C58AEFFF5F24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_lW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 13.197872161865229 -2.8421709430404007e-14 
		-6.2172489379008766e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.4523670882513358 -27.333155590172726 -4.5848799419727415 ;
	setAttr ".lr" -type "double3" -1.7698942582012598e-06 -4.8434378245961879e-09 -4.4415213488202245e-08 ;
	setAttr ".rst" -type "double3" 19.09892258257922 139.03926587105889 -4.8422721466146452 ;
	setAttr ".rsrr" -type "double3" -180.00000170560187 180 180 ;
	setAttr -k on ".w0";
createNode joint -n "UpperArm_R_ik" -p "ik_ref";
	rename -uid "D0DED66E-424A-8364-A6C7-F5A9D0CE1FB4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.95312405310324 -0.56613352176572362 4.7326348769863413 ;
	setAttr ".radi" 1.5;
createNode joint -n "lowerarm_r_ik" -p "UpperArm_R_ik";
	rename -uid "D0521B89-473C-E7FD-BEC5-79B4D242EBB9";
	setAttr ".t" -type "double3" -33.947460137810346 0.14475832890690299 0.143627974647349 ;
	setAttr ".r" -type "double3" 4.5168644263212541e-12 -3.1101501602712511e-09 3.2114587532865718e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.1954673842902393e-08 -4.6748381634256511 4.7324004432730549 ;
	setAttr ".radi" 1.5;
createNode joint -n "Hand_R_ik" -p "lowerarm_r_ik";
	rename -uid "FBA6A85B-45F4-937F-5506-28AF895985EC";
	setAttr ".t" -type "double3" -27.114490492735229 2.6490383220334479e-07 0.038136345768046809 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.7919826233401599e-08 4.1067815614643521 -5.6524076590071087e-07 ;
	setAttr ".radi" 1.5;
createNode ikEffector -n "effector2" -p "lowerarm_r_ik";
	rename -uid "4743C4A5-4611-70FF-BCA0-A48C7E51D4B7";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "UpperArm_R_ik_parentConstraint1" -p "UpperArm_R_ik";
	rename -uid "F8F47FA5-42F4-9520-3B1D-78A07C67F5E6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "clavicle_rW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -13.197860717780561 0.00064733915499459727 
		4.7353556613671799e-06 ;
	setAttr ".tg[0].tor" -type "double3" 2.4511088975464941 -27.333197658610242 -4.584930124310163 ;
	setAttr ".lr" -type "double3" -0.0012830025065644186 -4.3942268282176775e-05 -4.2783072942207091e-05 ;
	setAttr ".rst" -type "double3" -19.098899020422536 139.03898137907373 -4.8422690312187768 ;
	setAttr ".rsrr" -type "double3" -180.0012829382143 180.00004393742478 -180.00004273865775 ;
	setAttr -k on ".w0";
createNode joint -n "Thigh_L_ik" -p "ik_ref";
	rename -uid "002B6844-4A67-5EFF-74BA-06B5621EC615";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.5385826366639928e-06 2.8595813690039643e-06 91.818933963775649 ;
	setAttr ".radi" 1.5;
createNode joint -n "calf_l_ik" -p "Thigh_L_ik";
	rename -uid "3D970427-48A4-3889-EDD5-A7A34D7BBD51";
	setAttr ".t" -type "double3" -39.930914891876483 -3.8201279869198856e-05 -9.7699626167013776e-15 ;
	setAttr ".r" -type "double3" 2.717367170152411e-18 8.7193123448428852e-13 -1.0802843354948908e-12 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 80.298355102539972 -2.4931213855743573 -1.3928487518177046 ;
	setAttr ".radi" 1.5;
createNode joint -n "Foot_L_ik" -p "calf_l_ik";
	rename -uid "B9A1B4DE-4930-8C10-8C1C-41B9F4066111";
	setAttr ".t" -type "double3" -37.71232155439278 1.3187889560839494e-05 -8.421791145352131e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -174.92491191721854 8.2682770452920575 -60.831779568066636 ;
	setAttr ".radi" 1.5;
createNode ikEffector -n "effector3" -p "calf_l_ik";
	rename -uid "BF1C4A14-4704-3249-C635-A3803E6F7491";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Thigh_L_ik_parentConstraint1" -p "Thigh_L_ik";
	rename -uid "CE03E252-4821-29C4-253B-90826919FD11";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PelvisW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.115778446197524 -2.6920750141143852 9.8967103958129901 ;
	setAttr ".tg[0].tor" -type "double3" -90.000007629394517 1.8189339637756514 8.592861175537104 ;
	setAttr ".lr" -type "double3" -9.3515088686706848e-15 6.389572278340111e-15 1.2722218912839168e-14 ;
	setAttr ".rst" -type "double3" 9.8967103958129901 83.155791676275371 -2.0469320594907825 ;
	setAttr ".rsrr" -type "double3" -9.3515088686706848e-15 6.389572278340111e-15 1.2722218912839168e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Thigh_R_ik" -p "ik_ref";
	rename -uid "42F15B36-4010-FCE3-E65D-3CBD5C3BD0FB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999234033487 9.5319378112926986e-07 -91.818933963775649 ;
	setAttr ".radi" 1.5;
createNode joint -n "calf_r_ik" -p "Thigh_R_ik";
	rename -uid "C41622EA-46B9-2CF9-B12B-FFA9AFC8412B";
	setAttr ".t" -type "double3" 39.930899633088814 1.5101544725837357e-07 6.6430523926186424e-07 ;
	setAttr ".r" -type "double3" 1.0314178578395368e-21 -1.1620756584253411e-13 1.4399070803685462e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 80.298355102539958 -2.4931213855743395 -1.3928487518177388 ;
	setAttr ".radi" 1.5;
createNode joint -n "Foot_R_ik" -p "calf_r_ik";
	rename -uid "D8B0C9C0-420C-09D9-B482-65BDDED020E2";
	setAttr ".t" -type "double3" 37.712348257270932 5.9973506871813242e-07 2.1387882220835763e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -174.92491176324947 8.2682769867562751 -60.831778606810282 ;
	setAttr ".radi" 1.5;
createNode ikEffector -n "effector4" -p "calf_r_ik";
	rename -uid "41145C6C-436D-19F3-F5A2-A2B373F95B33";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Thigh_R_ik_parentConstraint1" -p "Thigh_R_ik";
	rename -uid "E58D07ED-415A-67A6-A76B-9090B39B236C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PelvisW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.1157684326172017 -2.692069768905645 -9.896705627441408 ;
	setAttr ".tg[0].tor" -type "double3" -89.996690820046837 1.8190040577524906 -171.40709680979745 ;
	setAttr ".lr" -type "double3" 0.0033155967925513714 -3.9133921821163367e-05 7.0093972021019563e-05 ;
	setAttr ".rst" -type "double3" -9.896705627441408 83.155802361150123 -2.0469283693109954 ;
	setAttr ".rsrr" -type "double3" 0.0033155967925513714 -3.9133921821163367e-05 7.0093972021019563e-05 ;
	setAttr -k on ".w0";
createNode transform -n "main_ctrl_offset";
	rename -uid "451CB163-4472-860A-F20A-06A9DC48BE54";
createNode transform -n "main_ctrl" -p "main_ctrl_offset";
	rename -uid "09E6DB40-49B7-003E-73F8-AD9C1E07A595";
createNode nurbsCurve -n "main_ctrlShape" -p "main_ctrl";
	rename -uid "679E3736-462C-F86D-45F6-A2A5FFAC5F31";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 10.198039027185569 14.198039027185569 22.68332040142414 31.168601775662708
		 35.168601775662708 45.366640802848281 55.564679830033853 59.564679830033853 68.049961204272421
		 76.535242578510989 80.535242578510989 90.733281605696561 100.93132063288213 104.93132063288213
		 113.4166020071207 121.90188338135927 125.90188338135927 136.09992240854484 146.2979614357304
		 150.2979614357304 158.78324280996898 167.26852418420756 171.26852418420756 181.46656321139312
		
		25
		-20 0 20
		-70 0 10
		-70 0 30
		-100 0 0
		-70 0 -30
		-70 0 -10
		-20 0 -20
		-10 0 -70
		-30 0 -70
		0 0 -100
		30 0 -70
		10 0 -70
		20 0 -20
		70 0 -10
		70 0 -30
		100 0 0
		70 0 30
		70 0 10
		20 0 20
		10 0 70
		30 0 70
		0 0 100
		-30 0 70
		-10 0 70
		-20 0 20
		;
createNode transform -n "l_arm_ik" -p "main_ctrl";
	rename -uid "66FD5368-4F17-BAEC-EEBC-3E90A565F5E4";
createNode transform -n "Hand_L_ctrl_offset" -p "l_arm_ik";
	rename -uid "8426F05C-4E4E-2DBC-DAAB-3989B6F88021";
	setAttr ".t" -type "double3" 79.96319229449557 136.09411865159004 -3.4174246537918807 ;
	setAttr ".r" -type "double3" -5.7134560000964881e-06 1.4087583604338349e-05 -2.805249837236e-06 ;
createNode transform -n "Hand_L_ctrl" -p "Hand_L_ctrl_offset";
	rename -uid "AA249D56-4DBD-47DD-7EB3-159A4802A1CC";
	setAttr ".rp" -type "double3" 0 5.6843418860808015e-14 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 5.6843418860808015e-14 -8.8817841970012523e-16 ;
createNode nurbsCurve -n "curveShape1" -p "Hand_L_ctrl";
	rename -uid "55559BAE-4F8F-0520-3C4F-9787480F5ADA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-8 8 8
		-8 -8 8
		8 -8 8
		8 8 8
		-8 8 8
		-8 8 -8
		-8 -8 -8
		-8 -8 8
		8 -8 8
		8 -8 -8
		8 8 -8
		8 8 8
		8 8 -8
		-8 8 -8
		-8 -8 -8
		8 -8 -8
		;
createNode ikHandle -n "l_arm_ikHandle" -p "Hand_L_ctrl";
	rename -uid "9652821C-4A34-0C37-AEC5-5E80C07DFE20";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.9436899846332381e-10 -2.4961161670944421e-07 -5.3304415104094005e-08 ;
	setAttr ".r" -type "double3" 5.7134553103566435e-06 -1.4087583884073905e-05 2.8052484324416927e-06 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "l_arm_ikHandle_poleVectorConstraint1" -p "l_arm_ikHandle";
	rename -uid "883E798E-4C41-2256-A4FF-ACBF75BDA657";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "l_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 33.008325747430042 -34.494843507099219 -31.164253804106835 ;
	setAttr -k on ".w0";
createNode transform -n "l_pv_ctrl_offset" -p "l_arm_ik";
	rename -uid "9E0920D7-4677-9CE0-E95C-FCB506A7D8FF";
	setAttr ".t" -type "double3" 52.107238978610091 104.54441764018836 -36.006530626855003 ;
createNode transform -n "l_pv_ctrl" -p "l_pv_ctrl_offset";
	rename -uid "4DC224FD-4461-BDED-E02A-D38895576B55";
createNode nurbsCurve -n "curveShape3" -p "l_pv_ctrl";
	rename -uid "1EA97653-4A0C-3729-ACEC-38A89837125E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 8 12 16 24 28 32 40
		8
		8 0 0
		-8 0 0
		0 0 0
		0 0 -8
		0 0 8
		0 0 0
		0 8 0
		0 -8 0
		;
createNode transform -n "r_arm_ik" -p "main_ctrl";
	rename -uid "FF5784B6-4317-905C-778A-6D98D33AE744";
createNode transform -n "Hand_R_ctrl_offset" -p "r_arm_ik";
	rename -uid "3CFA4A4F-440F-99A0-5580-B8BD7D306E26";
	setAttr ".t" -type "double3" -79.963199929266153 136.09397712846868 -3.4174246126991124 ;
	setAttr ".r" -type "double3" 179.99999254436037 -1.4209908136621669e-05 3.3707021582346779e-06 ;
createNode transform -n "Hand_R_ctrl" -p "Hand_R_ctrl_offset";
	rename -uid "9EF1A7D6-4FBB-1976-C81B-A69F008E625F";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 -4.4408920985006262e-16 ;
createNode nurbsCurve -n "curveShape2" -p "Hand_R_ctrl";
	rename -uid "87F2AAEA-4B88-4AD8-B223-AD8EBE0B2AAF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-8 8 8
		-8 -8 8
		8 -8 8
		8 8 8
		-8 8 8
		-8 8 -8
		-8 -8 -8
		-8 -8 8
		8 -8 8
		8 -8 -8
		8 8 -8
		8 8 8
		8 8 -8
		-8 8 -8
		-8 -8 -8
		8 -8 -8
		;
createNode ikHandle -n "r_arm_ikHandle" -p "Hand_R_ctrl";
	rename -uid "14FB909E-4157-C6EB-0147-D7B3A9BF16D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" -179.99999254436122 -1.4209908575235688e-05 3.3707003091639279e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999967 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "r_arm_ikHandle_poleVectorConstraint1" -p "r_arm_ikHandle";
	rename -uid "94AB2154-43E4-F79D-30D3-EBA1499C5411";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "r_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -33.008110737925072 34.494557741760545 31.164257897926522 ;
	setAttr -k on ".w0";
createNode transform -n "r_pv_ctrl_offset" -p "r_arm_ik";
	rename -uid "1FB69FB3-456D-07F2-5B07-658FF3935D86";
	setAttr ".t" -type "double3" -52.107 104.54441764018836 -36.006530626855003 ;
createNode transform -n "r_pv_ctrl" -p "r_pv_ctrl_offset";
	rename -uid "084DA92D-484B-CC29-9BFE-79940612D17E";
createNode nurbsCurve -n "curveShape3" -p "r_pv_ctrl";
	rename -uid "50289D82-4589-863D-910C-8F90A5EA05FD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 8 12 16 24 28 32 40
		8
		8 0 0
		-8 0 0
		0 0 0
		0 0 -8
		0 0 8
		0 0 0
		0 8 0
		0 -8 0
		;
createNode transform -n "l_leg_ik" -p "main_ctrl";
	rename -uid "D279DEDB-43E3-43CE-3A60-0696AEB363F5";
createNode transform -n "l_leg_ctrl_offset" -p "l_leg_ik";
	rename -uid "6DCE0E4D-4C8E-D47E-A76C-3FBADFC7901C";
	setAttr ".t" -type "double3" 11.444295883178711 5.5694141387939453 -3.6873946189880371 ;
createNode transform -n "l_leg_ctrl" -p "l_leg_ctrl_offset";
	rename -uid "614AF7DC-4027-5B27-487F-2E9669AD4C69";
	setAttr ".s" -type "double3" 4.330637180536308 4.330637180536308 4.330637180536308 ;
createNode nurbsCurve -n "curveShape5" -p "l_leg_ctrl";
	rename -uid "3305E4AD-429F-5562-0349-DC861A66A142";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-1.3759279659405119 0.099427830883936724 5.007899233964979
		-1.3759279659405119 -1.2860495826861733 5.007899233964979
		1.3759279659405119 -1.2860495826861733 5.007899233964979
		1.3759279659405119 0.099427830883936724 5.007899233964979
		-1.3759279659405119 0.099427830883936724 5.007899233964979
		-1.3759279659405119 2 -2
		-1.3759279659405119 -1.2860495826861733 -2
		-1.3759279659405119 -1.2860495826861733 5.007899233964979
		1.3759279659405119 -1.2860495826861733 5.007899233964979
		1.3759279659405119 -1.2860495826861733 -2
		1.3759279659405119 2 -2
		1.3759279659405119 0.099427830883936724 5.007899233964979
		1.3759279659405119 2 -2
		-1.3759279659405119 2 -2
		-1.3759279659405119 -1.2860495826861733 -2
		1.3759279659405119 -1.2860495826861733 -2
		;
createNode ikHandle -n "l_leg_ikHandle" -p "l_leg_ctrl";
	rename -uid "23F51767-423E-E5F4-E82A-C0A02F1F3827";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.5408201339353127e-09 3.9241158544811583e-08 -1.6066116215185389e-09 ;
	setAttr ".s" -type "double3" 0.23091290226168512 0.23091290226168512 0.23091290226168512 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "l_leg_ikHandle_poleVectorConstraint1" -p "l_leg_ikHandle";
	rename -uid "FB8E9BC1-41E5-0488-B7D4-F58E4299E50F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "l_leg_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 12.089914499378319 -9.4268888106634758 21.106394451747718 ;
	setAttr -k on ".w0";
createNode transform -n "l_leg_pv_ctrl_offset" -p "l_leg_ik";
	rename -uid "02161A4D-491E-AEFF-60D2-C2B9B72A1AC1";
	setAttr ".t" -type "double3" 62.253743636325737 42.331356496034431 89.357204500313117 ;
createNode transform -n "l_leg_pv_ctrl" -p "l_leg_pv_ctrl_offset";
	rename -uid "C0F6EA61-4BA3-2DB0-44D7-4689A712A444";
createNode nurbsCurve -n "curveShape4" -p "l_leg_pv_ctrl";
	rename -uid "4F1381F5-4DFD-ED29-4751-2E84CB44C779";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 8 12 16 24 28 32 40
		8
		4 0 0
		-4 0 0
		0 0 0
		0 0 -4
		0 0 4
		0 0 0
		0 4 0
		0 -4 0
		;
createNode transform -n "r_leg_ik" -p "main_ctrl";
	rename -uid "70903BE7-4AD4-3052-25D1-02A7335292C7";
createNode transform -n "r_leg_ctrl_offset" -p "r_leg_ik";
	rename -uid "49128981-4DBE-024B-D149-5B8F62A28511";
	setAttr ".t" -type "double3" -11.444337844848633 5.5694141387939453 -3.6873946189880371 ;
createNode transform -n "r_leg_ctrl" -p "r_leg_ctrl_offset";
	rename -uid "6172B02D-4BAC-1DDA-5DC9-C9BFE1B25B66";
	setAttr ".s" -type "double3" 4.330637180536308 4.330637180536308 4.330637180536308 ;
createNode nurbsCurve -n "curveShape5" -p "r_leg_ctrl";
	rename -uid "A5D01545-4289-2376-CFF3-E2AD290EB13A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-1.3759279659405119 0.099427830883936724 5.007899233964979
		-1.3759279659405119 -1.2860495826861733 5.007899233964979
		1.3759279659405119 -1.2860495826861733 5.007899233964979
		1.3759279659405119 0.099427830883936724 5.007899233964979
		-1.3759279659405119 0.099427830883936724 5.007899233964979
		-1.3759279659405119 2 -2
		-1.3759279659405119 -1.2860495826861733 -2
		-1.3759279659405119 -1.2860495826861733 5.007899233964979
		1.3759279659405119 -1.2860495826861733 5.007899233964979
		1.3759279659405119 -1.2860495826861733 -2
		1.3759279659405119 2 -2
		1.3759279659405119 0.099427830883936724 5.007899233964979
		1.3759279659405119 2 -2
		-1.3759279659405119 2 -2
		-1.3759279659405119 -1.2860495826861733 -2
		1.3759279659405119 -1.2860495826861733 -2
		;
createNode ikHandle -n "r_leg_ikHandle" -p "r_leg_ctrl";
	rename -uid "53181B5F-4000-C334-C369-9095E7F323AC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.7491814158508987e-08 -2.5130945591200771e-07 -3.3532110588208042e-07 ;
	setAttr ".s" -type "double3" 0.23091290226168512 0.23091290226168512 0.23091290226168512 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "r_leg_ikHandle_poleVectorConstraint1" -p "r_leg_ikHandle";
	rename -uid "287BB7E3-4DF4-911F-2A31-FFB8D7C906CE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "r_leg_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -12.089974798136899 -9.4268912779389158 21.106393599637592 ;
	setAttr -k on ".w0";
createNode transform -n "r_leg_pv_ctrl_offset" -p "r_leg_ik";
	rename -uid "AA77F40E-40A2-1909-4081-D0B54387527C";
	setAttr ".t" -type "double3" -62.254 42.331356496034431 89.357204500313117 ;
createNode transform -n "r_leg_pv_ctrl" -p "r_leg_pv_ctrl_offset";
	rename -uid "FC26884C-4B39-BA09-60D1-E9B18D178B1A";
createNode nurbsCurve -n "curveShape4" -p "r_leg_pv_ctrl";
	rename -uid "F3652BEC-480B-4EAC-1D1B-E2A5EE72A9F2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 8 12 16 24 28 32 40
		8
		4 0 0
		-4 0 0
		0 0 0
		0 0 -4
		0 0 4
		0 0 0
		0 4 0
		0 -4 0
		;
createNode transform -n "cog_ctrl_offset" -p "main_ctrl";
	rename -uid "7D305C05-4F46-6C20-A706-9B9F69CEEC38";
	setAttr ".t" -type "double3" 0 87.62759880690156 -2.3336641155668537e-05 ;
createNode transform -n "cog_ctrl" -p "cog_ctrl_offset";
	rename -uid "22FA151D-4E91-4E19-3840-30BACB9CBB73";
createNode nurbsCurve -n "cog_ctrlShape" -p "cog_ctrl";
	rename -uid "C4099F9A-4215-B11E-9F16-14B6F4A77157";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-31.199999999999999 2 31.199999999999999
		-31.199999999999999 -2 31.199999999999999
		31.199999999999999 -2 31.199999999999999
		31.199999999999999 2 31.199999999999999
		-31.199999999999999 2 31.199999999999999
		-31.199999999999999 2 -31.199999999999999
		-31.199999999999999 -2 -31.199999999999999
		-31.199999999999999 -2 31.199999999999999
		31.199999999999999 -2 31.199999999999999
		31.199999999999999 -2 -31.199999999999999
		31.199999999999999 2 -31.199999999999999
		31.199999999999999 2 31.199999999999999
		31.199999999999999 2 -31.199999999999999
		-31.199999999999999 2 -31.199999999999999
		-31.199999999999999 -2 -31.199999999999999
		31.199999999999999 -2 -31.199999999999999
		;
createNode transform -n "spine_01_ctrl_offset" -p "cog_ctrl";
	rename -uid "C2ACB68B-4CC3-FAE6-6D8A-B88539E137E9";
	setAttr ".t" -type "double3" 5.2447971260630611e-15 10.27659912153392 -1.5528803338328285 ;
	setAttr ".r" -type "double3" -90.000000000000014 -2.8485202789306547 89.999999999999986 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "spine_01_ctrl" -p "spine_01_ctrl_offset";
	rename -uid "D90EE3D0-4C0C-28EE-2DC9-2F9BE91568B2";
createNode nurbsCurve -n "curveShape6" -p "spine_01_ctrl";
	rename -uid "6B24D958-4082-3399-2B60-3C8E994D6C59";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-2 24 24
		-2 -24 24
		2 -24 24
		2 24 24
		-2 24 24
		-2 24 -24
		-2 -24 -24
		-2 -24 24
		2 -24 24
		2 -24 -24
		2 24 -24
		2 24 24
		2 24 -24
		-2 24 -24
		-2 -24 -24
		2 -24 -24
		;
createNode transform -n "spine_02_ctrl_offset" -p "spine_01_ctrl";
	rename -uid "F2F71860-4FE4-2376-7656-A0AB6B6A41D7";
	setAttr ".t" -type "double3" 18.151166659454262 2.6645352591003757e-15 -4.2648601588131789e-15 ;
	setAttr ".r" -type "double3" -179.99999999999997 3.5311250384401269e-31 11.248364448547346 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "spine_02_ctrl" -p "spine_02_ctrl_offset";
	rename -uid "893759A7-4FFE-6357-C788-4186FD061E04";
	setAttr ".rp" -type "double3" 0 -3.5527136788005009e-15 3.1554436208840472e-30 ;
	setAttr ".sp" -type "double3" 0 -3.5527136788005009e-15 3.1554436208840472e-30 ;
createNode nurbsCurve -n "curveShape7" -p "spine_02_ctrl";
	rename -uid "C3A52247-44DF-ADB2-361E-C899623A34E9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-2 24 24
		-2 -24 24
		2 -24 24
		2 24 24
		-2 24 24
		-2 24 -24
		-2 -24 -24
		-2 -24 24
		2 -24 24
		2 -24 -24
		2 24 -24
		2 24 24
		2 24 -24
		-2 24 -24
		-2 -24 -24
		2 -24 -24
		;
createNode transform -n "spine_03_ctrl_offset" -p "spine_02_ctrl";
	rename -uid "C1D220C6-4F7F-2250-EE3F-F597A643D968";
	setAttr ".t" -type "double3" 17.903722536119844 0 5.9769410347820056e-15 ;
	setAttr ".r" -type "double3" 180 0 12.756361961364725 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "spine_03_ctrl" -p "spine_03_ctrl_offset";
	rename -uid "2EFF47D5-4E0C-D5DB-8A5A-81B9B3ECF465";
createNode nurbsCurve -n "curveShape8" -p "spine_03_ctrl";
	rename -uid "C67208C6-44D5-E03B-E7F4-BCA46C405FF8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-2 24 24
		-2 -24 24
		2 -24 24
		2 24 24
		-2 24 24
		-2 24 -24
		-2 -24 -24
		-2 -24 24
		2 -24 24
		2 -24 -24
		2 24 -24
		2 24 24
		2 24 -24
		-2 24 -24
		-2 -24 -24
		2 -24 -24
		;
createNode transform -n "clavicle_l_ctrl_offset" -p "spine_03_ctrl";
	rename -uid "E748ECAF-4C5A-171B-40FB-B5A18A50AC96";
	setAttr ".t" -type "double3" 5.8011720417532331 -4.1914472351732588 -7.447154045104976 ;
	setAttr ".r" -type "double3" -178.60136413574216 61.988342285156229 95.940658569335966 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "clavicle_l_ctrl" -p "clavicle_l_ctrl_offset";
	rename -uid "DA700BC4-4708-7293-9632-0E8634BF3237";
createNode nurbsCurve -n "curveShape10" -p "clavicle_l_ctrl";
	rename -uid "524977D2-47CF-DFC0-A8A5-4F88B30CA69F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 3.4641016151377544 6.9282032302755088 10.928203230275509 14.392304845413264
		 17.856406460551018 21.856406460551018 25.320508075688771 28.784609690826525 32.784609690826528
		 36.248711305964285 39.712812921102042 43.712812921102042
		13
		-1.9999999999999998 10.723996268726657 22.308199993532874
		1.7347234759768071e-16 12.723996268726655 20.308199993532874
		2 10.723996268726657 22.308199993532874
		-1.9999999999999998 10.723996268726657 22.308199993532874
		1.7347234759768071e-16 8.7239962687266566 20.308199993532874
		2 10.723996268726657 22.308199993532874
		2 10.723996268726657 18.308199993532874
		1.7347234759768071e-16 12.723996268726655 20.308199993532874
		-1.9999999999999998 10.723996268726657 18.308199993532874
		2 10.723996268726657 18.308199993532874
		1.7347234759768071e-16 8.7239962687266566 20.308199993532874
		-1.9999999999999998 10.723996268726657 18.308199993532874
		-1.9999999999999998 10.723996268726657 22.308199993532874
		;
createNode transform -n "clavicle_r_ctrl_offset" -p "spine_03_ctrl";
	rename -uid "8F2830A9-4FB4-5BBB-DB5E-C8ADC1414C98";
	setAttr ".t" -type "double3" 5.8015334842760353 -4.1914176712729745 7.4471502304077157 ;
	setAttr ".r" -type "double3" 1.3986358642578858 118.01165771484376 95.940658569335966 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
createNode transform -n "clavicle_r_ctrl" -p "clavicle_r_ctrl_offset";
	rename -uid "DB107367-4EF2-1826-87AE-EF9629B9A17E";
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 2.8421709430404007e-14 8.8817841970012523e-16 ;
createNode nurbsCurve -n "curveShape10" -p "clavicle_r_ctrl";
	rename -uid "15F039C4-444B-DC5F-91EF-C894617FA20A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 3.4641016151377544 6.9282032302755088 10.928203230275509 14.392304845413264
		 17.856406460551018 21.856406460551018 25.320508075688771 28.784609690826525 32.784609690826528
		 36.248711305964285 39.712812921102042 43.712812921102042
		13
		1.9999999999999998 -10.723996268726657 -22.308199993532874
		-1.7347234759768071e-16 -12.723996268726655 -20.308199993532874
		-2 -10.723996268726657 -22.308199993532874
		1.9999999999999998 -10.723996268726657 -22.308199993532874
		-1.7347234759768071e-16 -8.7239962687266566 -20.308199993532874
		-2 -10.723996268726657 -22.308199993532874
		-2 -10.723996268726657 -18.308199993532874
		-1.7347234759768071e-16 -12.723996268726655 -20.308199993532874
		1.9999999999999998 -10.723996268726657 -18.308199993532874
		-2 -10.723996268726657 -18.308199993532874
		-1.7347234759768071e-16 -8.7239962687266566 -20.308199993532874
		1.9999999999999998 -10.723996268726657 -18.308199993532874
		1.9999999999999998 -10.723996268726657 -22.308199993532874
		;
createNode transform -n "neck_01_ctrl_offset" -p "spine_03_ctrl";
	rename -uid "546C66AB-4CC0-5833-A77C-C590D7548801";
	setAttr ".t" -type "double3" 11.188966370944087 -5.3290705182007514e-15 -3.0757851761414e-15 ;
	setAttr ".r" -type "double3" 0 0 -4.7836804389953622 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "neck_01_ctrl" -p "neck_01_ctrl_offset";
	rename -uid "658E9270-4655-B930-AD0A-B08C09CC994A";
	setAttr ".rp" -type "double3" 0 0 6.3108872417680944e-30 ;
	setAttr ".sp" -type "double3" 0 0 6.3108872417680944e-30 ;
createNode nurbsCurve -n "curveShape11" -p "neck_01_ctrl";
	rename -uid "6BC40DB0-45E0-42FE-54EA-6281F9D8BC55";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-2 12.460498982945454 12.460498982945454
		-2 -12.460498982945454 12.460498982945454
		2 -12.460498982945454 12.460498982945454
		2 12.460498982945454 12.460498982945454
		-2 12.460498982945454 12.460498982945454
		-2 12.460498982945454 -12.460498982945454
		-2 -12.460498982945454 -12.460498982945454
		-2 -12.460498982945454 12.460498982945454
		2 -12.460498982945454 12.460498982945454
		2 -12.460498982945454 -12.460498982945454
		2 12.460498982945454 -12.460498982945454
		2 12.460498982945454 12.460498982945454
		2 12.460498982945454 -12.460498982945454
		-2 12.460498982945454 -12.460498982945454
		-2 -12.460498982945454 -12.460498982945454
		2 -12.460498982945454 -12.460498982945454
		;
createNode transform -n "head_ctrl_offset" -p "neck_01_ctrl";
	rename -uid "6E36C003-4ED9-AB62-5CF3-74AC6257C392";
	setAttr ".t" -type "double3" 12.164433936544043 -1.7763568394002505e-14 -7.4959114731786729e-15 ;
	setAttr ".r" -type "double3" 80.859801769256592 90 0 ;
createNode transform -n "head_ctrl" -p "head_ctrl_offset";
	rename -uid "29A4AF99-4853-41CE-1F10-4B946ECA3C22";
createNode nurbsCurve -n "curveShape12" -p "head_ctrl";
	rename -uid "7D0D59BB-4E42-213B-8BDB-7AA13160108C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-15.147461350830245 22.910456014216525 15.147461350830245
		-15.147461350830245 -7.3844666874439646 15.147461350830245
		15.147461350830245 -7.3844666874439646 15.147461350830245
		15.147461350830245 22.910456014216525 15.147461350830245
		-15.147461350830245 22.910456014216525 15.147461350830245
		-15.147461350830245 22.910456014216525 -15.147461350830245
		-15.147461350830245 -7.3844666874439646 -15.147461350830245
		-15.147461350830245 -7.3844666874439646 15.147461350830245
		15.147461350830245 -7.3844666874439646 15.147461350830245
		15.147461350830245 -7.3844666874439646 -15.147461350830245
		15.147461350830245 22.910456014216525 -15.147461350830245
		15.147461350830245 22.910456014216525 15.147461350830245
		15.147461350830245 22.910456014216525 -15.147461350830245
		-15.147461350830245 22.910456014216525 -15.147461350830245
		-15.147461350830245 -7.3844666874439646 -15.147461350830245
		15.147461350830245 -7.3844666874439646 -15.147461350830245
		;
createNode transform -n "Pelvis_ctrl_offset" -p "cog_ctrl";
	rename -uid "94FC7308-4A3A-8AEA-ADCC-9A982BE8EA3C";
	setAttr ".r" -type "double3" 90 8.5928640365600604 90 ;
createNode transform -n "Pelvis_ctrl" -p "Pelvis_ctrl_offset";
	rename -uid "AA154F32-4871-A40F-0AEA-568A52F2B71E";
createNode nurbsCurve -n "curveShape9" -p "Pelvis_ctrl";
	rename -uid "2B705071-4C53-976D-D46B-D0A38B0ED157";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
		16
		-2 24 24
		-2 -24 24
		2 -24 24
		2 24 24
		-2 24 24
		-2 24 -24
		-2 -24 -24
		-2 -24 24
		2 -24 24
		2 -24 -24
		2 24 -24
		2 24 24
		2 24 -24
		-2 24 -24
		-2 -24 -24
		2 -24 -24
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9E9A44AF-4E49-B18E-3E42-8C8337383BF7";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B862902A-4142-ED3B-7831-E6B8FA0CEC9F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "23F4FBF6-4EB6-096E-A097-CDB689D79149";
createNode displayLayerManager -n "layerManager";
	rename -uid "2B64CB9F-4F10-0D0E-32CC-62AA68C10538";
createNode displayLayer -n "defaultLayer";
	rename -uid "7D0EF98E-488C-EE8C-1F3C-9885BEAD690A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4B70ABB4-4D2D-B104-587B-2D9DEF55B656";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "96E83006-49FC-D455-4043-BCA66DA1FC91";
	setAttr ".g" yes;
createNode phong -n "Mat_PolygonCity_Texture_01_A";
	rename -uid "083F9028-4C35-2F7F-F752-FAAC303F66F2";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "SK_Character_Male_JacketSG";
	rename -uid "03C7FA8F-4E8E-71FB-4D81-C0A7BC4E57FB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "415F1AEA-47DB-BFE6-C5D6-89B628FA0674";
createNode file -n "EnvSamplerTex";
	rename -uid "B8B6DFEF-40FB-3A4C-1FD8-70A23C6B6C08";
	setAttr ".ftn" -type "string" "U:/Dropbox/SyntyStudios/PolygonCity/_Working/Justin/Textures/PolygonCity_Texture.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "81011860-48DC-8777-ABD0-19A2C9696828";
createNode bump2d -n "bump2d1";
	rename -uid "7EDA4AF4-4A1F-DA6C-1315-1C9ACCE1E477";
	setAttr ".bi" 1;
createNode file -n "EnvSamplerTex_ncl1_1";
	rename -uid "88EEC30F-435C-815D-D28C-6A9D921386A3";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "U:/Dropbox/SyntyStudios/PolygonCity/_Working/Justin/Textures/Combined/PolygonCity_Texture_Normal_Unreal.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "FA2E7AB6-4817-B35D-3984-35860BCB6064";
createNode skinCluster -n "skinCluster1";
	rename -uid "4C527E1D-4E03-0E37-F498-11AAB9986E3A";
	setAttr ".skm" -1;
	setAttr -s 3837 ".wl";
	setAttr ".wl[0:306].w"
		2 44 0.32941176505649788 45 0.67058823494350206
		2 44 0.46666667064030942 45 0.53333332935969058
		2 44 0.78039215978454113 45 0.21960784021545884
		1 45 1
		1 45 1
		2 44 0.46666667064030942 45 0.53333332935969058
		2 45 0.1607843070637951 46 0.8392156929362049
		1 46 1
		2 45 0.83529412483467724 46 0.16470587516532278
		2 44 0.32941176505649788 45 0.67058823494350206
		1 45 1
		2 44 0.46666667064030942 45 0.53333332935969058
		1 45 1
		2 44 0.52941176119972699 45 0.47058823880027301
		2 44 0.34509803816383966 45 0.65490196183616034
		1 47 1
		1 47 1
		1 47 1
		2 44 0.52941176119972699 45 0.47058823880027301
		2 44 0.83137255673314958 45 0.16862744326685047
		2 44 0.34509803816383966 45 0.65490196183616034
		1 45 1
		1 45 1
		2 44 0.34509803816383966 45 0.65490196183616034
		1 46 1
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.82352942053009415 46 0.17647057946990582
		1 44 1
		1 44 1
		2 44 0.52941176119972699 45 0.47058823880027301
		2 45 0.98431372552671847 46 0.01568627447328147
		1 45 1
		1 45 1
		1 46 1
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.19607843195690822 46 0.80392156804309178
		2 44 0.83137255673314958 45 0.16862744326685047
		1 44 1
		2 44 0.98039215737405938 45 0.019607842625940577
		2 44 0.78039215978454113 45 0.21960784021545884
		2 44 0.98039215737405938 45 0.019607842625940577
		1 44 1
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		1 46 1
		1 45 1
		2 45 0.98431372552671847 46 0.01568627447328147
		1 45 1
		1 46 1
		2 45 0.19607843195690822 46 0.80392156804309178
		1 46 1
		1 45 1
		1 45 1
		2 45 0.98431372552671847 46 0.01568627447328147
		1 44 1
		1 44 1
		2 44 0.32941176505649788 45 0.67058823494350206
		1 44 1
		2 44 0.52941176119972699 45 0.47058823880027301
		2 44 0.32941176505649788 45 0.67058823494350206
		2 44 0.52941176119972699 45 0.47058823880027301
		2 44 0.82745098863162181 45 0.17254901136837816
		2 44 0.83137255673314958 45 0.16862744326685047
		2 44 0.83137255673314958 45 0.16862744326685047
		2 44 0.82745098863162181 45 0.17254901136837816
		1 44 1
		2 44 0.89803921445912016 45 0.10196078554087985
		2 44 0.78039215978454113 45 0.21960784021545884
		1 44 1
		2 44 0.32941176505649788 45 0.67058823494350206
		2 44 0.78039215978454113 45 0.21960784021545884
		2 44 0.89803921445912016 45 0.10196078554087985
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		2 45 0.82352942053009415 46 0.17647057946990582
		1 47 1
		2 46 0.70196078115818561 47 0.29803921884181445
		2 46 0.70196078115818561 47 0.29803921884181445
		1 47 1
		2 45 0.83529412483467724 46 0.16470587516532278
		1 46 1
		2 46 0.70196078115818561 47 0.29803921884181445
		2 45 0.83529412483467724 46 0.16470587516532278
		1 46 1
		2 45 0.82352942053009415 46 0.17647057946990582
		2 46 0.70196078115818561 47 0.29803921884181445
		2 39 0.32941176505649788 40 0.67058823494350206
		2 39 0.78039215978454113 40 0.21960784021545884
		2 39 0.46666667064030942 40 0.53333332935969058
		1 40 1
		2 39 0.46666667064030942 40 0.53333332935969058
		1 40 1
		2 40 0.1607843070637951 41 0.8392156929362049
		2 40 0.83529412483467724 41 0.16470587516532278
		1 41 1
		2 39 0.32941176505649788 40 0.67058823494350206
		2 39 0.46666667064030942 40 0.53333332935969058
		1 40 1
		1 40 1
		2 39 0.34509803816383966 40 0.65490196183616034
		2 39 0.52941176119972699 40 0.47058823880027301
		1 42 1
		1 42 1
		1 42 1
		2 39 0.52941176119972699 40 0.47058823880027301
		2 39 0.34509803816383966 40 0.65490196183616034
		2 39 0.83137255673314958 40 0.16862744326685047
		1 40 1
		2 39 0.34509803816383966 40 0.65490196183616034
		1 40 1
		1 41 1
		2 40 0.82352942053009415 41 0.17647057946990582
		2 40 0.19607843195690822 41 0.80392156804309178
		1 39 1
		2 39 0.52941176119972699 40 0.47058823880027301
		1 39 1
		2 40 0.98431372552671847 41 0.01568627447328147
		1 40 1
		1 40 1
		1 41 1
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.1607843070637951 41 0.8392156929362049
		2 39 0.83137255673314958 40 0.16862744326685047
		2 39 0.98039215737405938 40 0.019607842625940577
		1 39 1
		2 39 0.78039215978454113 40 0.21960784021545884
		1 39 1
		2 39 0.98039215737405938 40 0.019607842625940577
		2 40 0.19607843195690822 41 0.80392156804309178
		1 41 1
		2 40 0.19607843195690822 41 0.80392156804309178
		1 40 1
		1 40 1
		2 40 0.98431372552671847 41 0.01568627447328147
		1 41 1
		1 41 1
		2 40 0.19607843195690822 41 0.80392156804309178
		1 40 1
		2 40 0.98431372552671847 41 0.01568627447328147
		1 40 1
		1 39 1
		2 39 0.32941176505649788 40 0.67058823494350206
		1 39 1
		1 39 1
		2 39 0.32941176505649788 40 0.67058823494350206
		2 39 0.52941176119972699 40 0.47058823880027301
		2 39 0.52941176119972699 40 0.47058823880027301
		2 39 0.83137255673314958 40 0.16862744326685047
		2 39 0.82745098863162181 40 0.17254901136837816
		2 39 0.83137255673314958 40 0.16862744326685047
		1 39 1
		2 39 0.82745098863162181 40 0.17254901136837816
		2 39 0.89803921445912016 40 0.10196078554087985
		1 39 1
		2 39 0.78039215978454113 40 0.21960784021545884
		2 39 0.32941176505649788 40 0.67058823494350206
		2 39 0.89803921445912016 40 0.10196078554087985
		2 39 0.78039215978454113 40 0.21960784021545884
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		2 40 0.82352942053009415 41 0.17647057946990582
		2 41 0.70196078115818561 42 0.29803921884181445
		1 42 1
		2 41 0.70196078115818561 42 0.29803921884181445
		2 40 0.83529412483467724 41 0.16470587516532278
		1 42 1
		1 41 1
		2 40 0.83529412483467724 41 0.16470587516532278
		2 41 0.70196078115818561 42 0.29803921884181445
		1 41 1
		2 41 0.70196078115818561 42 0.29803921884181445
		2 40 0.82352942053009415 41 0.17647057946990582
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 4 0.70980391771185647 9 0.29019608228814359
		2 4 0.91764706180376143 10 0.082352938196238554
		2 4 0.70980391771185647 9 0.29019608228814359
		2 9 0.40000001192092827 10 0.59999998807907173
		2 4 0.70980391771185647 9 0.29019608228814359
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.40000001192092827 10 0.59999998807907173
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.40000001192092827 10 0.59999998807907173
		2 9 0.49019607960009098 10 0.50980392039990896
		2 9 0.34901960644067509 10 0.65098039355932491
		2 9 0.43529412536060064 10 0.56470587463939936
		2 4 0.66666666666666663 9 0.33333333333333331
		2 9 0.68235293977400835 10 0.3176470602259916
		2 4 0.70980391771185647 9 0.29019608228814359
		2 24 0.68235293977400835 25 0.3176470602259916
		2 4 0.70980391771185647 24 0.29019608228814359
		2 24 0.68235293977400835 25 0.3176470602259916
		2 4 0.91764706180376143 25 0.082352938196238554
		2 24 0.40000001192092827 25 0.59999998807907173
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.70980391771185647 24 0.29019608228814359
		2 24 0.40000001192092827 25 0.59999998807907173
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.40000001192092827 25 0.59999998807907173
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.49019607960009098 25 0.50980392039990896
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.34901960644067509 25 0.65098039355932491
		2 4 0.75294118348289873 24 0.24705881651710124
		2 4 0.70980391771185647 24 0.29019608228814359
		2 24 0.68235293977400835 25 0.3176470602259916
		2 10 0.74901960048021077 11 0.25098039951978923
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.71764705426552733 11 0.28235294573447273
		2 10 0.71764705426552733 11 0.28235294573447273
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.64705882528248948 11 0.35294117471751052
		2 10 0.59215685175914456 11 0.40784314824085544
		2 11 0.58039214727925381 12 0.41960785272074624
		1 11 1
		2 11 0.47058823880027301 12 0.52941176119972699
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.74901960048021077 11 0.25098039951978923
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.74901960048021077 11 0.25098039951978923
		2 10 0.64705882528248948 11 0.35294117471751052
		2 14 0.68627450805084378 15 0.31372549194915617
		2 14 0.92941176619599841 15 0.070588233804001629
		2 14 0.69411764460451475 15 0.30588235539548531
		2 12 0.67843137149717292 13 0.32156862850282703
		2 12 0.67843137149717292 20 0.32156862850282703
		2 12 0.58039214727925381 13 0.41960785272074624
		2 12 0.47058823880027301 20 0.52941176119972699
		2 11 0.20784313608618354 12 0.79215686391381646
		2 16 0.8392156929362049 20 0.1607843070637951
		2 13 0.52549019303976341 14 0.47450980696023659
		2 13 0.60392155623903532 14 0.39607844376096463
		2 12 0.4588235343203822 13 0.54117646567961775
		2 13 0.56862744279936295 14 0.43137255720063705
		2 12 0.67843137149717292 13 0.32156862850282703
		2 12 0.58039214727925381 13 0.41960785272074624
		2 12 0.52156862487979982 20 0.47843137512020023
		2 11 0.23529411238782594 12 0.76470588761217406
		2 12 0.52941176119972699 20 0.47058823880027301
		2 12 0.7137254859886919 13 0.28627451401130816
		2 11 0.23529411238782594 12 0.76470588761217406
		2 12 0.67843137149717292 20 0.32156862850282703
		2 12 0.4588235343203822 13 0.54117646567961775
		2 12 0.58039214727925381 13 0.41960785272074624
		2 12 0.56862744279936295 16 0.43137255720063705
		2 14 0.68627450805084378 15 0.31372549194915617
		2 14 0.70980391771185647 15 0.29019608228814359
		2 14 0.65098039355932491 15 0.34901960644067509
		2 12 0.6627450983898312 13 0.33725490161016874
		2 12 0.4588235343203822 13 0.54117646567961775
		2 12 0.56862744279936295 16 0.43137255720063705
		2 13 0.52549019303976341 14 0.47450980696023659
		2 12 0.4588235343203822 13 0.54117646567961775
		2 12 0.6627450983898312 13 0.33725490161016874
		2 12 0.58039214727925381 13 0.41960785272074624
		2 13 0.60392155623903532 14 0.39607844376096463
		2 13 0.56862744279936295 14 0.43137255720063705
		2 13 0.60392155623903532 14 0.39607844376096463
		2 12 0.58039214727925381 13 0.41960785272074624
		2 12 0.4588235343203822 13 0.54117646567961775
		2 13 0.11372548984546289 14 0.88627451015453707;
	setAttr ".wl[307:581].w"
		2 14 0.68627450805084378 15 0.31372549194915617
		2 14 0.65098039355932491 15 0.34901960644067509
		2 13 0.11372548984546289 14 0.88627451015453707
		2 14 0.92941176619599841 15 0.070588233804001629
		2 14 0.68627450805084378 15 0.31372549194915617
		2 14 0.69411764460451475 15 0.30588235539548531
		2 14 0.70588234943502104 15 0.29411765056497902
		2 14 0.68627450805084378 15 0.31372549194915617
		2 14 0.68627450805084378 15 0.31372549194915617
		2 14 0.70588234943502104 15 0.29411765056497902
		2 14 0.70980391771185647 15 0.29019608228814359
		2 17 0.047058825019527781 18 0.95294117498047226
		2 17 0.53725489751965416 18 0.46274510248034584
		2 17 0.12941176225157364 18 0.87058823774842642
		2 18 0.89019607825606484 19 0.10980392174393522
		2 17 0.44705882984049145 18 0.55294117015950861
		2 18 0.94901960684972653 19 0.050980393150273424
		2 13 0.56862744279936295 14 0.43137255720063705
		2 12 0.7137254859886919 13 0.28627451401130816
		2 12 0.67843137149717292 13 0.32156862850282703
		2 12 0.7137254859886919 13 0.28627451401130816
		2 12 0.67843137149717292 20 0.32156862850282703
		2 12 0.67843137149717292 13 0.32156862850282703
		2 21 0.84313726103773257 22 0.15686273896226741
		2 12 0.67843137149717292 20 0.32156862850282703
		2 20 0.1607843070637951 21 0.8392156929362049
		2 12 0.52156862487979982 20 0.47843137512020023
		2 20 0.1607843070637951 21 0.8392156929362049
		2 12 0.67843137149717292 20 0.32156862850282703
		2 12 0.82745098863162181 20 0.17254901136837816
		2 12 0.41568628456078266 20 0.5843137154392174
		2 12 0.34901960644067509 20 0.65098039355932491
		2 20 0.1607843070637951 21 0.8392156929362049
		2 12 0.52156862487979982 20 0.47843137512020023
		2 20 0.28627451401130816 21 0.7137254859886919
		2 12 0.67843137149717292 20 0.32156862850282703
		2 11 0.23529411238782594 12 0.76470588761217406
		2 12 0.52156862487979982 20 0.47843137512020023
		2 25 0.74901960048021077 26 0.25098039951978923
		2 25 0.71764705426552733 26 0.28235294573447273
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.71764705426552733 26 0.28235294573447273
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.59215685175914456 26 0.40784314824085544
		2 25 0.64705882528248948 26 0.35294117471751052
		2 26 0.58039214727925381 27 0.41960785272074624
		2 26 0.47058823880027301 27 0.52941176119972699
		1 26 1
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.74901960048021077 26 0.25098039951978923
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.64705882528248948 26 0.35294117471751052
		2 25 0.74901960048021077 26 0.25098039951978923
		2 29 0.68627450805084378 30 0.31372549194915617
		2 29 0.69411764460451475 30 0.30588235539548531
		2 29 0.92941176619599841 30 0.070588233804001629
		2 27 0.67843137149717292 28 0.32156862850282703
		2 27 0.58039214727925381 28 0.41960785272074624
		2 27 0.67843137149717292 35 0.32156862850282703
		2 27 0.47058823880027301 35 0.52941176119972699
		2 31 0.8392156929362049 35 0.1607843070637951
		2 26 0.20784313608618354 27 0.79215686391381646
		2 28 0.52549019303976341 29 0.47450980696023659
		2 27 0.4588235343203822 28 0.54117646567961775
		2 28 0.60392155623903532 29 0.39607844376096463
		2 28 0.56862744279936295 29 0.43137255720063705
		2 27 0.58039214727925381 28 0.41960785272074624
		2 27 0.67843137149717292 28 0.32156862850282703
		2 27 0.52156862487979982 35 0.47843137512020023
		2 27 0.52941176119972699 35 0.47058823880027301
		2 26 0.23529411238782594 27 0.76470588761217406
		2 27 0.7137254859886919 28 0.28627451401130816
		2 27 0.67843137149717292 35 0.32156862850282703
		2 26 0.23529411238782594 27 0.76470588761217406
		2 27 0.4588235343203822 28 0.54117646567961775
		2 27 0.56862744279936295 31 0.43137255720063705
		2 27 0.58039214727925381 28 0.41960785272074624
		2 29 0.68627450805084378 30 0.31372549194915617
		2 29 0.65098039355932491 30 0.34901960644067509
		2 29 0.70980391771185647 30 0.29019608228814359
		2 27 0.6627450983898312 28 0.33725490161016874
		2 27 0.56862744279936295 31 0.43137255720063705
		2 27 0.4588235343203822 28 0.54117646567961775
		2 28 0.52549019303976341 29 0.47450980696023659
		2 27 0.6627450983898312 28 0.33725490161016874
		2 27 0.4588235343203822 28 0.54117646567961775
		2 27 0.58039214727925381 28 0.41960785272074624
		2 28 0.56862744279936295 29 0.43137255720063705
		2 28 0.60392155623903532 29 0.39607844376096463
		2 28 0.60392155623903532 29 0.39607844376096463
		2 27 0.4588235343203822 28 0.54117646567961775
		2 27 0.58039214727925381 28 0.41960785272074624
		2 28 0.11372548984546289 29 0.88627451015453707
		2 29 0.65098039355932491 30 0.34901960644067509
		2 29 0.68627450805084378 30 0.31372549194915617
		2 28 0.11372548984546289 29 0.88627451015453707
		2 29 0.68627450805084378 30 0.31372549194915617
		2 29 0.92941176619599841 30 0.070588233804001629
		2 29 0.69411764460451475 30 0.30588235539548531
		2 29 0.68627450805084378 30 0.31372549194915617
		2 29 0.70588234943502104 30 0.29411765056497902
		2 29 0.68627450805084378 30 0.31372549194915617
		2 29 0.70980391771185647 30 0.29019608228814359
		2 29 0.70588234943502104 30 0.29411765056497902
		2 32 0.047058825019527781 33 0.95294117498047226
		2 32 0.12941176225157364 33 0.87058823774842642
		2 32 0.53725489751965416 33 0.46274510248034584
		2 33 0.89019607825606484 34 0.10980392174393522
		2 33 0.94901960684972653 34 0.050980393150273424
		2 32 0.44705882984049145 33 0.55294117015950861
		2 28 0.56862744279936295 29 0.43137255720063705
		2 27 0.67843137149717292 28 0.32156862850282703
		2 27 0.7137254859886919 28 0.28627451401130816
		2 27 0.7137254859886919 28 0.28627451401130816
		2 27 0.67843137149717292 28 0.32156862850282703
		2 27 0.67843137149717292 35 0.32156862850282703
		2 36 0.84313726103773257 37 0.15686273896226741
		2 35 0.1607843070637951 36 0.8392156929362049
		2 27 0.67843137149717292 35 0.32156862850282703
		2 27 0.52156862487979982 35 0.47843137512020023
		2 27 0.67843137149717292 35 0.32156862850282703
		2 35 0.1607843070637951 36 0.8392156929362049
		2 27 0.82745098863162181 35 0.17254901136837816
		2 27 0.34901960644067509 35 0.65098039355932491
		2 27 0.41568628456078266 35 0.5843137154392174
		2 35 0.1607843070637951 36 0.8392156929362049
		2 35 0.28627451401130816 36 0.7137254859886919
		2 27 0.52156862487979982 35 0.47843137512020023
		2 27 0.67843137149717292 35 0.32156862850282703
		2 27 0.52156862487979982 35 0.47843137512020023
		2 26 0.23529411238782594 27 0.76470588761217406
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 3 0.33725490161016874 4 0.6627450983898312
		2 9 0.91764706180376143 10 0.082352938196238554
		2 4 0.97254901925722759 5 0.027450980742772399
		2 1 0.4588235343203822 44 0.54117646567961775
		2 1 0.69411764460451475 39 0.30588235539548531
		2 1 0.64313725700565405 39 0.35686274299434595
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.71764705426552733 2 0.28235294573447273
		1 6 1
		1 6 1
		1 6 1
		2 3 0.75686275152599047 9 0.24313724847400947
		2 3 0.75686275152599047 9 0.24313724847400947
		2 4 0.74901960048021077 9 0.25098039951978923
		2 4 0.74901960048021077 9 0.25098039951978923
		2 3 0.75686275152599047 9 0.24313724847400947
		2 4 0.7137254859886919 9 0.28627451401130816
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.75686275152599047 9 0.24313724847400947
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.75686275152599047 9 0.24313724847400947
		2 4 0.74901960048021077 9 0.25098039951978923
		2 4 0.97254901925722759 5 0.027450980742772399
		2 9 0.91764706180376143 10 0.082352938196238554
		2 4 0.66666666666666663 9 0.33333333333333331
		2 4 0.61568626071892618 5 0.38431373928107387
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.99215686275605475 5 0.0078431372439452252
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.75686275152599047 9 0.24313724847400947
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.98431372552671847 5 0.01568627447328147
		2 3 0.36470587954801681 4 0.63529412045198319
		2 4 0.95686274667580917 9 0.043137253324190876
		2 4 0.97254901925722759 5 0.027450980742772399
		2 4 0.9450980387189809 9 0.054901961281019068
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.4588235343203822 44 0.54117646567961775
		2 1 0.64313725700565405 39 0.35686274299434595
		2 1 0.38823530744103746 44 0.6117646925589626
		2 1 0.27843137745763724 44 0.72156862254236276
		2 1 0.43921569352056422 44 0.56078430647943578
		2 1 0.6117646925589626 44 0.38823530744103746
		2 1 0.850980397240788 44 0.14901960275921206
		2 1 0.66666666666666663 44 0.33333333333333331
		2 9 0.63529412045198319 10 0.36470587954801681
		2 4 0.7137254859886919 9 0.28627451401130816
		2 3 0.75686275152599047 9 0.24313724847400947
		2 3 0.83529412483467724 9 0.16470587516532278
		2 9 0.63529412045198319 10 0.36470587954801681
		2 3 0.75686275152599047 9 0.24313724847400947
		2 1 0.4588235343203822 44 0.54117646567961775
		2 1 0.57254901095932653 44 0.42745098904067341
		2 1 0.69411764460451475 39 0.30588235539548531
		2 1 0.4588235343203822 44 0.54117646567961775
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.20784313608618354 44 0.79215686391381646
		2 1 0.38823530744103746 44 0.6117646925589626
		2 1 0.69411764460451475 39 0.30588235539548531
		2 1 0.57254901095932653 44 0.42745098904067341
		2 1 0.27843137745763724 44 0.72156862254236276
		2 1 0.38823530744103746 44 0.6117646925589626
		2 1 0.16470587516532278 44 0.83529412483467724
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.23529411238782594 44 0.76470588761217406
		2 1 0.20784313608618354 44 0.79215686391381646
		2 1 0.38823530744103746 44 0.6117646925589626
		2 1 0.16862744326685047 44 0.83137255673314958
		2 1 0.16470587516532278 44 0.83529412483467724
		2 4 0.91764706180376143 10 0.082352938196238554
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.70980391771185647 9 0.29019608228814359
		2 9 0.49411764776005462 10 0.50588235223994538
		2 9 0.3176470602259916 10 0.68235293977400835
		2 9 0.19607843195690822 10 0.80392156804309178
		2 9 0.6078431243989989 10 0.39215687560100104
		2 9 0.34901960644067509 10 0.65098039355932491
		2 9 0.49019607960009098 10 0.50980392039990896
		2 9 0.69411764460451475 10 0.30588235539548531
		2 9 0.34901960644067509 10 0.65098039355932491
		2 9 0.6078431243989989 10 0.39215687560100104
		2 9 0.63529412045198319 10 0.36470587954801681
		2 3 0.83529412483467724 9 0.16470587516532278
		2 4 0.82745098863162181 9 0.17254901136837816
		2 1 0.38823530744103746 44 0.6117646925589626
		2 1 0.57254901095932653 44 0.42745098904067341
		2 1 0.16862744326685047 44 0.83137255673314958
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.97647058740258219 5 0.023529412597417778
		2 24 0.91764706180376143 25 0.082352938196238554
		2 1 0.4588235343203822 39 0.54117646567961775
		2 1 0.64313725700565405 39 0.35686274299434595
		1 1 0.69411764460451475;
	setAttr ".wl[581:867].w"
		1 39 0.30588235539548531
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.75294118348289873 24 0.24705881651710124
		2 24 0.91764706180376143 25 0.082352938196238554
		2 4 0.61568626071892618 5 0.38431373928107387
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.95294117498047226 5 0.047058825019527781
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.75686275152599047 24 0.24313724847400947
		2 3 0.91764706180376143 24 0.082352938196238554
		2 4 0.97647058740258219 5 0.023529412597417778
		2 3 0.36470587954801681 4 0.63529412045198319
		2 4 0.9450980387189809 5 0.054901961281019068
		1 4 1
		2 4 0.89803921445912016 24 0.10196078554087985
		2 4 0.97647058740258219 5 0.023529412597417778
		2 1 0.46274510248034584 39 0.53725489751965416
		2 1 0.64313725700565405 39 0.35686274299434595
		2 1 0.4588235343203822 39 0.54117646567961775
		2 1 0.38823530744103746 39 0.6117646925589626
		2 1 0.43921569352056422 39 0.56078430647943578
		2 1 0.27843137745763724 39 0.72156862254236276
		2 1 0.6117646925589626 39 0.38823530744103746
		2 1 0.66666666666666663 39 0.33333333333333331
		2 1 0.850980397240788 39 0.14901960275921206
		2 24 0.63529412045198319 25 0.36470587954801681
		2 3 0.75686275152599047 24 0.24313724847400947
		2 4 0.7137254859886919 24 0.28627451401130816
		2 3 0.83529412483467724 24 0.16470587516532278
		2 3 0.75686275152599047 24 0.24313724847400947
		2 24 0.63529412045198319 25 0.36470587954801681
		2 1 0.4588235343203822 39 0.54117646567961775
		2 1 0.69411764460451475 39 0.30588235539548531
		2 1 0.57254901095932653 39 0.42745098904067341
		2 1 0.4588235343203822 39 0.54117646567961775
		2 1 0.20784313608618354 39 0.79215686391381646
		2 1 0.46274510248034584 39 0.53725489751965416
		2 1 0.38823530744103746 39 0.6117646925589626
		2 1 0.57254901095932653 39 0.42745098904067341
		2 1 0.69411764460451475 39 0.30588235539548531
		2 1 0.27843137745763724 39 0.72156862254236276
		2 1 0.16470587516532278 39 0.83529412483467724
		2 1 0.38823530744103746 39 0.6117646925589626
		2 1 0.46274510248034584 39 0.53725489751965416
		2 1 0.20784313608618354 39 0.79215686391381646
		2 1 0.23529411238782594 39 0.76470588761217406
		2 1 0.38823530744103746 39 0.6117646925589626
		2 1 0.16470587516532278 39 0.83529412483467724
		2 1 0.16862744326685047 39 0.83137255673314958
		2 4 0.91764706180376143 25 0.082352938196238554
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.54901960199954503 5 0.45098039800045503
		2 24 0.49411764776005462 25 0.50588235223994538
		2 24 0.19607843195690822 25 0.80392156804309178
		2 24 0.3176470602259916 25 0.68235293977400835
		2 24 0.6078431243989989 25 0.39215687560100104
		2 24 0.49019607960009098 25 0.50980392039990896
		2 24 0.34901960644067509 25 0.65098039355932491
		2 24 0.69411764460451475 25 0.30588235539548531
		2 24 0.6078431243989989 25 0.39215687560100104
		2 24 0.34901960644067509 25 0.65098039355932491
		2 24 0.63529412045198319 25 0.36470587954801681
		2 4 0.82745098863162181 24 0.17254901136837816
		2 3 0.83529412483467724 24 0.16470587516532278
		2 1 0.38823530744103746 39 0.6117646925589626
		2 1 0.16862744326685047 39 0.83137255673314958
		2 1 0.57254901095932653 39 0.42745098904067341
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 3 0.36470587954801681 4 0.63529412045198319
		2 4 0.97254901925722759 5 0.027450980742772399
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.36470587954801681 4 0.63529412045198319
		1 4 1
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 4 0.97254901925722759 5 0.027450980742772399
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.98823529367937768 5 0.011764706320622362
		2 4 0.97647058740258219 5 0.023529412597417778
		1 4 1
		1 4 1
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.79215686391381646 39 0.20784313608618354
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		2 45 0.83529412483467724 46 0.16470587516532278
		1 47 1
		1 45 1
		1 47 1
		2 45 0.82352942053009415 46 0.17647057946990582
		1 45 1
		1 42 1
		2 40 0.83529412483467724 41 0.16470587516532278
		1 40 1
		2 40 0.82352942053009415 41 0.17647057946990582
		1 42 1
		1 40 1
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.98823529367937768 5 0.011764706320622362
		2 4 0.98039215737405938 24 0.019607842625940577
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.96078431482116378 5 0.039215685178836258
		1 4 1
		2 4 0.95686274667580917 9 0.043137253324190876
		2 4 0.95294117498047226 5 0.047058825019527781
		2 4 0.97254901925722759 5 0.027450980742772399
		1 4 1
		1 4 1
		2 4 0.98823529367937768 9 0.011764706320622362
		2 4 0.73725489564970448 5 0.26274510435029552
		1 4 1
		1 4 1
		2 4 0.95686274667580917 9 0.043137253324190876
		2 4 0.82745098863162181 9 0.17254901136837816
		2 4 0.98823529367937768 9 0.011764706320622362
		1 4 1
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.98823529367937768 5 0.011764706320622362
		2 4 0.70980391771185647 24 0.29019608228814359
		1 4 1
		2 4 0.98039215737405938 24 0.019607842625940577
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.96078431482116378 5 0.039215685178836258
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.61568626071892618 5 0.38431373928107387
		2 4 0.95294117498047226 5 0.047058825019527781
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.61568626071892618 5 0.38431373928107387
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.97254901925722759 5 0.027450980742772399
		2 4 0.95294117498047226 5 0.047058825019527781
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.36470587954801681 4 0.63529412045198319
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.36470587954801681 4 0.63529412045198319
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		2 9 0.2 10 0.8
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.34901960644067509 10 0.65098039355932491
		2 9 0.43529412536060064 10 0.56470587463939936
		2 24 0.2 25 0.8
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.34901960644067509 25 0.65098039355932491
		2 24 0.2 25 0.8
		2 11 0.47058823880027301 12 0.52941176119972699
		1 11 1
		1 11 1
		1 11 1
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.64313725700565405 11 0.35686274299434595
		2 26 0.47058823880027301 27 0.52941176119972699
		1 26 1
		1 26 1
		2 25 0.61568626071892618 26 0.38431373928107387
		1 26 1
		2 25 0.64313725700565405 26 0.35686274299434595
		1 47 1
		2 46 0.094117649337824488 47 0.90588235066217548
		2 46 0.70196078115818561 47 0.29803921884181445
		1 47 1
		1 47 1
		1 47 1
		1 11 1
		1 11 1
		2 11 0.58039214727925381 12 0.41960785272074624
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.64313725700565405 11 0.35686274299434595
		1 11 1
		1 26 1
		2 26 0.58039214727925381 27 0.41960785272074624
		1 26 1
		2 25 0.64313725700565405 26 0.35686274299434595
		1 26 1
		2 25 0.64313725700565405 26 0.35686274299434595
		2 1 0.39607844376096463 2 0.60392155623903532
		2 1 0.34117646988700417 2 0.65882353011299577
		2 1 0.36470587954801681 2 0.63529412045198319
		2 1 0.35294117471751052 2 0.64705882528248948
		2 1 0.35294117471751052 2 0.64705882528248948
		2 1 0.33725490161016874 2 0.6627450983898312
		2 1 0.36470587954801681 2 0.63529412045198319
		2 1 0.42352942088070983 2 0.57647057911929012
		2 1 0.45490196616041861 2 0.54509803383958133
		2 1 0.33725490161016874 2 0.6627450983898312
		2 1 0.39607844376096463 2 0.60392155623903532
		2 1 0.34117646988700417 2 0.65882353011299577
		2 1 0.34117646988700417 2 0.65882353011299577
		2 1 0.33725490161016874 2 0.6627450983898312
		2 1 0.35294117471751052 2 0.64705882528248948
		2 1 0.33725490161016874 2 0.6627450983898312
		2 1 0.39607844376096463 2 0.60392155623903532
		2 1 0.36470587954801681 2 0.63529412045198319
		2 1 0.45490196616041861 2 0.54509803383958133
		2 1 0.42352942088070983 2 0.57647057911929012
		2 2 0.27843137745763724 3 0.72156862254236276
		2 2 0.21568627217236708 3 0.78431372782763287
		2 2 0.27450980918080181 3 0.72549019081919819
		2 2 0.23137254434473417 3 0.7686274556552658
		2 2 0.27450980918080181 3 0.72549019081919819
		2 2 0.23137254434473417 3 0.7686274556552658
		2 2 0.30980392367232074 3 0.69019607632767932
		2 2 0.19215686391381645 3 0.80784313608618352
		2 2 0.3176470602259916 3 0.68235293977400835
		2 2 0.1607843070637951 3 0.8392156929362049
		2 2 0.27843137745763724 3 0.72156862254236276
		2 2 0.21568627217236708 3 0.78431372782763287
		2 2 0.21568627217236708 3 0.78431372782763287
		2 2 0.1607843070637951 3 0.8392156929362049
		2 2 0.23137254434473417 3 0.7686274556552658
		2 2 0.19215686391381645 3 0.80784313608618352
		2 2 0.3176470602259916 3 0.68235293977400835
		2 2 0.27843137745763724 3 0.72156862254236276
		2 2 0.30980392367232074 3 0.69019607632767932
		2 2 0.27450980918080181 3 0.72549019081919819
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.9450980387189809 5 0.054901961281019068
		1 44 1
		1 44 1
		2 44 0.89803921445912016 45 0.10196078554087985;
	setAttr ".wl[868:1182].w"
		2 44 0.32941176505649788 45 0.67058823494350206
		2 44 0.52941176119972699 45 0.47058823880027301
		1 44 1
		2 44 0.82745098863162181 45 0.17254901136837816
		2 1 0.098039217439352164 44 0.90196078256064782
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 45 1
		1 45 1
		1 47 1
		1 47 1
		2 44 0.34509803816383966 45 0.65490196183616034
		2 44 0.83137255673314958 45 0.16862744326685047
		2 44 0.45490196616041861 45 0.54509803383958133
		2 44 0.98039215737405938 45 0.019607842625940577
		2 1 0.098039217439352164 44 0.90196078256064782
		2 44 0.93725490245748966 45 0.062745097542510342
		2 44 0.82745098863162181 45 0.17254901136837816
		1 44 1
		1 45 1
		1 45 1
		2 44 0.52941176119972699 45 0.47058823880027301
		2 44 0.32941176505649788 45 0.67058823494350206
		2 44 0.98039215737405938 45 0.019607842625940577
		2 44 0.78039215978454113 45 0.21960784021545884
		2 44 0.45490196616041861 45 0.54509803383958133
		2 44 0.46666667064030942 45 0.53333332935969058
		2 44 0.93725490245748966 45 0.062745097542510342
		1 44 1
		1 44 1
		2 44 0.89803921445912016 45 0.10196078554087985
		1 47 1
		1 45 1
		1 47 1
		1 45 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 44 1
		2 1 0.2274509763016424 44 0.77254902369835765
		2 1 0.098039217439352164 44 0.90196078256064782
		2 1 0.27843137745763724 44 0.72156862254236276
		2 44 0.93725490245748966 45 0.062745097542510342
		2 1 0.098039217439352164 44 0.90196078256064782
		2 1 0.16470587516532278 44 0.83529412483467724
		2 1 0.27843137745763724 44 0.72156862254236276
		2 1 0.16470587516532278 44 0.83529412483467724
		2 1 0.16862744326685047 44 0.83137255673314958
		2 44 0.93725490245748966 45 0.062745097542510342
		1 44 1
		1 44 1
		1 44 1
		2 1 0.20784313608618354 44 0.79215686391381646
		2 1 0.16862744326685047 44 0.83137255673314958
		2 1 0.23529411238782594 44 0.76470588761217406
		1 44 1
		2 1 0.20784313608618354 44 0.79215686391381646
		1 44 1
		2 1 0.2274509763016424 44 0.77254902369835765
		1 44 1
		2 1 0.23529411238782594 44 0.76470588761217406
		1 44 1
		2 45 0.82352942053009415 46 0.17647057946990582
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		2 45 0.82352942053009415 46 0.17647057946990582
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.83529412483467724 46 0.16470587516532278
		1 45 1
		2 45 0.83529412483467724 46 0.16470587516532278
		1 45 1
		2 45 0.82352942053009415 46 0.17647057946990582
		2 45 0.82352942053009415 46 0.17647057946990582
		1 45 1
		1 45 1
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.82352942053009415 46 0.17647057946990582
		2 45 0.82352942053009415 46 0.17647057946990582
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.1607843070637951 46 0.8392156929362049
		1 45 1
		1 45 1
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.83529412483467724 46 0.16470587516532278
		2 44 0.46666667064030942 45 0.53333332935969058
		1 45 1
		2 44 0.45490196616041861 45 0.54509803383958133
		1 45 1
		1 45 1
		2 44 0.34509803816383966 45 0.65490196183616034
		1 45 1
		2 44 0.45490196616041861 45 0.54509803383958133
		2 44 0.34509803816383966 45 0.65490196183616034
		1 45 1
		1 45 1
		2 45 0.82352942053009415 46 0.17647057946990582
		2 45 0.98431372552671847 46 0.01568627447328147
		1 45 1
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.82352942053009415 46 0.17647057946990582
		1 45 1
		2 45 0.98431372552671847 46 0.01568627447328147
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.19607843195690822 46 0.80392156804309178
		2 44 0.46666667064030942 45 0.53333332935969058
		1 45 1
		1 45 1
		2 45 0.83529412483467724 46 0.16470587516532278
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		2 45 0.82352942053009415 46 0.17647057946990582
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.82352942053009415 46 0.17647057946990582
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.19607843195690822 46 0.80392156804309178
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.1607843070637951 46 0.8392156929362049
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.83529412483467724 46 0.16470587516532278
		1 45 1
		2 45 0.83529412483467724 46 0.16470587516532278
		1 45 1
		1 45 1
		1 45 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 46 1
		1 46 1
		2 46 0.70196078115818561 47 0.29803921884181445
		2 46 0.70196078115818561 47 0.29803921884181445
		2 46 0.70196078115818561 47 0.29803921884181445
		2 46 0.70196078115818561 47 0.29803921884181445
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 46 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.83529412483467724 46 0.16470587516532278
		2 45 0.83529412483467724 46 0.16470587516532278
		1 45 1
		1 45 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 45 1
		2 45 0.82352942053009415 46 0.17647057946990582
		1 45 1
		2 45 0.82352942053009415 46 0.17647057946990582
		2 45 0.82352942053009415 46 0.17647057946990582
		2 45 0.82352942053009415 46 0.17647057946990582
		1 47 1
		1 47 1
		1 39 1
		2 39 0.89803921445912016 40 0.10196078554087985
		1 39 1
		2 39 0.32941176505649788 40 0.67058823494350206
		2 39 0.52941176119972699 40 0.47058823880027301
		2 39 0.82745098863162181 40 0.17254901136837816
		1 39 1
		2 1 0.098039217439352164 39 0.90196078256064782
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 40 1
		1 42 1
		1 40 1
		1 42 1
		2 39 0.34509803816383966 40 0.65490196183616034
		2 39 0.45490196616041861 40 0.54509803383958133
		2 39 0.83137255673314958 40 0.16862744326685047
		2 39 0.98039215737405938 40 0.019607842625940577
		1 39 1
		2 39 0.93725490245748966 40 0.062745097542510342
		2 39 0.82745098863162181 40 0.17254901136837816
		2 1 0.098039217439352164 39 0.90196078256064782
		2 39 0.32941176505649788 40 0.67058823494350206
		1 40 1
		2 39 0.52941176119972699 40 0.47058823880027301
		1 40 1
		2 39 0.98039215737405938 40 0.019607842625940577
		2 39 0.45490196616041861 40 0.54509803383958133
		2 39 0.78039215978454113 40 0.21960784021545884
		2 39 0.46666667064030942 40 0.53333332935969058
		2 39 0.93725490245748966 40 0.062745097542510342
		1 39 1
		1 39 1
		2 39 0.89803921445912016 40 0.10196078554087985
		1 42 1
		1 42 1
		1 40 1
		1 40 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		2 1 0.27843137745763724 39 0.72156862254236276
		2 1 0.2274509763016424 39 0.77254902369835765
		2 1 0.098039217439352164 39 0.90196078256064782
		1 39 1
		2 39 0.93725490245748966 40 0.062745097542510342
		2 1 0.16470587516532278 39 0.83529412483467724
		2 1 0.098039217439352164 39 0.90196078256064782
		2 1 0.27843137745763724 39 0.72156862254236276
		2 1 0.16470587516532278 39 0.83529412483467724
		2 39 0.93725490245748966 40 0.062745097542510342
		2 1 0.16862744326685047 39 0.83137255673314958
		1 39 1
		2 1 0.16862744326685047 39 0.83137255673314958
		1 39 1
		2 1 0.20784313608618354 39 0.79215686391381646
		1 39 1
		1 39 1
		1 39 1
		2 1 0.20784313608618354 39 0.79215686391381646
		2 1 0.23529411238782594 39 0.76470588761217406
		1 39 1
		1 39 1
		2 1 0.23529411238782594 39 0.76470588761217406
		2 1 0.2274509763016424 39 0.77254902369835765
		2 40 0.82352942053009415 41 0.17647057946990582
		1 40 1
		1 40 1
		1 40 1
		1 40 1
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.82352942053009415 41 0.17647057946990582
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.1607843070637951 41 0.8392156929362049
		2 40 0.1607843070637951 41 0.8392156929362049
		2 40 0.1607843070637951 41 0.8392156929362049
		2 40 0.1607843070637951 41 0.8392156929362049
		2 40 0.83529412483467724 41 0.16470587516532278
		2 40 0.83529412483467724 41 0.16470587516532278
		1 40 1
		1 40 1
		2 40 0.83529412483467724 41 0.16470587516532278
		2 40 0.83529412483467724 41 0.16470587516532278
		2 40 0.82352942053009415 41 0.17647057946990582
		1 40 1
		2 40 0.82352942053009415 41 0.17647057946990582
		1 40 1
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.82352942053009415 41 0.17647057946990582
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.82352942053009415 41 0.17647057946990582
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.1607843070637951 41 0.8392156929362049
		2 40 0.1607843070637951 41 0.8392156929362049
		2 40 0.1607843070637951 41 0.8392156929362049
		2 40 0.1607843070637951 41 0.8392156929362049
		2 40 0.83529412483467724 41 0.16470587516532278
		2 40 0.83529412483467724 41 0.16470587516532278
		1 40 1
		1 40 0.83529412483467724;
	setAttr ".wl[1182:1536].w"
		1 41 0.16470587516532278
		1 40 1
		2 40 0.83529412483467724 41 0.16470587516532278
		1 40 1
		1 40 1
		2 39 0.45490196616041861 40 0.54509803383958133
		2 39 0.46666667064030942 40 0.53333332935969058
		1 40 1
		1 40 1
		2 39 0.34509803816383966 40 0.65490196183616034
		2 39 0.45490196616041861 40 0.54509803383958133
		2 40 0.82352942053009415 41 0.17647057946990582
		1 40 1
		1 40 1
		2 39 0.34509803816383966 40 0.65490196183616034
		2 40 0.98431372552671847 41 0.01568627447328147
		2 40 0.19607843195690822 41 0.80392156804309178
		1 40 1
		2 40 0.82352942053009415 41 0.17647057946990582
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.98431372552671847 41 0.01568627447328147
		2 40 0.83529412483467724 41 0.16470587516532278
		1 40 1
		2 40 0.83529412483467724 41 0.16470587516532278
		1 40 1
		1 40 1
		2 39 0.46666667064030942 40 0.53333332935969058
		1 40 1
		1 40 1
		1 40 1
		1 40 1
		1 40 1
		2 40 0.82352942053009415 41 0.17647057946990582
		1 40 1
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.82352942053009415 41 0.17647057946990582
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.83529412483467724 41 0.16470587516532278
		2 40 0.19607843195690822 41 0.80392156804309178
		2 40 0.1607843070637951 41 0.8392156929362049
		1 40 1
		2 40 0.83529412483467724 41 0.16470587516532278
		2 40 0.83529412483467724 41 0.16470587516532278
		2 40 0.1607843070637951 41 0.8392156929362049
		1 40 1
		1 40 1
		1 40 1
		2 40 0.83529412483467724 41 0.16470587516532278
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 41 1
		2 41 0.70196078115818561 42 0.29803921884181445
		1 41 1
		2 41 0.70196078115818561 42 0.29803921884181445
		2 41 0.70196078115818561 42 0.29803921884181445
		1 41 1
		2 41 0.70196078115818561 42 0.29803921884181445
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		2 40 0.83529412483467724 41 0.16470587516532278
		1 42 1
		2 40 0.83529412483467724 41 0.16470587516532278
		2 40 0.83529412483467724 41 0.16470587516532278
		1 40 1
		2 40 0.83529412483467724 41 0.16470587516532278
		1 40 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		2 40 0.82352942053009415 41 0.17647057946990582
		2 40 0.82352942053009415 41 0.17647057946990582
		1 40 1
		1 40 1
		2 40 0.82352942053009415 41 0.17647057946990582
		1 42 1
		2 40 0.82352942053009415 41 0.17647057946990582
		1 42 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 9 0.91764706180376143 10 0.082352938196238554
		2 9 0.49019607960009098 10 0.50980392039990896
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.3176470602259916 10 0.68235293977400835
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.40000001192092827 10 0.59999998807907173
		2 9 0.19607843195690822 10 0.80392156804309178
		2 9 0.3176470602259916 10 0.68235293977400835
		2 9 0.2 10 0.8
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 4 0.66666666666666663 9 0.33333333333333331
		2 9 0.91764706180376143 10 0.082352938196238554
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 24 0.91764706180376143 25 0.082352938196238554
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.49019607960009098 25 0.50980392039990896
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.40000001192092827 25 0.59999998807907173
		2 24 0.3176470602259916 25 0.68235293977400835
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.3176470602259916 25 0.68235293977400835
		2 24 0.2 25 0.8
		2 24 0.19607843195690822 25 0.80392156804309178
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 4 0.75294118348289873 24 0.24705881651710124
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.91764706180376143 25 0.082352938196238554
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 9 0.11372548984546289 10 0.88627451015453707
		2 10 0.95294117498047226 11 0.047058825019527781
		2 9 0.058823529411764705 10 0.94117647058823528
		2 10 0.96470588296651838 11 0.035294117033481634
		2 9 0.16862744326685047 10 0.83137255673314958
		2 9 0.17254901136837816 10 0.82745098863162181
		2 10 0.90588235066217548 11 0.094117649337824488
		2 9 0.019607842625940577 10 0.98039215737405938;
	setAttr ".wl[1537:1796].w"
		2 9 0.066666665673255993 10 0.93333333432674404
		2 9 0.058823529411764705 10 0.94117647058823528
		1 10 1
		2 10 0.96470588296651838 11 0.035294117033481634
		2 9 0.10588235364240753 10 0.8941176463575925
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.17254901136837816 10 0.82745098863162181
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.10588235364240753 10 0.8941176463575925
		2 9 0.066666665673255993 10 0.93333333432674404
		2 9 0.019607842625940577 10 0.98039215737405938
		1 10 1
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.18823529587072468 11 0.81176470412927526
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.71764705426552733 11 0.28235294573447273
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.64705882528248948 11 0.35294117471751052
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.18823529587072468 11 0.81176470412927526
		1 11 1
		2 11 0.44705882984049145 12 0.55294117015950861
		1 11 1
		2 11 0.40000001192092827 12 0.59999998807907173
		1 11 1
		1 11 1
		2 11 0.50980392039990896 12 0.49019607960009098
		2 11 0.43529412536060064 12 0.56470587463939936
		1 11 1
		1 11 1
		2 11 0.47058823880027301 12 0.52941176119972699
		2 11 0.40000001192092827 12 0.59999998807907173
		1 11 1
		2 11 0.58039214727925381 12 0.41960785272074624
		1 11 1
		2 11 0.43529412536060064 12 0.56470587463939936
		1 11 1
		2 11 0.50980392039990896 12 0.49019607960009098
		1 11 1
		2 11 0.44705882984049145 12 0.55294117015950861
		2 10 0.74901960048021077 11 0.25098039951978923
		2 10 0.71764705426552733 11 0.28235294573447273
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.74901960048021077 11 0.25098039951978923
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.64705882528248948 11 0.35294117471751052
		2 10 0.59215685175914456 11 0.40784314824085544
		2 9 0.16862744326685047 10 0.83137255673314958
		2 10 0.90588235066217548 11 0.094117649337824488
		2 9 0.11372548984546289 10 0.88627451015453707
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.18823529587072468 11 0.81176470412927526
		2 10 0.18823529587072468 11 0.81176470412927526
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.59215685175914456 11 0.40784314824085544
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.59215685175914456 11 0.40784314824085544
		2 10 0.59215685175914456 11 0.40784314824085544
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.59215685175914456 11 0.40784314824085544
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.18823529587072468 11 0.81176470412927526
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.18823529587072468 11 0.81176470412927526
		2 11 0.40000001192092827 12 0.59999998807907173
		2 11 0.44705882984049145 12 0.55294117015950861
		2 11 0.20784313608618354 12 0.79215686391381646
		2 12 0.6627450983898312 13 0.33725490161016874
		2 11 0.40000001192092827 12 0.59999998807907173
		2 11 0.20784313608618354 12 0.79215686391381646
		2 11 0.47058823880027301 12 0.52941176119972699
		2 12 0.82745098863162181 20 0.17254901136837816
		2 11 0.58039214727925381 12 0.41960785272074624
		2 11 0.47058823880027301 12 0.52941176119972699
		2 11 0.23529411238782594 12 0.76470588761217406
		2 12 0.82745098863162181 20 0.17254901136837816
		2 11 0.58039214727925381 12 0.41960785272074624
		2 11 0.23529411238782594 12 0.76470588761217406
		2 11 0.43529412536060064 12 0.56470587463939936
		2 12 0.7137254859886919 13 0.28627451401130816
		2 11 0.43529412536060064 12 0.56470587463939936
		2 12 0.7137254859886919 13 0.28627451401130816
		2 11 0.50980392039990896 12 0.49019607960009098
		2 12 0.47843137512020023 13 0.52156862487979982
		2 11 0.44705882984049145 12 0.55294117015950861
		2 11 0.50980392039990896 12 0.49019607960009098
		2 12 0.6627450983898312 13 0.33725490161016874
		2 12 0.47843137512020023 13 0.52156862487979982
		2 13 0.19215686391381645 14 0.80784313608618352
		2 14 0.70588234943502104 15 0.29411765056497902
		2 14 0.92941176619599841 15 0.070588233804001629
		2 14 0.69411764460451475 15 0.30588235539548531
		2 12 0.56862744279936295 16 0.43137255720063705
		2 16 0.72941175909603362 17 0.27058824090396638
		2 16 0.8392156929362049 20 0.1607843070637951
		2 16 0.67450980322033749 17 0.32549019677966246
		2 12 0.41568628456078266 20 0.5843137154392174
		2 12 0.47058823880027301 20 0.52941176119972699
		2 20 0.34117646988700417 21 0.65882353011299577
		2 20 0.25098039951978923 21 0.74901960048021077
		2 12 0.7137254859886919 13 0.28627451401130816
		2 13 0.56862744279936295 14 0.43137255720063705
		2 12 0.47843137512020023 13 0.52156862487979982
		2 13 0.43137255720063705 14 0.56862744279936295
		2 12 0.6627450983898312 13 0.33725490161016874
		2 12 0.47843137512020023 13 0.52156862487979982
		2 13 0.52549019303976341 14 0.47450980696023659
		2 13 0.43137255720063705 14 0.56862744279936295
		2 12 0.6627450983898312 13 0.33725490161016874
		2 12 0.56862744279936295 16 0.43137255720063705
		2 11 0.20784313608618354 12 0.79215686391381646
		2 16 0.8392156929362049 20 0.1607843070637951
		2 12 0.82745098863162181 20 0.17254901136837816
		2 12 0.34901960644067509 20 0.65098039355932491
		2 11 0.23529411238782594 12 0.76470588761217406
		2 12 0.52941176119972699 20 0.47058823880027301
		2 13 0.26274510435029552 14 0.73725489564970448
		2 13 0.11372548984546289 14 0.88627451015453707
		2 14 0.70980391771185647 15 0.29019608228814359
		2 14 0.65098039355932491 15 0.34901960644067509
		2 13 0.52549019303976341 14 0.47450980696023659
		2 13 0.43137255720063705 14 0.56862744279936295
		2 13 0.11372548984546289 14 0.88627451015453707
		2 14 0.92941176619599841 15 0.070588233804001629
		2 16 0.72941175909603362 17 0.27058824090396638
		2 12 0.56862744279936295 16 0.43137255720063705
		2 12 0.22352940825855061 16 0.77647059174144939
		2 12 0.58039214727925381 13 0.41960785272074624
		2 12 0.58039214727925381 13 0.41960785272074624
		2 12 0.67843137149717292 20 0.32156862850282703
		2 12 0.22352940825855061 16 0.77647059174144939
		2 16 0.69411764460451475 17 0.30588235539548531
		2 20 0.28627451401130816 21 0.7137254859886919
		2 12 0.52156862487979982 20 0.47843137512020023
		2 20 0.44313726168052781 21 0.55686273831947219
		2 12 0.52941176119972699 20 0.47058823880027301
		2 20 0.44313726168052781 21 0.55686273831947219
		2 12 0.52941176119972699 20 0.47058823880027301
		2 20 0.19607843195690822 21 0.80392156804309178
		2 12 0.34901960644067509 20 0.65098039355932491
		2 16 0.72941175909603362 17 0.27058824090396638
		2 17 0.57254901095932653 18 0.42745098904067341
		2 16 0.67450980322033749 17 0.32549019677966246
		2 17 0.53333332935969058 18 0.46666667064030942
		2 20 0.34117646988700417 21 0.65882353011299577
		2 20 0.25098039951978923 21 0.74901960048021077
		1 22 1
		2 21 0.086274506326984191 22 0.91372549367301581
		2 12 0.22352940825855061 16 0.77647059174144939
		2 17 0.53725489751965416 18 0.46274510248034584
		2 16 0.72941175909603362 17 0.27058824090396638
		2 17 0.57254901095932653 18 0.42745098904067341
		2 12 0.22352940825855061 16 0.77647059174144939
		2 16 0.69411764460451475 17 0.30588235539548531
		2 17 0.53725489751965416 18 0.46274510248034584
		2 17 0.44705882984049145 18 0.55294117015950861
		1 22 1
		2 20 0.28627451401130816 21 0.7137254859886919
		2 21 0.15686273896226741 22 0.84313726103773257
		2 20 0.44313726168052781 21 0.55686273831947219
		2 20 0.44313726168052781 21 0.55686273831947219
		2 20 0.19607843195690822 21 0.80392156804309178
		2 21 0.15686273896226741 22 0.84313726103773257
		1 22 1
		2 18 0.94901960684972653 19 0.050980393150273424
		2 18 0.88627451015453707 19 0.11372548984546289
		2 17 0.047058825019527781 18 0.95294117498047226
		2 18 0.90588235066217548 19 0.094117649337824488
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 14 0.70588234943502104 15 0.29411765056497902
		2 13 0.19215686391381645 14 0.80784313608618352
		2 14 0.70980391771185647 15 0.29019608228814359
		2 13 0.26274510435029552 14 0.73725489564970448
		2 17 0.44705882984049145 18 0.55294117015950861
		2 16 0.69411764460451475 17 0.30588235539548531
		2 17 0.53333332935969058 18 0.46666667064030942
		2 16 0.67450980322033749 17 0.32549019677966246
		2 16 0.8392156929362049 20 0.1607843070637951
		2 12 0.67843137149717292 20 0.32156862850282703
		2 12 0.33333333333333331 21 0.66666666666666663
		2 21 0.84313726103773257 22 0.15686273896226741
		2 12 0.33333333333333331 21 0.66666666666666663
		2 21 0.84313726103773257 22 0.15686273896226741
		2 21 0.13725489845462899 22 0.86274510154537098
		2 21 0.2 22 0.8
		2 16 0.67450980322033749 17 0.32549019677966246
		2 16 0.69411764460451475 17 0.30588235539548531
		2 16 0.8392156929362049 20 0.1607843070637951
		2 12 0.67843137149717292 20 0.32156862850282703
		2 17 0.53725489751965416 18 0.46274510248034584
		2 17 0.047058825019527781 18 0.95294117498047226
		2 17 0.57254901095932653 18 0.42745098904067341
		2 18 0.90588235066217548 19 0.094117649337824488
		2 17 0.57254901095932653 18 0.42745098904067341
		2 18 0.90588235066217548 19 0.094117649337824488
		2 17 0.53333332935969058 18 0.46666667064030942
		2 18 0.88627451015453707 19 0.11372548984546289
		2 17 0.44705882984049145 18 0.55294117015950861
		2 17 0.53333332935969058 18 0.46666667064030942
		2 18 0.94901960684972653 19 0.050980393150273424
		2 18 0.88627451015453707 19 0.11372548984546289
		2 17 0.53725489751965416 18 0.46274510248034584
		2 17 0.44705882984049145 18 0.55294117015950861
		2 17 0.12941176225157364 18 0.87058823774842642
		1 18 0.89019607825606484;
	setAttr ".wl[1796:2070].w"
		1 19 0.10980392174393522
		1 22 1
		1 22 1
		1 22 1
		2 21 0.15686273896226741 22 0.84313726103773257
		2 21 0.2 22 0.8
		1 22 1
		2 21 0.13725489845462899 22 0.86274510154537098
		2 22 0.95294117498047226 23 0.047058825019527781
		1 22 1
		2 21 0.086274506326984191 22 0.91372549367301581
		1 22 1
		2 21 0.066666665673255993 22 0.93333333432674404
		2 21 0.15686273896226741 22 0.84313726103773257
		1 22 1
		1 22 1
		1 22 1
		2 18 0.89019607825606484 19 0.10980392174393522
		2 18 0.94901960684972653 19 0.050980393150273424
		2 17 0.12941176225157364 18 0.87058823774842642
		2 17 0.047058825019527781 18 0.95294117498047226
		2 13 0.60392155623903532 14 0.39607844376096463
		2 13 0.52549019303976341 14 0.47450980696023659
		2 13 0.26274510435029552 14 0.73725489564970448
		2 13 0.11372548984546289 14 0.88627451015453707
		2 13 0.60392155623903532 14 0.39607844376096463
		2 13 0.26274510435029552 14 0.73725489564970448
		2 13 0.56862744279936295 14 0.43137255720063705
		2 13 0.19215686391381645 14 0.80784313608618352
		2 13 0.56862744279936295 14 0.43137255720063705
		2 13 0.19215686391381645 14 0.80784313608618352
		2 13 0.43137255720063705 14 0.56862744279936295
		2 14 0.92941176619599841 15 0.070588233804001629
		2 12 0.82745098863162181 20 0.17254901136837816
		2 11 0.20784313608618354 12 0.79215686391381646
		2 12 0.41568628456078266 20 0.5843137154392174
		2 12 0.47058823880027301 20 0.52941176119972699
		2 20 0.25098039951978923 21 0.74901960048021077
		2 12 0.47058823880027301 20 0.52941176119972699
		2 12 0.33333333333333331 21 0.66666666666666663
		2 16 0.8392156929362049 20 0.1607843070637951
		2 20 0.25098039951978923 21 0.74901960048021077
		2 12 0.33333333333333331 21 0.66666666666666663
		2 21 0.086274506326984191 22 0.91372549367301581
		2 21 0.13725489845462899 22 0.86274510154537098
		2 21 0.086274506326984191 22 0.91372549367301581
		2 21 0.13725489845462899 22 0.86274510154537098
		2 21 0.066666665673255993 22 0.93333333432674404
		2 22 0.95294117498047226 23 0.047058825019527781
		2 22 0.95294117498047226 23 0.047058825019527781
		1 22 1
		2 21 0.066666665673255993 22 0.93333333432674404
		1 22 1
		1 22 1
		2 21 0.2 22 0.8
		1 22 1
		2 21 0.031372548888127016 22 0.96862745111187298
		2 21 0.2 22 0.8
		2 21 0.84313726103773257 22 0.15686273896226741
		2 21 0.031372548888127016 22 0.96862745111187298
		2 20 0.1607843070637951 21 0.8392156929362049
		2 21 0.066666665673255993 22 0.93333333432674404
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 20 0.19607843195690822 21 0.80392156804309178
		2 20 0.34117646988700417 21 0.65882353011299577
		1 22 1
		1 22 1
		2 12 0.34901960644067509 20 0.65098039355932491
		2 12 0.41568628456078266 20 0.5843137154392174
		2 20 0.19607843195690822 21 0.80392156804309178
		2 20 0.34117646988700417 21 0.65882353011299577
		1 22 1
		2 21 0.031372548888127016 22 0.96862745111187298
		1 22 1
		1 22 1
		2 21 0.031372548888127016 22 0.96862745111187298
		2 20 0.1607843070637951 21 0.8392156929362049
		1 22 1
		2 20 0.28627451401130816 21 0.7137254859886919
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.18823529587072468 11 0.81176470412927526
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.18823529587072468 11 0.81176470412927526
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.18823529587072468 11 0.81176470412927526
		2 10 0.18823529587072468 11 0.81176470412927526
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.26666667262713095 11 0.73333332737286905
		2 10 0.59215685175914456 11 0.40784314824085544
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.31372549194915617 11 0.68627450805084378
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.64313725700565405 11 0.35686274299434595
		2 10 0.59215685175914456 11 0.40784314824085544
		1 11 1
		1 11 1
		2 10 0.28235294573447273 11 0.71764705426552733
		2 10 0.61568626071892618 11 0.38431373928107387
		2 10 0.18823529587072468 11 0.81176470412927526
		1 11 1
		2 10 0.28235294573447273 11 0.71764705426552733
		1 11 1
		2 10 0.26666667262713095 11 0.73333332737286905
		1 11 1
		2 10 0.18823529587072468 11 0.81176470412927526
		1 11 1
		2 10 0.31372549194915617 11 0.68627450805084378
		1 11 1
		2 10 0.26666667262713095 11 0.73333332737286905
		1 11 1
		2 10 0.64313725700565405 11 0.35686274299434595
		1 11 1
		2 10 0.31372549194915617 11 0.68627450805084378
		1 11 1
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.61960782887888977 11 0.38039217112111023
		2 9 0.019607842625940577 10 0.98039215737405938
		2 10 0.61960782887888977 11 0.38039217112111023
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.36078431127118138 11 0.63921568872881862
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.54509803383958133 11 0.45490196616041861
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.96470588296651838 11 0.035294117033481634
		2 10 0.62352939703885335 11 0.37647060296114665
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.96470588296651838 11 0.035294117033481634
		1 10 1
		2 10 0.65882353011299577 11 0.34117646988700417
		2 10 0.69019607632767932 11 0.30980392367232074
		1 10 1
		2 9 0.019607842625940577 10 0.98039215737405938
		2 10 0.69019607632767932 11 0.30980392367232074
		2 10 0.61960782887888977 11 0.38039217112111023
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.96470588296651838 11 0.035294117033481634
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.96470588296651838 11 0.035294117033481634
		2 10 0.96470588296651838 11 0.035294117033481634
		1 10 1
		2 10 0.96470588296651838 11 0.035294117033481634
		1 10 1
		1 10 1
		2 9 0.019607842625940577 10 0.98039215737405938
		1 10 1
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.90588235066217548 11 0.094117649337824488
		2 10 0.96470588296651838 11 0.035294117033481634
		2 10 0.95294117498047226 11 0.047058825019527781
		2 10 0.96470588296651838 11 0.035294117033481634
		2 10 0.95294117498047226 11 0.047058825019527781
		1 10 1
		2 10 0.96470588296651838 11 0.035294117033481634
		1 10 1
		2 10 0.96470588296651838 11 0.035294117033481634
		1 10 1
		1 10 1
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 9 0.019607842625940577 10 0.98039215737405938
		2 25 0.96470588296651838 26 0.035294117033481634
		2 25 0.95294117498047226 26 0.047058825019527781
		2 24 0.058823529411764705 25 0.94117647058823528
		2 24 0.11372548984546289 25 0.88627451015453707
		2 24 0.16862744326685047 25 0.83137255673314958
		2 25 0.90588235066217548 26 0.094117649337824488
		2 24 0.17254901136837816 25 0.82745098863162181
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.066666665673255993 25 0.93333333432674404
		1 25 1
		2 24 0.058823529411764705 25 0.94117647058823528
		2 25 0.96470588296651838 26 0.035294117033481634
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.17254901136837816 25 0.82745098863162181
		2 24 0.10588235364240753 25 0.8941176463575925
		2 24 0.10588235364240753 25 0.8941176463575925
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.066666665673255993 25 0.93333333432674404
		1 25 1
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.71764705426552733 26 0.28235294573447273
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.64705882528248948 26 0.35294117471751052
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.26666667262713095 26 0.73333332737286905
		1 25 0.54509803383958133;
	setAttr ".wl[2070:2333].w"
		1 26 0.45490196616041861
		2 25 0.36078431127118138 26 0.63921568872881862
		2 26 0.40000001192092827 27 0.59999998807907173
		2 26 0.44705882984049145 27 0.55294117015950861
		1 26 1
		1 26 1
		1 26 1
		2 26 0.50980392039990896 27 0.49019607960009098
		1 26 1
		2 26 0.43529412536060064 27 0.56470587463939936
		1 26 1
		2 26 0.47058823880027301 27 0.52941176119972699
		1 26 1
		2 26 0.40000001192092827 27 0.59999998807907173
		2 26 0.43529412536060064 27 0.56470587463939936
		2 26 0.58039214727925381 27 0.41960785272074624
		1 26 1
		1 26 1
		2 26 0.44705882984049145 27 0.55294117015950861
		2 26 0.50980392039990896 27 0.49019607960009098
		1 26 1
		1 26 1
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.71764705426552733 26 0.28235294573447273
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.74901960048021077 26 0.25098039951978923
		2 25 0.59215685175914456 26 0.40784314824085544
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.64705882528248948 26 0.35294117471751052
		2 25 0.74901960048021077 26 0.25098039951978923
		2 25 0.95294117498047226 26 0.047058825019527781
		2 25 0.90588235066217548 26 0.094117649337824488
		2 24 0.11372548984546289 25 0.88627451015453707
		2 24 0.16862744326685047 25 0.83137255673314958
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.59215685175914456 26 0.40784314824085544
		2 25 0.59215685175914456 26 0.40784314824085544
		2 25 0.59215685175914456 26 0.40784314824085544
		2 25 0.59215685175914456 26 0.40784314824085544
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.28235294573447273 26 0.71764705426552733
		2 26 0.40000001192092827 27 0.59999998807907173
		2 26 0.20784313608618354 27 0.79215686391381646
		2 26 0.44705882984049145 27 0.55294117015950861
		2 27 0.6627450983898312 28 0.33725490161016874
		2 26 0.40000001192092827 27 0.59999998807907173
		2 26 0.47058823880027301 27 0.52941176119972699
		2 26 0.20784313608618354 27 0.79215686391381646
		2 27 0.82745098863162181 35 0.17254901136837816
		2 26 0.58039214727925381 27 0.41960785272074624
		2 26 0.23529411238782594 27 0.76470588761217406
		2 26 0.47058823880027301 27 0.52941176119972699
		2 27 0.82745098863162181 35 0.17254901136837816
		2 27 0.7137254859886919 28 0.28627451401130816
		2 26 0.23529411238782594 27 0.76470588761217406
		2 26 0.43529412536060064 27 0.56470587463939936
		2 26 0.58039214727925381 27 0.41960785272074624
		2 27 0.47843137512020023 28 0.52156862487979982
		2 27 0.7137254859886919 28 0.28627451401130816
		2 26 0.50980392039990896 27 0.49019607960009098
		2 26 0.43529412536060064 27 0.56470587463939936
		2 26 0.44705882984049145 27 0.55294117015950861
		2 27 0.6627450983898312 28 0.33725490161016874
		2 26 0.50980392039990896 27 0.49019607960009098
		2 27 0.47843137512020023 28 0.52156862487979982
		2 29 0.69411764460451475 30 0.30588235539548531
		2 29 0.70588234943502104 30 0.29411765056497902
		2 29 0.92941176619599841 30 0.070588233804001629
		2 28 0.19215686391381645 29 0.80784313608618352
		2 31 0.67450980322033749 32 0.32549019677966246
		2 31 0.72941175909603362 32 0.27058824090396638
		2 31 0.8392156929362049 35 0.1607843070637951
		2 27 0.56862744279936295 31 0.43137255720063705
		2 35 0.25098039951978923 36 0.74901960048021077
		2 27 0.47058823880027301 35 0.52941176119972699
		2 35 0.34117646988700417 36 0.65882353011299577
		2 27 0.41568628456078266 35 0.5843137154392174
		2 28 0.43137255720063705 29 0.56862744279936295
		2 28 0.56862744279936295 29 0.43137255720063705
		2 27 0.47843137512020023 28 0.52156862487979982
		2 27 0.7137254859886919 28 0.28627451401130816
		2 27 0.6627450983898312 28 0.33725490161016874
		2 28 0.52549019303976341 29 0.47450980696023659
		2 27 0.47843137512020023 28 0.52156862487979982
		2 28 0.43137255720063705 29 0.56862744279936295
		2 31 0.8392156929362049 35 0.1607843070637951
		2 27 0.56862744279936295 31 0.43137255720063705
		2 26 0.20784313608618354 27 0.79215686391381646
		2 27 0.6627450983898312 28 0.33725490161016874
		2 27 0.52941176119972699 35 0.47058823880027301
		2 27 0.34901960644067509 35 0.65098039355932491
		2 26 0.23529411238782594 27 0.76470588761217406
		2 27 0.82745098863162181 35 0.17254901136837816
		2 29 0.65098039355932491 30 0.34901960644067509
		2 28 0.11372548984546289 29 0.88627451015453707
		2 29 0.70980391771185647 30 0.29019608228814359
		2 28 0.26274510435029552 29 0.73725489564970448
		2 28 0.52549019303976341 29 0.47450980696023659
		2 28 0.11372548984546289 29 0.88627451015453707
		2 28 0.43137255720063705 29 0.56862744279936295
		2 29 0.92941176619599841 30 0.070588233804001629
		2 31 0.72941175909603362 32 0.27058824090396638
		2 27 0.22352940825855061 31 0.77647059174144939
		2 27 0.56862744279936295 31 0.43137255720063705
		2 27 0.58039214727925381 28 0.41960785272074624
		2 31 0.69411764460451475 32 0.30588235539548531
		2 27 0.67843137149717292 35 0.32156862850282703
		2 27 0.22352940825855061 31 0.77647059174144939
		2 27 0.58039214727925381 28 0.41960785272074624
		2 35 0.28627451401130816 36 0.7137254859886919
		2 35 0.44313726168052781 36 0.55686273831947219
		2 27 0.52156862487979982 35 0.47843137512020023
		2 27 0.52941176119972699 35 0.47058823880027301
		2 35 0.44313726168052781 36 0.55686273831947219
		2 35 0.19607843195690822 36 0.80392156804309178
		2 27 0.52941176119972699 35 0.47058823880027301
		2 27 0.34901960644067509 35 0.65098039355932491
		2 32 0.53333332935969058 33 0.46666667064030942
		2 32 0.57254901095932653 33 0.42745098904067341
		2 31 0.67450980322033749 32 0.32549019677966246
		2 31 0.72941175909603362 32 0.27058824090396638
		2 36 0.086274506326984191 37 0.91372549367301581
		2 35 0.25098039951978923 36 0.74901960048021077
		1 37 1
		2 35 0.34117646988700417 36 0.65882353011299577
		2 32 0.57254901095932653 33 0.42745098904067341
		2 32 0.53725489751965416 33 0.46274510248034584
		2 31 0.72941175909603362 32 0.27058824090396638
		2 27 0.22352940825855061 31 0.77647059174144939
		2 27 0.22352940825855061 31 0.77647059174144939
		2 32 0.53725489751965416 33 0.46274510248034584
		2 31 0.69411764460451475 32 0.30588235539548531
		2 32 0.44705882984049145 33 0.55294117015950861
		1 37 1
		2 36 0.15686273896226741 37 0.84313726103773257
		2 35 0.28627451401130816 36 0.7137254859886919
		2 35 0.44313726168052781 36 0.55686273831947219
		2 35 0.44313726168052781 36 0.55686273831947219
		2 36 0.15686273896226741 37 0.84313726103773257
		2 35 0.19607843195690822 36 0.80392156804309178
		1 37 1
		2 33 0.90588235066217548 34 0.094117649337824488
		2 33 0.88627451015453707 34 0.11372548984546289
		2 32 0.047058825019527781 33 0.95294117498047226
		2 33 0.94901960684972653 34 0.050980393150273424
		1 37 1
		1 37 1
		1 37 1
		1 37 1
		2 29 0.70588234943502104 30 0.29411765056497902
		2 29 0.70980391771185647 30 0.29019608228814359
		2 28 0.19215686391381645 29 0.80784313608618352
		2 28 0.26274510435029552 29 0.73725489564970448
		2 32 0.44705882984049145 33 0.55294117015950861
		2 32 0.53333332935969058 33 0.46666667064030942
		2 31 0.69411764460451475 32 0.30588235539548531
		2 31 0.67450980322033749 32 0.32549019677966246
		2 31 0.8392156929362049 35 0.1607843070637951
		2 27 0.33333333333333331 36 0.66666666666666663
		2 27 0.67843137149717292 35 0.32156862850282703
		2 36 0.84313726103773257 37 0.15686273896226741
		2 27 0.33333333333333331 36 0.66666666666666663
		2 36 0.13725489845462899 37 0.86274510154537098
		2 36 0.84313726103773257 37 0.15686273896226741
		2 36 0.2 37 0.8
		2 31 0.67450980322033749 32 0.32549019677966246
		2 31 0.8392156929362049 35 0.1607843070637951
		2 31 0.69411764460451475 32 0.30588235539548531
		2 27 0.67843137149717292 35 0.32156862850282703
		2 33 0.90588235066217548 34 0.094117649337824488
		2 32 0.047058825019527781 33 0.95294117498047226
		2 32 0.57254901095932653 33 0.42745098904067341
		2 32 0.53725489751965416 33 0.46274510248034584
		2 33 0.88627451015453707 34 0.11372548984546289
		2 33 0.90588235066217548 34 0.094117649337824488
		2 32 0.53333332935969058 33 0.46666667064030942
		2 32 0.57254901095932653 33 0.42745098904067341
		2 33 0.88627451015453707 34 0.11372548984546289
		2 32 0.53333332935969058 33 0.46666667064030942
		2 33 0.94901960684972653 34 0.050980393150273424
		2 32 0.44705882984049145 33 0.55294117015950861
		2 32 0.53725489751965416 33 0.46274510248034584
		2 32 0.12941176225157364 33 0.87058823774842642
		2 32 0.44705882984049145 33 0.55294117015950861
		2 33 0.89019607825606484 34 0.10980392174393522
		1 37 1
		1 37 1
		1 37 1
		2 36 0.15686273896226741 37 0.84313726103773257
		2 37 0.95294117498047226 38 0.047058825019527781
		1 37 1
		2 36 0.13725489845462899 37 0.86274510154537098
		2 36 0.2 37 0.8
		2 36 0.066666665673255993 37 0.93333333432674404
		2 36 0.086274506326984191 37 0.91372549367301581
		1 37 1
		1 37 1
		2 36 0.15686273896226741 37 0.84313726103773257
		1 37 1
		1 37 1
		1 37 1
		2 32 0.047058825019527781 33 0.95294117498047226
		2 33 0.94901960684972653 34 0.050980393150273424
		2 32 0.12941176225157364 33 0.87058823774842642
		2 33 0.89019607825606484 34 0.10980392174393522
		2 28 0.11372548984546289 29 0.88627451015453707
		2 28 0.52549019303976341 29 0.47450980696023659
		2 28 0.26274510435029552 29 0.73725489564970448
		2 28 0.60392155623903532 29 0.39607844376096463
		2 28 0.19215686391381645 29 0.80784313608618352
		2 28 0.26274510435029552 29 0.73725489564970448
		2 28 0.56862744279936295 29 0.43137255720063705
		2 28 0.60392155623903532 29 0.39607844376096463
		2 28 0.56862744279936295 29 0.43137255720063705
		2 28 0.43137255720063705 29 0.56862744279936295
		2 28 0.19215686391381645 29 0.80784313608618352
		2 29 0.92941176619599841 30 0.070588233804001629
		2 27 0.82745098863162181 35 0.17254901136837816
		2 27 0.41568628456078266 35 0.5843137154392174
		2 26 0.20784313608618354 27 0.79215686391381646
		2 27 0.47058823880027301 35 0.52941176119972699
		2 35 0.25098039951978923 36 0.74901960048021077
		2 27 0.33333333333333331 36 0.66666666666666663
		2 27 0.47058823880027301 35 0.52941176119972699
		2 31 0.8392156929362049 35 0.1607843070637951
		2 36 0.13725489845462899 37 0.86274510154537098
		1 27 0.33333333333333331;
	setAttr ".wl[2333:2626].w"
		1 36 0.66666666666666663
		2 36 0.086274506326984191 37 0.91372549367301581
		2 35 0.25098039951978923 36 0.74901960048021077
		2 37 0.95294117498047226 38 0.047058825019527781
		2 36 0.13725489845462899 37 0.86274510154537098
		2 36 0.066666665673255993 37 0.93333333432674404
		2 36 0.086274506326984191 37 0.91372549367301581
		2 37 0.95294117498047226 38 0.047058825019527781
		2 36 0.066666665673255993 37 0.93333333432674404
		1 37 1
		1 37 1
		1 37 1
		1 37 1
		2 36 0.2 37 0.8
		2 36 0.031372548888127016 37 0.96862745111187298
		2 36 0.2 37 0.8
		2 36 0.031372548888127016 37 0.96862745111187298
		2 36 0.84313726103773257 37 0.15686273896226741
		2 35 0.1607843070637951 36 0.8392156929362049
		2 36 0.066666665673255993 37 0.93333333432674404
		1 37 1
		1 37 1
		1 37 1
		1 37 1
		1 37 1
		1 37 1
		1 37 1
		2 35 0.19607843195690822 36 0.80392156804309178
		1 37 1
		2 35 0.34117646988700417 36 0.65882353011299577
		1 37 1
		2 27 0.34901960644067509 35 0.65098039355932491
		2 35 0.19607843195690822 36 0.80392156804309178
		2 27 0.41568628456078266 35 0.5843137154392174
		2 35 0.34117646988700417 36 0.65882353011299577
		1 37 1
		1 37 1
		2 36 0.031372548888127016 37 0.96862745111187298
		1 37 1
		2 36 0.031372548888127016 37 0.96862745111187298
		1 37 1
		2 35 0.1607843070637951 36 0.8392156929362049
		2 35 0.28627451401130816 36 0.7137254859886919
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.61568626071892618 26 0.38431373928107387
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.28235294573447273 26 0.71764705426552733
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.59215685175914456 26 0.40784314824085544
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.59215685175914456 26 0.40784314824085544
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.61568626071892618 26 0.38431373928107387
		1 26 1
		2 25 0.28235294573447273 26 0.71764705426552733
		1 26 1
		2 25 0.18823529587072468 26 0.81176470412927526
		2 25 0.28235294573447273 26 0.71764705426552733
		1 26 1
		1 26 1
		2 25 0.26666667262713095 26 0.73333332737286905
		2 25 0.18823529587072468 26 0.81176470412927526
		1 26 1
		1 26 1
		2 25 0.31372549194915617 26 0.68627450805084378
		2 25 0.26666667262713095 26 0.73333332737286905
		1 26 1
		1 26 1
		2 25 0.64313725700565405 26 0.35686274299434595
		2 25 0.31372549194915617 26 0.68627450805084378
		1 26 1
		1 26 1
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.69019607632767932 26 0.30980392367232074
		2 25 0.61960782887888977 26 0.38039217112111023
		2 24 0.019607842625940577 25 0.98039215737405938
		2 25 0.90588235066217548 26 0.094117649337824488
		2 25 0.61960782887888977 26 0.38039217112111023
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.95294117498047226 26 0.047058825019527781
		2 25 0.54509803383958133 26 0.45490196616041861
		2 25 0.90588235066217548 26 0.094117649337824488
		2 25 0.36078431127118138 26 0.63921568872881862
		2 25 0.96470588296651838 26 0.035294117033481634
		2 25 0.62352939703885335 26 0.37647060296114665
		2 25 0.95294117498047226 26 0.047058825019527781
		2 25 0.54509803383958133 26 0.45490196616041861
		1 25 1
		2 25 0.65882353011299577 26 0.34117646988700417
		2 25 0.96470588296651838 26 0.035294117033481634
		2 25 0.62352939703885335 26 0.37647060296114665
		2 24 0.019607842625940577 25 0.98039215737405938
		2 25 0.69019607632767932 26 0.30980392367232074
		1 25 1
		2 25 0.65882353011299577 26 0.34117646988700417
		2 24 0.019607842625940577 25 0.98039215737405938
		2 25 0.61960782887888977 26 0.38039217112111023
		2 24 0.019607842625940577 25 0.98039215737405938
		2 25 0.69019607632767932 26 0.30980392367232074
		2 24 0.019607842625940577 25 0.98039215737405938
		2 25 0.90588235066217548 26 0.094117649337824488
		2 24 0.019607842625940577 25 0.98039215737405938
		2 25 0.90588235066217548 26 0.094117649337824488
		2 25 0.90588235066217548 26 0.094117649337824488
		2 25 0.95294117498047226 26 0.047058825019527781
		2 25 0.90588235066217548 26 0.094117649337824488
		2 25 0.95294117498047226 26 0.047058825019527781
		2 25 0.96470588296651838 26 0.035294117033481634
		2 25 0.96470588296651838 26 0.035294117033481634
		2 25 0.95294117498047226 26 0.047058825019527781
		2 25 0.95294117498047226 26 0.047058825019527781
		1 25 1
		1 25 1
		2 25 0.96470588296651838 26 0.035294117033481634
		2 25 0.96470588296651838 26 0.035294117033481634
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.019607842625940577 25 0.98039215737405938
		1 25 1
		1 25 1
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.019607842625940577 25 0.98039215737405938
		2 25 0.90588235066217548 26 0.094117649337824488
		2 24 0.019607842625940577 25 0.98039215737405938
		2 25 0.90588235066217548 26 0.094117649337824488
		2 24 0.019607842625940577 25 0.98039215737405938
		2 25 0.95294117498047226 26 0.047058825019527781
		2 25 0.95294117498047226 26 0.047058825019527781
		2 25 0.90588235066217548 26 0.094117649337824488
		2 25 0.90588235066217548 26 0.094117649337824488
		2 25 0.96470588296651838 26 0.035294117033481634
		2 25 0.96470588296651838 26 0.035294117033481634
		2 25 0.95294117498047226 26 0.047058825019527781
		2 25 0.95294117498047226 26 0.047058825019527781
		1 25 1
		1 25 1
		2 25 0.96470588296651838 26 0.035294117033481634
		2 25 0.96470588296651838 26 0.035294117033481634
		2 24 0.019607842625940577 25 0.98039215737405938
		1 25 1
		2 24 0.019607842625940577 25 0.98039215737405938
		1 25 1
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.019607842625940577 25 0.98039215737405938
		2 24 0.019607842625940577 25 0.98039215737405938
		2 9 0.17254901136837816 10 0.82745098863162181
		2 9 0.16862744326685047 10 0.83137255673314958
		2 9 0.70588234943502104 10 0.29411765056497902
		2 9 0.69411764460451475 10 0.30588235539548531
		2 9 0.70588234943502104 10 0.29411765056497902
		2 9 0.49411764776005462 10 0.50588235223994538
		2 9 0.17254901136837816 10 0.82745098863162181
		2 9 0.10588235364240753 10 0.8941176463575925
		2 9 0.11372548984546289 10 0.88627451015453707
		2 9 0.34901960644067509 10 0.65098039355932491
		2 9 0.16862744326685047 10 0.83137255673314958
		2 9 0.69411764460451475 10 0.30588235539548531
		2 9 0.34901960644067509 10 0.65098039355932491
		2 9 0.11372548984546289 10 0.88627451015453707
		2 9 0.2 10 0.8
		2 9 0.058823529411764705 10 0.94117647058823528
		2 9 0.058823529411764705 10 0.94117647058823528
		2 9 0.066666665673255993 10 0.93333333432674404
		2 9 0.2 10 0.8
		2 9 0.19607843195690822 10 0.80392156804309178
		2 9 0.49411764776005462 10 0.50588235223994538
		2 9 0.19607843195690822 10 0.80392156804309178
		2 9 0.10588235364240753 10 0.8941176463575925
		2 9 0.066666665673255993 10 0.93333333432674404
		2 24 0.69411764460451475 25 0.30588235539548531
		2 24 0.16862744326685047 25 0.83137255673314958
		2 24 0.70588234943502104 25 0.29411765056497902
		2 24 0.17254901136837816 25 0.82745098863162181
		2 24 0.70588234943502104 25 0.29411765056497902
		2 24 0.17254901136837816 25 0.82745098863162181
		2 24 0.49411764776005462 25 0.50588235223994538
		2 24 0.10588235364240753 25 0.8941176463575925
		2 24 0.69411764460451475 25 0.30588235539548531
		2 24 0.34901960644067509 25 0.65098039355932491
		2 24 0.16862744326685047 25 0.83137255673314958
		2 24 0.11372548984546289 25 0.88627451015453707
		2 24 0.058823529411764705 25 0.94117647058823528
		2 24 0.11372548984546289 25 0.88627451015453707
		2 24 0.2 25 0.8
		2 24 0.34901960644067509 25 0.65098039355932491
		2 24 0.058823529411764705 25 0.94117647058823528
		2 24 0.2 25 0.8
		2 24 0.066666665673255993 25 0.93333333432674404
		2 24 0.19607843195690822 25 0.80392156804309178
		2 24 0.49411764776005462 25 0.50588235223994538
		2 24 0.10588235364240753 25 0.8941176463575925
		2 24 0.19607843195690822 25 0.80392156804309178
		2 24 0.066666665673255993 25 0.93333333432674404
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 4 0.73725489564970448 5 0.26274510435029552
		1 4 1
		2 4 0.82745098863162181 9 0.17254901136837816
		2 4 0.98823529367937768 9 0.011764706320622362
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.73725489564970448 5 0.26274510435029552
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.82745098863162181 9 0.17254901136837816
		1 4 1
		2 4 0.61568626071892618 5 0.38431373928107387
		2 4 0.99215686275605475 5 0.0078431372439452252;
	setAttr ".wl[2627:2917].w"
		2 4 0.61568626071892618 5 0.38431373928107387
		2 4 0.91764706180376143 10 0.082352938196238554
		2 4 0.92156862993450706 9 0.078431370065492903
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.82745098863162181 9 0.17254901136837816
		2 4 0.90980392554227019 9 0.090196074457729827
		2 4 0.91764706180376143 10 0.082352938196238554
		2 4 0.92156862993450706 9 0.078431370065492903
		2 3 0.83529412483467724 9 0.16470587516532278
		2 2 0.44705882984049145 3 0.55294117015950861
		2 3 0.61960782887888977 4 0.38039217112111023
		2 2 0.42745098904067341 3 0.57254901095932653
		2 2 0.73725489564970448 3 0.26274510435029552
		2 2 0.62745098389831233 3 0.37254901610168767
		2 2 0.44705882984049145 3 0.55294117015950861
		2 2 0.42745098904067341 3 0.57254901095932653
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.49411764776005462 3 0.50588235223994538
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.26274510435029552 2 0.73725489564970448
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.49411764776005462 3 0.50588235223994538
		2 1 0.60392155623903532 2 0.39607844376096463
		2 1 0.7686274556552658 2 0.23137254434473417
		2 2 0.73725489564970448 3 0.26274510435029552
		2 2 0.62745098389831233 3 0.37254901610168767
		2 1 0.60392155623903532 2 0.39607844376096463
		2 1 0.850980397240788 44 0.14901960275921206
		2 1 0.7686274556552658 2 0.23137254434473417
		2 1 0.82745098863162181 39 0.17254901136837816
		2 1 0.6117646925589626 44 0.38823530744103746
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.7137254859886919 39 0.28627451401130816
		2 1 0.64313725700565405 39 0.35686274299434595
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.69411764460451475 39 0.30588235539548531
		2 1 0.38823530744103746 44 0.6117646925589626
		2 1 0.83137255673314958 39 0.16862744326685047
		2 1 0.79215686391381646 44 0.20784313608618354
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 2 0.10588235364240753 3 0.8941176463575925
		2 2 0.10588235364240753 3 0.8941176463575925
		2 3 0.75686275152599047 9 0.24313724847400947
		2 3 0.75686275152599047 9 0.24313724847400947
		2 1 0.7686274556552658 2 0.23137254434473417
		2 1 0.65882353011299577 2 0.34117646988700417
		2 2 0.85490196534231566 3 0.14509803465768437
		2 2 0.8 3 0.2
		2 2 0.85490196534231566 3 0.14509803465768437
		2 2 0.8 3 0.2
		2 2 0.10588235364240753 3 0.8941176463575925
		2 2 0.10588235364240753 3 0.8941176463575925
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.10588235364240753 3 0.8941176463575925
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.75686275152599047 9 0.24313724847400947
		2 9 0.70588234943502104 10 0.29411765056497902
		2 9 0.69411764460451475 10 0.30588235539548531
		2 4 0.7137254859886919 9 0.28627451401130816
		2 4 0.74901960048021077 9 0.25098039951978923
		2 3 0.33725490161016874 4 0.6627450983898312
		2 9 0.6078431243989989 10 0.39215687560100104
		2 9 0.91764706180376143 10 0.082352938196238554
		2 9 0.49019607960009098 10 0.50980392039990896
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.74901960048021077 9 0.25098039951978923
		2 9 0.6078431243989989 10 0.39215687560100104
		2 9 0.69411764460451475 10 0.30588235539548531
		2 4 0.95686274667580917 9 0.043137253324190876
		2 4 0.9450980387189809 9 0.054901961281019068
		2 4 0.82745098863162181 9 0.17254901136837816
		2 4 0.77254902369835765 9 0.2274509763016424
		2 1 0.26274510435029552 2 0.73725489564970448
		2 2 0.85490196534231566 3 0.14509803465768437
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.10588235364240753 3 0.8941176463575925
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.7686274556552658 2 0.23137254434473417
		2 1 0.26274510435029552 2 0.73725489564970448
		2 2 0.85490196534231566 3 0.14509803465768437
		2 2 0.8 3 0.2
		2 2 0.73725489564970448 3 0.26274510435029552
		2 2 0.10588235364240753 3 0.8941176463575925
		2 2 0.44705882984049145 3 0.55294117015950861
		2 9 0.63529412045198319 10 0.36470587954801681
		2 9 0.40000001192092827 10 0.59999998807907173
		2 9 0.49411764776005462 10 0.50588235223994538
		2 9 0.3176470602259916 10 0.68235293977400835
		2 9 0.63529412045198319 10 0.36470587954801681
		2 4 0.82745098863162181 9 0.17254901136837816
		2 9 0.40000001192092827 10 0.59999998807907173
		2 4 0.91764706180376143 10 0.082352938196238554
		2 2 0.73725489564970448 3 0.26274510435029552
		2 2 0.8 3 0.2
		2 1 0.60392155623903532 2 0.39607844376096463
		2 1 0.65882353011299577 2 0.34117646988700417
		2 1 0.2274509763016424 44 0.77254902369835765
		2 1 0.41176471640081902 44 0.58823528359918098
		2 1 0.27843137745763724 44 0.72156862254236276
		2 1 0.43921569352056422 44 0.56078430647943578
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.41176471640081902 44 0.58823528359918098
		2 1 0.23529411238782594 44 0.76470588761217406
		2 1 0.2274509763016424 44 0.77254902369835765
		2 1 0.65882353011299577 2 0.34117646988700417
		2 1 0.7686274556552658 2 0.23137254434473417
		2 1 0.66666666666666663 44 0.33333333333333331
		2 1 0.72549019081919819 44 0.27450980918080181
		2 1 0.60392155623903532 2 0.39607844376096463
		2 1 0.65882353011299577 2 0.34117646988700417
		2 1 0.850980397240788 44 0.14901960275921206
		2 1 0.66666666666666663 44 0.33333333333333331
		2 1 0.850980397240788 44 0.14901960275921206
		2 1 0.6117646925589626 44 0.38823530744103746
		2 1 0.82745098863162181 39 0.17254901136837816
		2 1 0.7137254859886919 39 0.28627451401130816
		2 1 0.7686274556552658 2 0.23137254434473417
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.72549019081919819 44 0.27450980918080181
		2 1 0.79215686391381646 44 0.20784313608618354
		2 3 0.83529412483467724 9 0.16470587516532278
		2 3 0.75686275152599047 9 0.24313724847400947
		2 2 0.44705882984049145 3 0.55294117015950861
		2 2 0.10588235364240753 3 0.8941176463575925
		2 9 0.63529412045198319 10 0.36470587954801681
		2 9 0.49411764776005462 10 0.50588235223994538
		2 4 0.7137254859886919 9 0.28627451401130816
		2 9 0.70588234943502104 10 0.29411765056497902
		2 4 0.82745098863162181 9 0.17254901136837816
		2 3 0.83529412483467724 9 0.16470587516532278
		2 4 0.90980392554227019 9 0.090196074457729827
		2 3 0.61960782887888977 4 0.38039217112111023
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.6117646925589626 44 0.38823530744103746
		2 1 0.41176471640081902 44 0.58823528359918098
		2 1 0.66666666666666663 44 0.33333333333333331
		2 1 0.43921569352056422 44 0.56078430647943578
		2 1 0.41176471640081902 44 0.58823528359918098
		2 1 0.72549019081919819 44 0.27450980918080181
		2 1 0.66666666666666663 44 0.33333333333333331
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.43921569352056422 44 0.56078430647943578
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.72549019081919819 44 0.27450980918080181
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 1 0.4588235343203822 44 0.54117646567961775
		2 1 0.20784313608618354 44 0.79215686391381646
		2 1 0.57254901095932653 44 0.42745098904067341
		2 1 0.16862744326685047 44 0.83137255673314958
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.98823529367937768 5 0.011764706320622362
		2 4 0.98039215737405938 24 0.019607842625940577
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.70980391771185647 24 0.29019608228814359
		1 4 1
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.61568626071892618 5 0.38431373928107387
		2 4 0.61568626071892618 5 0.38431373928107387
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.92156862993450706 9 0.078431370065492903
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.91764706180376143 25 0.082352938196238554
		2 4 0.92156862993450706 9 0.078431370065492903
		2 4 0.90980392554227019 9 0.090196074457729827
		2 4 0.91764706180376143 25 0.082352938196238554
		2 4 0.82745098863162181 24 0.17254901136837816
		2 3 0.83529412483467724 24 0.16470587516532278
		2 3 0.61960782887888977 4 0.38039217112111023
		2 2 0.44705882984049145 3 0.55294117015950861
		2 2 0.42745098904067341 3 0.57254901095932653
		2 2 0.42745098904067341 3 0.57254901095932653
		2 2 0.62745098389831233 3 0.37254901610168767
		2 2 0.44705882984049145 3 0.55294117015950861
		2 2 0.73725489564970448 3 0.26274510435029552
		2 2 0.36470587954801681 3 0.63529412045198319
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 2 0.36470587954801681 3 0.63529412045198319
		2 2 0.43921569352056422 3 0.56078430647943578
		2 3 0.91764706180376143 24 0.082352938196238554
		2 2 0.52156862487979982 3 0.47843137512020023
		2 2 0.43921569352056422 3 0.56078430647943578
		2 2 0.52156862487979982 3 0.47843137512020023
		2 2 0.52156862487979982 3 0.47843137512020023
		2 1 0.38823530744103746 2 0.6117646925589626
		2 2 0.52156862487979982 3 0.47843137512020023
		2 1 0.38823530744103746 2 0.6117646925589626
		2 2 0.62745098389831233 3 0.37254901610168767
		2 1 0.7686274556552658 2 0.23137254434473417
		2 2 0.73725489564970448 3 0.26274510435029552
		2 1 0.60392155623903532 2 0.39607844376096463
		2 1 0.60392155623903532 2 0.39607844376096463
		1 1 0.7686274556552658;
	setAttr ".wl[2917:3187].w"
		1 2 0.23137254434473417
		2 1 0.850980397240788 39 0.14901960275921206
		2 1 0.82745098863162181 39 0.17254901136837816
		2 1 0.6117646925589626 39 0.38823530744103746
		2 1 0.7137254859886919 39 0.28627451401130816
		2 1 0.46274510248034584 39 0.53725489751965416
		2 1 0.64313725700565405 39 0.35686274299434595
		2 1 0.38823530744103746 2 0.6117646925589626
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.38823530744103746 2 0.6117646925589626
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.83137255673314958 39 0.16862744326685047
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.38823530744103746 39 0.6117646925589626
		2 1 0.83137255673314958 39 0.16862744326685047
		2 1 0.69411764460451475 39 0.30588235539548531
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 3 0.75686275152599047 24 0.24313724847400947
		2 4 0.74901960048021077 24 0.25098039951978923
		2 3 0.75686275152599047 24 0.24313724847400947
		2 4 0.7137254859886919 24 0.28627451401130816
		2 2 0.10588235364240753 3 0.8941176463575925
		2 3 0.75686275152599047 24 0.24313724847400947
		2 2 0.10588235364240753 3 0.8941176463575925
		2 3 0.75686275152599047 24 0.24313724847400947
		2 2 0.8 3 0.2
		2 1 0.65882353011299577 2 0.34117646988700417
		2 2 0.85490196534231566 3 0.14509803465768437
		2 1 0.7686274556552658 2 0.23137254434473417
		2 2 0.10588235364240753 3 0.8941176463575925
		2 2 0.8 3 0.2
		2 2 0.10588235364240753 3 0.8941176463575925
		2 2 0.85490196534231566 3 0.14509803465768437
		2 3 0.75686275152599047 24 0.24313724847400947
		2 2 0.10588235364240753 3 0.8941176463575925
		2 3 0.91764706180376143 24 0.082352938196238554
		2 2 0.49411764776005462 3 0.50588235223994538
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.75686275152599047 24 0.24313724847400947
		2 4 0.74901960048021077 24 0.25098039951978923
		2 4 0.74901960048021077 24 0.25098039951978923
		2 24 0.69411764460451475 25 0.30588235539548531
		2 4 0.7137254859886919 24 0.28627451401130816
		2 24 0.70588234943502104 25 0.29411765056497902
		2 24 0.49019607960009098 25 0.50980392039990896
		2 24 0.6078431243989989 25 0.39215687560100104
		2 24 0.91764706180376143 25 0.082352938196238554
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 24 0.6078431243989989 25 0.39215687560100104
		2 4 0.74901960048021077 24 0.25098039951978923
		2 24 0.69411764460451475 25 0.30588235539548531
		1 4 1
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.89803921445912016 24 0.10196078554087985
		2 4 0.75294118348289873 24 0.24705881651710124
		2 2 0.10588235364240753 3 0.8941176463575925
		2 2 0.85490196534231566 3 0.14509803465768437
		2 2 0.49411764776005462 3 0.50588235223994538
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.7686274556552658 2 0.23137254434473417
		2 2 0.85490196534231566 3 0.14509803465768437
		2 2 0.8 3 0.2
		2 2 0.10588235364240753 3 0.8941176463575925
		2 2 0.73725489564970448 3 0.26274510435029552
		2 2 0.44705882984049145 3 0.55294117015950861
		2 24 0.3176470602259916 25 0.68235293977400835
		2 24 0.40000001192092827 25 0.59999998807907173
		2 24 0.49411764776005462 25 0.50588235223994538
		2 24 0.63529412045198319 25 0.36470587954801681
		2 24 0.63529412045198319 25 0.36470587954801681
		2 24 0.40000001192092827 25 0.59999998807907173
		2 4 0.82745098863162181 24 0.17254901136837816
		2 4 0.91764706180376143 25 0.082352938196238554
		2 2 0.73725489564970448 3 0.26274510435029552
		2 1 0.60392155623903532 2 0.39607844376096463
		2 2 0.8 3 0.2
		2 1 0.65882353011299577 2 0.34117646988700417
		2 1 0.43921569352056422 39 0.56078430647943578
		2 1 0.41176471640081902 39 0.58823528359918098
		2 1 0.27843137745763724 39 0.72156862254236276
		2 1 0.2274509763016424 39 0.77254902369835765
		2 1 0.46274510248034584 39 0.53725489751965416
		2 1 0.23529411238782594 39 0.76470588761217406
		2 1 0.41176471640081902 39 0.58823528359918098
		2 1 0.2274509763016424 39 0.77254902369835765
		2 1 0.72549019081919819 39 0.27450980918080181
		2 1 0.7686274556552658 2 0.23137254434473417
		2 1 0.66666666666666663 39 0.33333333333333331
		2 1 0.65882353011299577 2 0.34117646988700417
		2 1 0.66666666666666663 39 0.33333333333333331
		2 1 0.65882353011299577 2 0.34117646988700417
		2 1 0.850980397240788 39 0.14901960275921206
		2 1 0.60392155623903532 2 0.39607844376096463
		2 1 0.850980397240788 39 0.14901960275921206
		2 1 0.82745098863162181 39 0.17254901136837816
		2 1 0.6117646925589626 39 0.38823530744103746
		2 1 0.7137254859886919 39 0.28627451401130816
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.72549019081919819 39 0.27450980918080181
		2 1 0.7686274556552658 2 0.23137254434473417
		2 2 0.10588235364240753 3 0.8941176463575925
		2 3 0.75686275152599047 24 0.24313724847400947
		2 2 0.44705882984049145 3 0.55294117015950861
		2 3 0.83529412483467724 24 0.16470587516532278
		2 24 0.63529412045198319 25 0.36470587954801681
		2 4 0.7137254859886919 24 0.28627451401130816
		2 24 0.49411764776005462 25 0.50588235223994538
		2 24 0.70588234943502104 25 0.29411765056497902
		2 3 0.61960782887888977 4 0.38039217112111023
		2 3 0.83529412483467724 24 0.16470587516532278
		2 4 0.90980392554227019 9 0.090196074457729827
		2 4 0.82745098863162181 24 0.17254901136837816
		2 1 0.66666666666666663 39 0.33333333333333331
		2 1 0.6117646925589626 39 0.38823530744103746
		2 1 0.41176471640081902 39 0.58823528359918098
		2 1 0.46274510248034584 39 0.53725489751965416
		2 1 0.43921569352056422 39 0.56078430647943578
		2 1 0.72549019081919819 39 0.27450980918080181
		2 1 0.41176471640081902 39 0.58823528359918098
		2 1 0.66666666666666663 39 0.33333333333333331
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.43921569352056422 39 0.56078430647943578
		2 1 0.72549019081919819 39 0.27450980918080181
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 1 0.4588235343203822 39 0.54117646567961775
		2 1 0.57254901095932653 39 0.42745098904067341
		2 1 0.20784313608618354 39 0.79215686391381646
		2 1 0.16862744326685047 39 0.83137255673314958
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 2 0.36470587954801681 3 0.63529412045198319
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.36470587954801681 4 0.63529412045198319
		2 2 0.43921569352056422 3 0.56078430647943578
		2 3 0.91764706180376143 9 0.082352938196238554
		2 2 0.36470587954801681 3 0.63529412045198319
		2 3 0.91764706180376143 9 0.082352938196238554
		2 2 0.52156862487979982 3 0.47843137512020023
		2 2 0.52156862487979982 3 0.47843137512020023
		2 2 0.43921569352056422 3 0.56078430647943578
		2 3 0.91764706180376143 9 0.082352938196238554
		2 1 0.38823530744103746 2 0.6117646925589626
		2 1 0.38823530744103746 2 0.6117646925589626
		2 2 0.52156862487979982 3 0.47843137512020023
		2 2 0.52156862487979982 3 0.47843137512020023
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.38823530744103746 2 0.6117646925589626
		2 1 0.38823530744103746 2 0.6117646925589626
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.83137255673314958 39 0.16862744326685047
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.79215686391381646 44 0.20784313608618354
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.92156862993450706 24 0.078431370065492903
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 2 0.3176470602259916 3 0.68235293977400835
		2 2 0.1607843070637951 3 0.8392156929362049
		2 2 0.30980392367232074 3 0.69019607632767932
		2 2 0.19215686391381645 3 0.80784313608618352
		2 1 0.26274510435029552 2 0.73725489564970448
		2 2 0.49411764776005462 3 0.50588235223994538
		2 1 0.26274510435029552 2 0.73725489564970448
		2 2 0.6078431243989989 3 0.39215687560100104
		2 1 0.45490196616041861 2 0.54509803383958133
		2 1 0.33725490161016874 2 0.6627450983898312
		2 1 0.42352942088070983 2 0.57647057911929012
		2 1 0.33725490161016874 2 0.6627450983898312
		2 4 0.35294117471751052 6 0.64705882528248948
		1 6 1
		1 6 1
		1 6 1
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 2 0.52156862487979982 3 0.47843137512020023
		2 3 0.91764706180376143 9 0.082352938196238554
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.52156862487979982 3 0.47843137512020023
		2 1 0.38823530744103746 2 0.6117646925589626
		2 2 0.49411764776005462 3 0.50588235223994538
		2 1 0.26274510435029552 2 0.73725489564970448
		2 4 0.9450980387189809 9 0.054901961281019068
		2 4 0.92941176619599841 9 0.070588233804001629
		2 4 0.76470588761217406 9 0.23529411238782594
		2 4 0.80392156804309178 9 0.19607843195690822
		2 1 0.64313725700565405 39 0.35686274299434595
		2 1 0.64313725700565405 39 0.35686274299434595
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.38823530744103746 2 0.6117646925589626
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.79215686391381646 44 0.20784313608618354
		2 4 0.92941176619599841 9 0.070588233804001629
		1 4 1
		2 4 0.80392156804309178 9 0.19607843195690822
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.35294117471751052 6 0.64705882528248948
		2 4 0.9450980387189809 9 0.054901961281019068
		1 6 1
		2 4 0.76470588761217406 9 0.23529411238782594
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.46274510248034584 44 0.53725489751965416
		2 1 0.41176471640081902 44 0.58823528359918098
		2 1 0.41176471640081902 44 0.58823528359918098
		2 1 0.41176471640081902 44 0.58823528359918098
		2 1 0.41176471640081902 44 0.58823528359918098
		2 1 0.43921569352056422 44 0.56078430647943578
		2 1 0.43921569352056422 44 0.56078430647943578
		2 1 0.43921569352056422 44 0.56078430647943578
		2 1 0.43921569352056422 44 0.56078430647943578
		2 1 0.38823530744103746 44 0.6117646925589626
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.38823530744103746 44 0.6117646925589626;
	setAttr ".wl[3188:3459].w"
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.79215686391381646 44 0.20784313608618354
		2 4 0.12156862604851827 6 0.87843137395148174
		1 6 1
		1 6 1
		1 6 1
		2 4 0.92549019806525268 24 0.074509801934747266
		2 4 0.72156862254236276 24 0.27843137745763724
		2 4 0.87843137395148174 24 0.12156862604851827
		2 4 0.84705882913926023 24 0.15294117086073974
		2 1 0.64313725700565405 39 0.35686274299434595
		2 1 0.46274510248034584 39 0.53725489751965416
		2 1 0.64313725700565405 39 0.35686274299434595
		2 1 0.46274510248034584 39 0.53725489751965416
		2 4 0.87843137395148174 24 0.12156862604851827
		2 4 0.84705882913926023 24 0.15294117086073974
		1 4 1
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.12156862604851827 6 0.87843137395148174
		1 6 1
		2 4 0.92549019806525268 24 0.074509801934747266
		2 4 0.72156862254236276 24 0.27843137745763724
		2 1 0.46274510248034584 39 0.53725489751965416
		2 1 0.41176471640081902 39 0.58823528359918098
		2 1 0.46274510248034584 39 0.53725489751965416
		2 1 0.41176471640081902 39 0.58823528359918098
		2 1 0.41176471640081902 39 0.58823528359918098
		2 1 0.43921569352056422 39 0.56078430647943578
		2 1 0.41176471640081902 39 0.58823528359918098
		2 1 0.43921569352056422 39 0.56078430647943578
		2 1 0.38823530744103746 39 0.6117646925589626
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.43921569352056422 39 0.56078430647943578
		2 1 0.38823530744103746 39 0.6117646925589626
		2 1 0.43921569352056422 39 0.56078430647943578
		2 1 0.79215686391381646 39 0.20784313608618354
		2 3 0.36470587954801681 4 0.63529412045198319
		2 4 0.97647058740258219 5 0.023529412597417778
		2 3 0.36470587954801681 4 0.63529412045198319
		1 4 1
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.92156862993450706 24 0.078431370065492903
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.92156862993450706 24 0.078431370065492903
		2 2 0.52156862487979982 3 0.47843137512020023
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.52156862487979982 3 0.47843137512020023
		2 2 0.49411764776005462 3 0.50588235223994538
		2 1 0.38823530744103746 2 0.6117646925589626
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.38823530744103746 2 0.6117646925589626
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.79215686391381646 39 0.20784313608618354
		2 4 0.82745098863162181 9 0.17254901136837816
		2 4 0.73333332737286905 5 0.26666667262713095
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.77254902369835765 9 0.2274509763016424
		2 4 0.9450980387189809 9 0.054901961281019068
		2 4 0.81176470412927526 9 0.18823529587072468
		1 4 1
		2 4 0.70980391771185647 9 0.29019608228814359
		2 4 0.70980391771185647 9 0.29019608228814359
		2 4 0.66666666666666663 9 0.33333333333333331
		2 4 0.69803921288135018 9 0.30196078711864988
		2 4 0.97254901925722759 5 0.027450980742772399
		2 4 0.98823529367937768 5 0.011764706320622362
		2 4 0.9450980387189809 9 0.054901961281019068
		1 4 1
		2 4 0.97254901925722759 5 0.027450980742772399
		2 4 0.66666666666666663 9 0.33333333333333331
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.69803921288135018 9 0.30196078711864988
		2 4 0.77254902369835765 9 0.2274509763016424
		2 4 0.81176470412927526 9 0.18823529587072468
		2 4 0.82745098863162181 9 0.17254901136837816
		2 4 0.73333332737286905 5 0.26666667262713095
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.70980391771185647 9 0.29019608228814359
		2 4 0.70980391771185647 9 0.29019608228814359
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.75294118348289873 24 0.24705881651710124
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.89803921445912016 24 0.10196078554087985
		2 4 0.90980392554227019 24 0.090196074457729827
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.75294118348289873 24 0.24705881651710124
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.91764706180376143 24 0.082352938196238554
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.89803921445912016 24 0.10196078554087985
		1 4 1
		2 4 0.90980392554227019 24 0.090196074457729827
		2 4 0.97647058740258219 5 0.023529412597417778
		1 4 1
		2 4 0.75294118348289873 24 0.24705881651710124
		2 4 0.91764706180376143 24 0.082352938196238554
		2 4 0.75294118348289873 24 0.24705881651710124
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.73333332737286905 5 0.26666667262713095
		1 6 1
		2 4 0.35294117471751052 6 0.64705882528248948
		2 4 0.26666667262713095 5 0.73333332737286905
		1 6 1
		2 4 0.54901960199954503 5 0.45098039800045503
		1 6 1
		1 4 1
		2 4 0.92941176619599841 9 0.070588233804001629
		2 4 0.81176470412927526 9 0.18823529587072468
		2 4 0.9450980387189809 9 0.054901961281019068
		2 4 0.69803921288135018 9 0.30196078711864988
		2 4 0.70980391771185647 9 0.29019608228814359
		2 4 0.80392156804309178 9 0.19607843195690822
		2 4 0.76470588761217406 9 0.23529411238782594
		2 4 0.98823529367937768 5 0.011764706320622362
		1 4 1
		1 4 1
		2 4 0.92941176619599841 9 0.070588233804001629
		2 4 0.98823529367937768 5 0.011764706320622362
		2 4 0.98431372552671847 5 0.01568627447328147
		1 4 1
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.69803921288135018 9 0.30196078711864988
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.80392156804309178 9 0.19607843195690822
		2 4 0.73333332737286905 5 0.26666667262713095
		2 4 0.81176470412927526 9 0.18823529587072468
		2 4 0.35294117471751052 6 0.64705882528248948
		2 4 0.9450980387189809 9 0.054901961281019068
		2 4 0.54901960199954503 5 0.45098039800045503
		1 6 1
		2 4 0.70980391771185647 9 0.29019608228814359
		2 4 0.76470588761217406 9 0.23529411238782594
		2 4 0.26666667262713095 5 0.73333332737286905
		1 6 1
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.12156862604851827 6 0.87843137395148174
		2 4 0.26666667262713095 5 0.73333332737286905
		2 4 0.54901960199954503 5 0.45098039800045503
		1 6 1
		1 6 1
		2 4 0.90980392554227019 24 0.090196074457729827
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.87843137395148174 24 0.12156862604851827
		2 4 0.92549019806525268 24 0.074509801934747266
		2 4 0.91764706180376143 24 0.082352938196238554
		2 4 0.84705882913926023 24 0.15294117086073974
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.72156862254236276 24 0.27843137745763724
		1 4 1
		2 4 0.90980392554227019 24 0.090196074457729827
		1 4 1
		2 4 0.87843137395148174 24 0.12156862604851827
		1 4 1
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.91764706180376143 24 0.082352938196238554
		2 4 0.84705882913926023 24 0.15294117086073974
		1 4 1
		1 4 1
		1 4 1
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.12156862604851827 6 0.87843137395148174
		2 4 0.70980391771185647 24 0.29019608228814359
		2 4 0.92549019806525268 24 0.074509801934747266
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.70980391771185647 24 0.29019608228814359
		1 6 1
		2 4 0.72156862254236276 24 0.27843137745763724
		1 4 1
		2 4 0.73725489564970448 5 0.26274510435029552
		1 6 1
		1 6 1
		1 6 1
		2 4 0.61568626071892618 5 0.38431373928107387
		1 6 1
		1 4 1
		1 6 1
		1 6 1
		2 4 0.61568626071892618 5 0.38431373928107387
		1 4 1
		1 6 1
		2 4 0.54901960199954503 5 0.45098039800045503
		1 6 1
		1 4 1
		1 6 1
		1 6 1
		2 4 0.54901960199954503 5 0.45098039800045503
		2 4 0.26666667262713095 5 0.73333332737286905
		1 6 1
		2 4 0.73725489564970448 5 0.26274510435029552
		1 6 1
		2 4 0.26666667262713095 5 0.73333332737286905
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 3 0.91764706180376143 9 0.082352938196238554
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.49411764776005462 3 0.50588235223994538
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.97254901925722759 5 0.027450980742772399
		2 3 0.36470587954801681 4 0.63529412045198319
		2 3 0.36470587954801681 4 0.63529412045198319
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.97254901925722759 5 0.027450980742772399
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 3 0.91764706180376143 24 0.082352938196238554
		2 2 0.49411764776005462 3 0.50588235223994538
		2 3 0.91764706180376143 24 0.082352938196238554
		2 2 0.6078431243989989 3 0.39215687560100104
		2 2 0.49411764776005462 3 0.50588235223994538;
	setAttr ".wl[3460:3766].w"
		2 1 0.26274510435029552 2 0.73725489564970448
		2 2 0.6078431243989989 3 0.39215687560100104
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.71764705426552733 2 0.28235294573447273
		2 4 0.97254901925722759 5 0.027450980742772399
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.97254901925722759 5 0.027450980742772399
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.98431372552671847 5 0.01568627447328147
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.97647058740258219 5 0.023529412597417778
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.9450980387189809 5 0.054901961281019068
		1 4 1
		2 4 0.97254901925722759 5 0.027450980742772399
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 1 0.83137255673314958 39 0.16862744326685047
		2 1 0.83137255673314958 39 0.16862744326685047
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.79215686391381646 39 0.20784313608618354
		2 1 0.83137255673314958 39 0.16862744326685047
		2 1 0.79215686391381646 44 0.20784313608618354
		2 1 0.83137255673314958 39 0.16862744326685047
		2 1 0.79215686391381646 44 0.20784313608618354
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 45 0.83529412483467724 46 0.16470587516532278
		1 45 1
		1 45 1
		1 45 1
		2 45 0.82352942053009415 46 0.17647057946990582
		1 45 1
		1 45 1
		1 45 1
		2 40 0.83529412483467724 41 0.16470587516532278
		1 40 1
		1 40 1
		1 40 1
		2 40 0.82352942053009415 41 0.17647057946990582
		1 40 1
		1 40 1
		1 40 1
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.43529412536060064 10 0.56470587463939936
		2 9 0.68235293977400835 10 0.3176470602259916
		2 9 0.68235293977400835 10 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.68235293977400835 25 0.3176470602259916
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 24 0.43529412536060064 25 0.56470587463939936
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.94901960684972653 5 0.050980393150273424
		1 4 1
		2 4 0.98823529367937768 9 0.011764706320622362
		2 4 0.96078431482116378 5 0.039215685178836258
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.96862745111187298 5 0.031372548888127016
		2 4 0.98039215737405938 24 0.019607842625940577
		2 4 0.97647058740258219 5 0.023529412597417778
		1 4 1
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.98823529367937768 5 0.011764706320622362
		2 4 0.99215686275605475 5 0.0078431372439452252
		1 4 1
		1 4 1
		1 4 1
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.99215686275605475 5 0.0078431372439452252
		1 4 1
		2 4 0.95294117498047226 5 0.047058825019527781
		2 4 0.95686274667580917 9 0.043137253324190876
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.98823529367937768 9 0.011764706320622362
		2 4 0.95294117498047226 5 0.047058825019527781
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.96078431482116378 5 0.039215685178836258
		2 4 0.97647058740258219 5 0.023529412597417778
		2 4 0.96078431482116378 5 0.039215685178836258
		2 4 0.96862745111187298 5 0.031372548888127016
		1 4 1
		2 4 0.98039215737405938 24 0.019607842625940577
		2 4 0.96862745111187298 5 0.031372548888127016
		2 4 0.96078431482116378 5 0.039215685178836258
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.96078431482116378 5 0.039215685178836258
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.96862745111187298 5 0.031372548888127016
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.95294117498047226 5 0.047058825019527781
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.96078431482116378 5 0.039215685178836258
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.94901960684972653 5 0.050980393150273424
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.95294117498047226 5 0.047058825019527781
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.94901960684972653 5 0.050980393150273424
		2 3 0.33725490161016874 4 0.6627450983898312
		1 4 1
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.9450980387189809 5 0.054901961281019068
		1 4 1
		2 4 0.97254901925722759 5 0.027450980742772399
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.9450980387189809 5 0.054901961281019068
		2 4 0.97254901925722759 5 0.027450980742772399
		2 3 0.33725490161016874 4 0.6627450983898312
		2 4 0.9450980387189809 5 0.054901961281019068
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 3 0.33725490161016874 4 0.6627450983898312
		2 2 0.49411764776005462 3 0.50588235223994538
		2 3 0.92156862993450706 24 0.078431370065492903
		2 2 0.3176470602259916 3 0.68235293977400835
		2 2 0.1607843070637951 3 0.8392156929362049
		2 3 0.91764706180376143 24 0.082352938196238554
		2 2 0.19215686391381645 3 0.80784313608618352
		2 3 0.92156862993450706 24 0.078431370065492903
		2 2 0.1607843070637951 3 0.8392156929362049
		2 2 0.6078431243989989 3 0.39215687560100104
		2 2 0.30980392367232074 3 0.69019607632767932
		2 3 0.91764706180376143 24 0.082352938196238554
		2 2 0.19215686391381645 3 0.80784313608618352
		2 2 0.49411764776005462 3 0.50588235223994538
		2 2 0.3176470602259916 3 0.68235293977400835
		2 2 0.6078431243989989 3 0.39215687560100104
		2 2 0.30980392367232074 3 0.69019607632767932
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.33725490161016874 2 0.6627450983898312
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.45490196616041861 2 0.54509803383958133
		1 1 0.26274510435029552;
	setAttr ".wl[3766:3836].w"
		1 2 0.73725489564970448
		2 1 0.33725490161016874 2 0.6627450983898312
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.33725490161016874 2 0.6627450983898312
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.42352942088070983 2 0.57647057911929012
		2 1 0.26274510435029552 2 0.73725489564970448
		2 1 0.33725490161016874 2 0.6627450983898312
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.71764705426552733 2 0.28235294573447273
		2 1 0.42352942088070983 2 0.57647057911929012
		2 1 0.45490196616041861 2 0.54509803383958133
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		2 46 0.70196078115818561 47 0.29803921884181445
		2 46 0.70196078115818561 47 0.29803921884181445
		2 46 0.70196078115818561 47 0.29803921884181445
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		1 47 1
		2 46 0.094117649337824488 47 0.90588235066217548
		2 46 0.094117649337824488 47 0.90588235066217548
		2 46 0.70196078115818561 47 0.29803921884181445
		2 46 0.70196078115818561 47 0.29803921884181445
		1 42 1
		2 41 0.70196078115818561 42 0.29803921884181445
		2 41 0.094117649337824488 42 0.90588235066217548
		1 42 1
		1 42 1
		2 41 0.70196078115818561 42 0.29803921884181445
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 47 1
		1 47 1
		1 47 1
		2 46 0.094117649337824488 47 0.90588235066217548
		2 46 0.70196078115818561 47 0.29803921884181445
		2 46 0.70196078115818561 47 0.29803921884181445
		1 46 1
		1 46 1
		1 42 1
		1 42 1
		1 42 1
		2 41 0.094117649337824488 42 0.90588235066217548
		2 41 0.70196078115818561 42 0.29803921884181445
		2 41 0.70196078115818561 42 0.29803921884181445
		1 41 1
		1 41 1
		2 41 0.70196078115818561 42 0.29803921884181445
		1 42 1
		2 41 0.70196078115818561 42 0.29803921884181445
		1 42 1
		1 42 1
		1 42 1
		2 41 0.094117649337824488 42 0.90588235066217548
		2 41 0.70196078115818561 42 0.29803921884181445
		2 41 0.70196078115818561 42 0.29803921884181445
		2 41 0.094117649337824488 42 0.90588235066217548
		1 42 1
		1 42 1;
	setAttr -s 49 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 2.6631600000000001e-07 0 0 -2.6631600000000001e-07 1 0
		 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 0 0 1 0 0.98877499999999996 0.14941199999999999 0 0
		 -0.14941199999999999 0.98877499999999996 0 0 -86.643981999999994 -13.092611 0 1;
	setAttr ".pm[2]" -type "matrix" 0 0 -1 0 0.99876399999999999 0.049695599999999999 0 0
		 0.049695599999999999 -0.99876500000000001 0 0 -97.706057000000001 -6.4163920000000001 0 1;
	setAttr ".pm[3]" -type "matrix" 0 0 1 0 0.98927299999999996 0.14607999999999999 0 0
		 -0.14607999999999999 0.98927299999999996 0 0 -114.883303 -16.306244 0 1;
	setAttr ".pm[4]" -type "matrix" 0 0 -1 0 0.99711099999999997 0.075962299999999996 0 0
		 0.075962299999999996 -0.99711099999999997 0 0 -133.11006499999999 -13.416370000000001 0 1;
	setAttr ".pm[5]" -type "matrix" 0 0 -1 0 0.98730300000000004 0.15885099999999999 0 0
		 0.15885099999999999 -0.98730300000000004 0 0 -142.67754400000001 -25.403313000000001 0 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 -8.3223800000000004e-09 0 0 8.3223800000000004e-09 1 0
		 0 -156.91124400000001 0.48398400000000003 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 -8.3223800000000004e-09 0 0 8.3223800000000004e-09 1 0
		 0 -166.35884999999999 -11.788231 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 -8.3223800000000004e-09 0 0 8.3223800000000004e-09 1 0
		 0 -169.67816400000001 -11.788231 1;
	setAttr ".pm[9]" -type "matrix" 0.88285199999999997 0.0114634 0.46951100000000001 0
		 -0.0129835 0.99991600000000003 8.1596499999999986e-08 0 -0.469472 -0.0060959600000000001 0.88292700000000002 0
		 -4.1317459999999997 -139.276027 -4.6917999999999997 1;
	setAttr ".pm[10]" -type "matrix" 0.99654200000000004 0.082498100000000005 0.0099145899999999992 0
		 -0.082502099999999995 0.996591 1.29536e-07 0 -0.0098807800000000005 -0.00081810400000000005 0.99995100000000003 0
		 -7.6096839999999997 -140.14487399999999 4.65266 1;
	setAttr ".pm[11]" -type "matrix" 0.99743199999999999 5.88298e-08 -0.071615300000000007 0
		 -4.9359799999999996e-08 1 1.3400399999999999e-07 0 0.071615300000000007 -1.3012500000000001e-07 0.99743199999999999 0
		 -52.398597000000002 -136.09414599999999 9.0970809999999993 1;
	setAttr ".pm[12]" -type "matrix" 1 5.88298e-08 2.3949399999999999e-07 0 -5.8829900000000006e-08 1 1.3012500000000001e-07 0
		 -2.3949399999999999e-07 -1.3012500000000001e-07 1 0 -79.963183999999998 -136.09414599999999 3.417389 1;
	setAttr ".pm[13]" -type "matrix" 0.83121400000000001 0.15431800000000001 -0.53410500000000005 0
		 -0.182534 0.98319999999999996 1.8531999999999999e-07 0 0.52513200000000004 0.097492400000000007 0.845418 0
		 -45.330745 -145.644777 43.665712999999997 1;
	setAttr ".pm[14]" -type "matrix" 0.84797500000000003 0.43077700000000002 -0.30881999999999998 0
		 -0.45291500000000001 0.89155399999999996 1.9497400000000001e-07 0 0.27532899999999999 0.13986899999999999 0.95112099999999999 0
		 -15.915069000000001 -158.115939 23.197965 1;
	setAttr ".pm[15]" -type "matrix" 1 8.6480700000000005e-07 2.67217e-07 0 -8.6480700000000005e-07 1 -7.5800799999999994e-08 0
		 -2.67217e-07 7.5800500000000004e-08 1 0 -93.576401000000004 -131.194726 -5.9932299999999996 1;
	setAttr ".pm[16]" -type "matrix" 0.99130600000000002 0.0084524999999999999 -0.13130500000000001 0
		 -0.0085263000000000005 0.99996399999999996 1.3647899999999999e-07 0 0.1313 0.0011194099999999999 0.99134199999999995 0
		 -88.312600000000003 -137.25082599999999 12.602971999999999 1;
	setAttr ".pm[17]" -type "matrix" 0.97303099999999998 0.20283799999999999 -0.109856 0
		 -0.204073 0.97895600000000005 1.3659699999999999e-07 0 0.107544 0.022418400000000002 0.99394800000000005 0
		 -64.001778999999999 -152.733127 10.578327 1;
	setAttr ".pm[18]" -type "matrix" 0.94782200000000005 0.31370199999999998 -0.056780600000000001 0
		 -0.31420900000000002 0.94935400000000003 1.20526e-07 0 0.053904899999999999 0.0178409 0.99838700000000002 0
		 -50.365290999999999 -159.59226799999999 5.370431 1;
	setAttr ".pm[19]" -type "matrix" 1 2.89861e-07 2.0623499999999999e-07 0 -2.89861e-07 1 1.0423500000000001e-07 0
		 -2.0623499999999999e-07 -1.0423500000000001e-07 1 0 -101.68927100000001 -134.496657 -0.40421699999999999 1;
	setAttr ".pm[20]" -type "matrix" 0.98975999999999997 0.11253000000000001 0.087815599999999994 0
		 -0.112967 0.99359900000000001 1.1579699999999999e-07 0 -0.087253399999999995 -0.0099203599999999996 0.99613700000000005 0
		 -74.248345 -145.29585 -1.22377 1;
	setAttr ".pm[21]" -type "matrix" 0.98672800000000005 0.154946 0.048568 0 -0.15512899999999999 0.98789400000000005 1.1053699999999999e-07 0
		 -0.047980000000000002 -0.0075344399999999999 0.99882000000000004 0 -72.221005000000005 -148.499529 2.4904039999999998 1;
	setAttr ".pm[22]" -type "matrix" 0.92415599999999998 0.32852300000000001 0.19495899999999999 0
		 -0.334951 0.94223599999999996 6.3928000000000002e-08 0 -0.183697 -0.065301600000000001 0.98081200000000002 0
		 -46.341296999999997 -159.70020199999999 -11.930296999999999 1;
	setAttr ".pm[23]" -type "matrix" 1 4.2681100000000002e-07 2.9199499999999999e-07 0
		 -4.2681100000000002e-07 1 1.5001700000000001e-07 0 -2.9199499999999999e-07 -1.5001700000000001e-07 1 0
		 -100.393129 -133.947292 7.7916990000000004 1;
	setAttr ".pm[24]" -type "matrix" 0.88285199999999997 0.0114634 0.46951100000000001 0
		 0.0129835 -0.99991600000000003 -8.1596499999999986e-08 0 0.469472 0.0060959600000000001 -0.88292700000000002 0
		 4.1317389999999996 139.27638899999999 4.6917960000000001 1;
	setAttr ".pm[25]" -type "matrix" 0.99654200000000004 0.082498100000000005 0.0099145899999999992 0
		 0.082502099999999995 -0.996591 -1.29536e-07 0 0.0098807800000000005 0.00081810400000000005 -0.99995100000000003 0
		 7.6096839999999997 140.144589 -4.6526569999999996 1;
	setAttr ".pm[26]" -type "matrix" 0.99743199999999999 5.88298e-08 -0.071615300000000007 0
		 4.9359799999999996e-08 -1 -1.3400399999999999e-07 0 -0.071615300000000007 1.3012500000000001e-07 -0.99743199999999999 0
		 52.398643 136.09400400000001 -9.0970820000000003 1;
	setAttr ".pm[27]" -type "matrix" 1 5.88298e-08 2.3949399999999999e-07 0 5.8829900000000006e-08 -1 -1.3012500000000001e-07 0
		 2.3949399999999999e-07 1.3012500000000001e-07 -1 0 79.963192000000006 136.09400400000001 -3.417389 1;
	setAttr ".pm[28]" -type "matrix" 0.83121400000000001 0.15431800000000001 -0.53410500000000005 0
		 0.182534 -0.98319999999999996 -1.8531999999999999e-07 0 -0.52513200000000004 -0.097492400000000007 -0.845418 0
		 45.330793999999997 145.644329 -43.665691000000002 1;
	setAttr ".pm[29]" -type "matrix" 0.84797500000000003 0.43077700000000002 -0.30881999999999998 0
		 0.45291500000000001 -0.89155399999999996 -1.9497400000000001e-07 0 -0.27532899999999999 -0.13986899999999999 -0.95112099999999999 0
		 15.914960000000001 158.116255 -23.197976000000001 1;
	setAttr ".pm[30]" -type "matrix" 1 8.6480700000000005e-07 2.67217e-07 0 8.6480700000000005e-07 -1 7.5800799999999994e-08 0
		 2.67217e-07 -7.5800500000000004e-08 -1 0 93.576385000000002 131.195076 5.9932350000000003 1;
	setAttr ".pm[31]" -type "matrix" 0.99130600000000002 0.0084524999999999999 -0.13130500000000001 0
		 0.0085263000000000005 -0.99996399999999996 -1.3647899999999999e-07 0 -0.1313 -0.0011194099999999999 -0.99134199999999995 0
		 88.312644000000006 137.25097 -12.602978 1;
	setAttr ".pm[32]" -type "matrix" 0.97303099999999998 0.20283799999999999 -0.109856 0
		 0.204073 -0.97895600000000005 -1.3659699999999999e-07 0 -0.107544 -0.022418400000000002 -0.99394800000000005 0
		 64.001773999999997 152.73317399999999 -10.578328000000001 1;
	setAttr ".pm[33]" -type "matrix" 0.94782200000000005 0.31370199999999998 -0.056780600000000001 0
		 0.31420900000000002 -0.94935400000000003 -1.20526e-07 0 -0.053904899999999999 -0.0178409 -0.99838700000000002 0
		 50.365341000000001 159.591994 -5.3704289999999997 1;
	setAttr ".pm[34]" -type "matrix" 1 2.89861e-07 2.0623499999999999e-07 0 2.89861e-07 -1 -1.0423500000000001e-07 0
		 2.0623499999999999e-07 1.0423500000000001e-07 -1 0 101.68895999999999 134.49702500000001 0.40421699999999999 1;
	setAttr ".pm[35]" -type "matrix" 0.98975999999999997 0.11253000000000001 0.087815599999999994 0
		 0.112967 -0.99359900000000001 -1.1579699999999999e-07 0 0.087253399999999995 0.0099203599999999996 -0.99613700000000005 0
		 74.248346999999995 145.29566700000001 1.2237690000000001 1;
	setAttr ".pm[36]" -type "matrix" 0.98672800000000005 0.154946 0.048568 0 0.15512899999999999 -0.98789400000000005 -1.1053699999999999e-07 0
		 0.047980000000000002 0.0075344399999999999 -0.99882000000000004 0 72.221012000000002 148.49932000000001 -2.490402 1;
	setAttr ".pm[37]" -type "matrix" 0.92415599999999998 0.32852300000000001 0.19495899999999999 0
		 0.334951 -0.94223599999999996 -6.3928000000000002e-08 0 0.183697 0.065301600000000001 -0.98081200000000002 0
		 46.341335999999998 159.70001600000001 11.930293000000001 1;
	setAttr ".pm[38]" -type "matrix" 1 4.2681100000000002e-07 2.9199499999999999e-07 0
		 4.2681100000000002e-07 -1 -1.5001700000000001e-07 0 2.9199499999999999e-07 1.5001700000000001e-07 -1 0
		 100.39294200000001 133.94703899999999 -7.7917019999999999 1;
	setAttr ".pm[39]" -type "matrix" -0.031741100000000001 -0.99949600000000005 -1.3309100000000001e-07 0
		 -0.99949600000000005 0.031741100000000001 2.0871300000000002e-08 0 -1.6636399999999999e-08 1.33686e-07 -1 0
		 82.799769999999995 -12.531172 -2.046932 1;
	setAttr ".pm[40]" -type "matrix" -0.0074294799999999996 -0.16819400000000001 0.98572599999999999 0
		 -0.99902599999999997 0.044129399999999999 6.1452400000000008e-08 0 -0.043499500000000003 -0.98476600000000003 -0.16835800000000001 0
		 43.030904999999997 -5.8018679999999998 10.660176 1;
	setAttr ".pm[41]" -type "matrix" 5.1243499999999997e-07 -9.0250099999999996e-08 -1 0
		 -0.51997199999999999 0.85418300000000003 -3.4354200000000002e-07 0 0.85418300000000003 0.51997300000000002 3.9078599999999996e-07 0
		 6.0456529999999997 -2.839947 -11.444335000000001 1;
	setAttr ".pm[42]" -type "matrix" 5.2745800000000004e-07 -3.4354200000000002e-07 -1 0
		 0 1 -3.4354200000000002e-07 0 1 0 5.2745800000000004e-07 0 -5.9512289999999997 0.297981 -11.444336 1;
	setAttr ".pm[43]" -type "matrix" 1 -3.4354200000000002e-07 3.9078599999999996e-07 0
		 3.4354200000000002e-07 1 3.5425799999999999e-07 0 -3.9078599999999996e-07 -3.5425799999999999e-07 1 0
		 11.444333 0.297983 -13.246988999999999 1;
	setAttr ".pm[44]" -type "matrix" -0.031741100000000001 -0.99949600000000005 -1.3309100000000001e-07 0
		 0.99949600000000005 -0.031741100000000001 4.5707700000000005e-08 0 -4.9909100000000006e-08 -1.3157300000000001e-07 1 0
		 -82.799758999999995 12.531176 2.0469300000000001 1;
	setAttr ".pm[45]" -type "matrix" -0.0074294799999999996 -0.16819400000000001 0.98572599999999999 0
		 0.99902599999999997 -0.044129300000000003 -5.0243200000000006e-08 0 0.043499400000000001 0.98476600000000003 0.16835800000000001 0
		 -43.030880000000003 5.8018720000000004 -10.660219 1;
	setAttr ".pm[46]" -type "matrix" 5.1243499999999997e-07 -9.0250099999999996e-08 -1 0
		 0.51997199999999999 -0.85418300000000003 3.4354200000000002e-07 0 -0.85418300000000003 -0.51997199999999999 -3.9078599999999996e-07 0
		 -6.0456529999999997 2.8399489999999998 11.444293 1;
	setAttr ".pm[47]" -type "matrix" 5.7429699999999997e-07 -3.4354200000000002e-07 -1 0
		 0 -1 3.4354200000000002e-07 0 -1 0 -5.7429699999999997e-07 0 5.9512289999999997 -0.29797600000000002 11.444293999999999 1;
	setAttr ".pm[48]" -type "matrix" 1 -3.4354200000000002e-07 3.9078599999999996e-07 0
		 -3.4354200000000002e-07 -1 -4.2083700000000002e-07 0 3.9078599999999996e-07 4.2083700000000002e-07 -1 0
		 -11.444291 -0.29797800000000002 13.246983 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr -s 49 ".ma";
	setAttr -s 49 ".dpf[0:48]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 49 ".lw";
	setAttr -s 49 ".lw";
	setAttr ".mi" 5;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 49 ".ifcl";
	setAttr -s 49 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "F7EBB253-4F52-D4EC-396D-A085975F15E9";
createNode objectSet -n "skinCluster1Set";
	rename -uid "7EE2FF16-42EC-34BB-2A61-EDBD18EEAD8D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "69EB8E02-4913-9E96-5385-019A7A61BC17";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "4E2ACECF-4B2E-FE16-FC6B-F0BE18CBF25C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:3836]";
createNode objectSet -n "tweakSet1";
	rename -uid "F67D2454-424B-00CA-D866-59AB54D199CA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	rename -uid "41588DE7-47A5-F172-4A94-98975C8F3D0B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "0C04B824-41CA-FAD4-1C99-37B0CC08BEE0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "A59979A2-47DA-A2EF-FA2D-E59471043EE4";
	setAttr -s 50 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr -s 50 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 0.99999988079071067 0.99999988079071067 1.5707960604787874
		 -0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1.0000001192093035 0.99999999999999989 0.99999988079071056 1.5707963267948966
		 0.14997350329807432 1.5707963267948966 0 0 87.627609252929673 1.4091870303035298e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000001192093035 1.0000001192093035 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1.000000004690744 0.99999999530925732 1 3.1415926535897931
		 -6.5789483500939602e-17 0.19968985046843435 0 10.393264770507798 0 5.2447971260630611e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999988079071067 1.0000000000000002
		 1.0000001192093038 no;
	setAttr ".xm[4]" -type "matrix" "xform" 0.99999999566756836 1.0000000043324306 0.99999999999999989 -3.1415926535897931
		 1.1254373115214242e-16 0.19632101966174095 0 18.151168823242202 1.7763568394002505e-15
		 -8.2952287886401071e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999530925598
		 1.0000000046907427 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1.00000000521199 0.9999999947880106 1 -3.1415926535897931
		 -1.3794393292015514e-16 0.22264054261024147 0 17.903724670410156 7.1054273576010019e-15
		 9.524677467886885e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000043324317
		 0.99999999566756936 1.0000000000000002 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1.0000000048869995 0.99999999511300219 1 2.426158174784712e-16
		 1.2702135819949935e-16 -0.083490983590837536 0 11.188967704772949 -5.3290705182007514e-15
		 -6.1678630165090099e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999478801005
		 1.0000000052119895 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1.000000119209304 0.99999987313968708 1.0000000076510225 1.4112697606099178
		 1.5707963267948966 0 0 12.164435386657743 -1.4210854715202004e-14 -6.6043192871468023e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999511300053 1.0000000048869979
		 1 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1 0.99999999999999989 1 6.8489551782918089e-10
		 1.1051110056811433e-16 9.8362978719215298e-17 0 4.2692099702563157e-16 9.447606411421333
		 12.272214895996978 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999988079071023
		 1.0000001268603289 0.99999999234897763 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1 0.99999999999999989 1 6.8489551782918089e-10
		 1.1051110056811433e-16 9.8362978719215298e-17 0 1.0042339711285778e-16 12.766920414412056
		 12.272214898270363 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999988079071023
		 1.0000001268603289 0.99999999234897763 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1.0000001200363913 0.99999987761663567 1.0000000023469877 -3.1171818496784591
		 1.0819006691744417 1.6744804146019192 0 5.8011729379755366 -4.1914477348327654
		 -7.4471540451049814 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999478801005
		 1.0000000052119895 1 no;
	setAttr ".xm[11]" -type "matrix" "xform" 1.0000000244009584 0.99999999990964206 0.99999997568940424 0.042801926764774609
		 -0.47705355816683442 -0.08002125603183402 0 13.197872161865233 0 -4.4408920985006262e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999987996362316 1.0000001223833792
		 0.99999999765301228 no;
	setAttr ".xm[12]" -type "matrix" "xform" 1.0000000085568119 1.0000000000462037 0.99999999139698637 7.519658417639452e-09
		 -0.081591375854112816 0.08259597197530448 0 33.947402942172893 -0.14490709105550081
		 -0.14362642277972437 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999997559904219
		 1.0000000000903579 1.0000000243105964 no;
	setAttr ".xm[13]" -type "matrix" "xform" 0.99999999245001114 1.0000000000000002 1.0000000075499871 6.5954790741190483e-09
		 0.071676859311908717 -1.4272404864429319e-09 0 27.114528651648577 -7.5809225563716609e-10
		 -0.038136426359415054 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999144318819
		 0.99999999995379629 1.0000000086030136 no;
	setAttr ".xm[14]" -type "matrix" "xform" 1.0000000747092797 1.0000000026689424 0.9999999226217906 0.11481161202286587
		 -0.55287063698936068 -0.21616827187028978 0 3.5140482809779456 -1.1706915250539964
		 4.5055394086202538 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000075499889
		 0.99999999999999978 0.99999999245001303 no;
	setAttr ".xm[15]" -type "matrix" "xform" 0.99999998746149577 0.99999998386822342
		 1.000000028670277 -0.11489752285462963 0.22195783059559338 -0.29928662772949177 0 6.3702139854431223
		 -2.8421709430404007e-14 -1.4210854715202004e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.9999999252907259 0.9999999973310576 1.0000000773782154 no;
	setAttr ".xm[16]" -type "matrix" "xform" 0.99999997966731502 1.000000010325482 1.0000000100071984 -1.6029128364585545e-08
		 0.31395199132094015 0.47003147213860391 0 5.6655697822570712 2.8421709430404007e-14
		 1.0658141036401503e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000125385045
		 1.0000000161317768 0.99999997132972374 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1.0000000144543191 1.0000000001038676 0.99999998544181723 0.001129324404784561
		 -0.13168038009455421 -0.0086008230559324848 0 10.396561883722001 0.39871517662561473
		 2.6726496249083467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000075499889
		 0.99999999999999978 0.99999999245001303 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1.0000000000024347 0.99999999737956924 1.000000002617996 -0.0044101140531395662
		 0.021152498327707915 -0.19703664418158576 0 4.0936317443847798 -5.6843418860808015e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998554568115 0.99999999989613242
		 1.0000000145581829 no;
	setAttr ".xm[19]" -type "matrix" "xform" 1.000000000769665 0.99999999327420741 1.0000000059561263 -0.016751107383630223
		 0.050566440047824707 -0.11453087344721863 0 3.7911880016326904 -2.8421709430404007e-14
		 -7.1054273576010019e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999756528
		 1.0000000026204308 0.99999999738200396 no;
	setAttr ".xm[20]" -type "matrix" "xform" 0.99999998607205798 1.0000000083920788 1.0000000055358611 -3.1630876990157781e-09
		 0.0568113391330059 0.31962338008090324 0 3.7797939777374125 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.999999999230335 1.0000000067257926 0.99999999404387374 no;
	setAttr ".xm[21]" -type "matrix" "xform" 0.99999999333038814 0.99999999918664839
		 1.000000007482962 -0.0099583374565624955 0.087364320665582057 -0.11364366772751772 0 9.9825255088527314
		 -0.11595901582197143 -3.283340216539425 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000075499889
		 0.99999999999999978 0.99999999245001303 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1.0000000039688515 0.99999999911400528 0.99999999691714525 0.0061061386516757746
		 -0.038865212111255307 -0.042668779285603003 0 4.2488145828247355 0 -8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.000000006669612 1.0000000008133516
		 0.99999999251703808 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1.0000000023545148 0.99999998819539693 1.0000000094500894 -0.049769354085938855
		 0.13904345734916757 -0.18926061725066542 0 3.513327360153184 -8.5265128291212022e-14
		 5.3290705182007514e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999603114853
		 1.0000000008859948 1.0000000030828549 no;
	setAttr ".xm[24]" -type "matrix" "xform" 1.0000000015545945 1.0000000118733212 0.99999998657208555 -1.0428312879824021e-08
		 -0.19621503767535359 0.34155239491743566 0 3.0032393932342671 -2.8421709430404007e-14
		 5.3290705182007514e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999764548519
		 1.0000000118046033 0.99999999054991073 no;
	setAttr ".xm[25]" -type "matrix" "xform" 1.0000001200363913 0.99999987761663556 1.0000000023469875 0.024410803911333101
		 2.0596919844153518 1.6744804146019194 0 5.8015343805400335 -4.1914181709289515
		 7.4471502304077157 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999478801005
		 1.0000000052119895 1 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1.0000000244009584 0.9999999999096425 0.99999997568940457 0.042801926764775636
		 -0.47705355816683481 -0.080021256031834145 0 -13.197860717780561 0.00064733915499459727
		 4.7353556622553583e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999987996362316
		 1.0000001223833794 0.99999999765301251 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1.0000000085568119 1.0000000000462037 0.99999999139698637 7.5196584789925613e-09
		 -0.081591375854112663 0.082595971975304425 0 -33.947460162630321 0.1447586456876877
		 0.14362636317396404 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999997559904219
		 1.0000000000903575 1.000000024310596 no;
	setAttr ".xm[28]" -type "matrix" "xform" 0.99999999245001125 1.0000000000000002 1.0000000075499871 6.5954792040496614e-09
		 0.071676859311908675 -1.427234567422452e-09 0 -27.114490504675992 7.5806383392773569e-10
		 0.038136087358001447 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999144318819
		 0.99999999995379629 1.0000000086030136 no;
	setAttr ".xm[29]" -type "matrix" "xform" 1.0000000747092797 1.0000000026689424 0.99999992262179049 0.11481161202286555
		 -0.55287063698936068 -0.21616827187028348 0 -3.5140003588401783 1.170999919485979
		 -4.5055398854551347 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000075499889
		 0.99999999999999978 0.99999999245001303 no;
	setAttr ".xm[30]" -type "matrix" "xform" 0.99999998746149588 0.99999998386822297
		 1.000000028670277 -0.11489752285462969 0.22195783059559332 -0.29928662772949177 0 -6.370145797728
		 -0.0007811824890779917 4.3638110597044033e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.9999999252907259 0.9999999973310576 1.0000000773782154 no;
	setAttr ".xm[31]" -type "matrix" "xform" 0.99999997966731491 1.0000000103254818 1.0000000100071984 -1.6029128233266655e-08
		 0.31395199132094004 0.47003147213860375 0 -5.6655082702656401 9.8355005491157499e-06
		 -2.0279541960377401e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000125385042
		 1.0000000161317772 0.99999997132972374 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1.0000000144543193 1.0000000001038674 0.99999998544181712 0.0011293244047842464
		 -0.13168038009455418 -0.0086008230559265035 0 -10.39660003069784 -0.3990000272229679
		 -2.6726501017476085 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000075499889
		 0.99999999999999978 0.99999999245001303 no;
	setAttr ".xm[33]" -type "matrix" "xform" 1.0000000000024345 0.99999999737956924 1.0000000026179963 -0.0044101140531395445
		 0.021152498327707867 -0.19703664418158578 0 -4.0935912132258352 9.6986928696196628e-05
		 -4.9567480893131233e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999998554568093
		 0.99999999989613264 1.0000000145581831 no;
	setAttr ".xm[34]" -type "matrix" "xform" 1.0000000007696652 0.99999999327420797 1.0000000059561267 -0.016751107383630229
		 0.050566440047824728 -0.11453087344721867 0 -3.7912127971773799 0.00032499834173904674
		 -4.5452923362887532e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.9999999999975655
		 1.0000000026204308 0.99999999738200374 no;
	setAttr ".xm[35]" -type "matrix" "xform" 0.99999998607205776 1.0000000083920788 1.0000000055358611 -3.1630877024908317e-09
		 0.056811339133005845 0.31962338008090313 0 -3.7793326377527166 -0.00052657089059948703
		 -1.5507379496959572e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999923033478
		 1.0000000067257921 0.9999999940438733 no;
	setAttr ".xm[36]" -type "matrix" "xform" 0.99999999333038825 0.99999999918664817
		 1.000000007482962 -0.0099583374565627991 0.087364320665582015 -0.11364366772751186 0 -9.9824997596457621
		 0.11600007597158424 3.2833399781211492 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000075499889
		 0.99999999999999978 0.99999999245001303 no;
	setAttr ".xm[37]" -type "matrix" "xform" 1.0000000039688512 0.99999999911400483 0.99999999691714514 0.0061061386516757686
		 -0.038865212111255321 -0.04266877928560292 0 -4.2488093376166631 2.6534415013657053e-05
		 -1.9789932181879522e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000066696118
		 1.0000000008133518 0.99999999251703808 no;
	setAttr ".xm[38]" -type "matrix" "xform" 1.0000000023545144 0.99999998819539704 1.0000000094500894 -0.049769354085938827
		 0.13904345734916757 -0.18926061725066565 0 -3.5133244991295527 -1.9978480764848427e-05
		 1.4853608050202638e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999603114875
		 1.0000000008859953 1.0000000030828549 no;
	setAttr ".xm[39]" -type "matrix" "xform" 1.0000000015545945 1.0000000118733208 0.99999998657208489 -1.0428312943495831e-08
		 -0.19621503767535323 0.34155239491743561 0 -3.0031130313952303 0.00011334713968835786
		 3.5910989614862387e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999764548564
		 1.0000000118046031 0.99999999054991073 no;
	setAttr ".xm[40]" -type "matrix" "xform" 1.0000000027786513 0.99999999988257871 0.99999999733877065 -1.5707964599529518
		 0.031746390241730961 -2.9916188497194591 0 -4.1157684326172017 -2.692069768905645
		 -9.896705627441408 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999988079071067
		 1.0000000000000002 1.0000001192093038 no;
	setAttr ".xm[41]" -type "matrix" "xform" 1.0000000016471893 0.99999999824155339 1.0000000001112577 1.4014706807854693
		 -0.043513181948887501 -0.024309803396021144 0 39.930904388427749 -7.1054273576010019e-15
		 -1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999722134869
		 1.0000000001174214 1.0000000026612295 no;
	setAttr ".xm[42]" -type "matrix" "xform" 1.00000007223086 0.99999992771309898 1.0000000000560536 -3.0530156432242816
		 0.14430868320439069 -1.0617149276521241 0 37.71235275268554 -8.8817841970012523e-15
		 2.3092638912203256e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999835281073
		 1.0000000017584467 0.99999999988874233 no;
	setAttr ".xm[43]" -type "matrix" "xform" 1.0000000877509723 0.99999991224904128 1 -1.5463559834714587e-08
		 9.4132390892313837e-09 0.54681909602962853 0 11.284035682678224 -1.021405182655144e-14
		 -3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999992776914526
		 1.0000000722869062 0.99999999994394639 no;
	setAttr ".xm[44]" -type "matrix" "xform" 1.0000001192093031 0.99999999999999956 0.99999988079071067 3.5390628941952968e-17
		 1.5707963088011268 0 0 7.2957563400268484 1.9428902930940239e-15 -6.8676706987957914e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999991224903539 1.0000000877509665
		 1 no;
	setAttr ".xm[45]" -type "matrix" "xform" 1.0000000027786491 0.99999999988257871 0.99999999733877298 -1.5707964599529518
		 0.03174639024173085 0.14997373729129909 0 -4.115778446197524 -2.6920750141143834
		 9.8967103958129901 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999988079071067
		 1.0000000000000002 1.0000001192093038 no;
	setAttr ".xm[46]" -type "matrix" "xform" 1.0000000016471884 0.99999999824155361 1.0000000001112574 1.4014706807854689
		 -0.043513181948887383 -0.024309803396020967 0 -39.930919647217074 -3.8050264265621081e-05
		 1.4210854715202004e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999722135091
		 1.0000000001174214 1.000000002661227 no;
	setAttr ".xm[47]" -type "matrix" "xform" 1.0000000722308666 0.99999992771309265 1.0000000000560534 -3.0530156432242808
		 0.14430868320438969 -1.0617149276521129 0 -37.712326049804602 1.3169495099774053e-05
		 -8.4110382893243241e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999835281161
		 1.0000000017584465 0.99999999988874255 no;
	setAttr ".xm[48]" -type "matrix" "xform" 1.0000000877509685 0.99999991224904439 1 -1.5463550958565194e-08
		 9.4132385614692666e-09 0.54681909602962964 0 -11.284032821655483 -1.6849571604637958e-06
		 2.3092638912203256e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.9999999277691386
		 1.0000000722869127 0.99999999994394662 no;
	setAttr ".xm[49]" -type "matrix" "xform" 1.0000001192093033 1.0000000000000002 0.999999880790711 -2.252540396145548e-16
		 1.5707963088011347 0 0 -7.2957501411437997 9.9920072216264089e-16 6.8676646591825374e-08 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999991224903917 1.0000000877509634
		 1 no;
	setAttr -s 50 ".m";
	setAttr -s 50 ".p";
	setAttr -s 50 ".g[0:49]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no;
	setAttr ".bp" yes;
createNode lambert -n "lambert2";
	rename -uid "9821BCB6-4AA2-08D1-B035-ABBA3A0C8916";
createNode shadingEngine -n "lambert2SG";
	rename -uid "7B09AFD2-4CE5-A574-3904-03986A57A55E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "6390856F-4CC2-3E81-2698-77ACBBB37311";
createNode file -n "file1";
	rename -uid "05A934EF-4F6B-8B44-D36B-0CB7E81402AE";
	setAttr ".ftn" -type "string" "C:/Users/Faruq/Documents/Unreal Projects/MyProject3/Content/PolygonCity/texture/Game/PolygonCity/Textures/T_PolygonCity_Texture_01_C.TGA";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "BA99E40A-446E-ED3D-6C12-50AE9463CC7F";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "5F8F5427-49A9-4BF5-BDF5-CEBDE7002D52";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5B6EA205-46D7-3B40-9AB4-0FAFC7081F8D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1191\n            -height 708\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1191\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1191\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CC05464D-480B-E639-EAFC-32988DB46C18";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "|SK_Character_Male_Jacket.s" "Root.is";
connectAttr "Root.s" "Pelvis.is";
connectAttr "Pelvis_parentConstraint1.ctx" "Pelvis.tx";
connectAttr "Pelvis_parentConstraint1.cty" "Pelvis.ty";
connectAttr "Pelvis_parentConstraint1.ctz" "Pelvis.tz";
connectAttr "Pelvis_parentConstraint1.crx" "Pelvis.rx";
connectAttr "Pelvis_parentConstraint1.cry" "Pelvis.ry";
connectAttr "Pelvis_parentConstraint1.crz" "Pelvis.rz";
connectAttr "Pelvis.s" "spine_01.is";
connectAttr "spine_01_parentConstraint1.ctx" "spine_01.tx";
connectAttr "spine_01_parentConstraint1.cty" "spine_01.ty";
connectAttr "spine_01_parentConstraint1.ctz" "spine_01.tz";
connectAttr "spine_01_parentConstraint1.crx" "spine_01.rx";
connectAttr "spine_01_parentConstraint1.cry" "spine_01.ry";
connectAttr "spine_01_parentConstraint1.crz" "spine_01.rz";
connectAttr "spine_01.s" "spine_02.is";
connectAttr "spine_02_parentConstraint1.ctx" "spine_02.tx";
connectAttr "spine_02_parentConstraint1.cty" "spine_02.ty";
connectAttr "spine_02_parentConstraint1.ctz" "spine_02.tz";
connectAttr "spine_02_parentConstraint1.crx" "spine_02.rx";
connectAttr "spine_02_parentConstraint1.cry" "spine_02.ry";
connectAttr "spine_02_parentConstraint1.crz" "spine_02.rz";
connectAttr "spine_02.s" "spine_03.is";
connectAttr "spine_03_parentConstraint1.ctx" "spine_03.tx";
connectAttr "spine_03_parentConstraint1.cty" "spine_03.ty";
connectAttr "spine_03_parentConstraint1.ctz" "spine_03.tz";
connectAttr "spine_03_parentConstraint1.crx" "spine_03.rx";
connectAttr "spine_03_parentConstraint1.cry" "spine_03.ry";
connectAttr "spine_03_parentConstraint1.crz" "spine_03.rz";
connectAttr "spine_03.s" "neck_01.is";
connectAttr "neck_01_parentConstraint1.ctx" "neck_01.tx";
connectAttr "neck_01_parentConstraint1.cty" "neck_01.ty";
connectAttr "neck_01_parentConstraint1.ctz" "neck_01.tz";
connectAttr "neck_01_parentConstraint1.crx" "neck_01.rx";
connectAttr "neck_01_parentConstraint1.cry" "neck_01.ry";
connectAttr "neck_01_parentConstraint1.crz" "neck_01.rz";
connectAttr "neck_01.s" "head.is";
connectAttr "head_parentConstraint1.ctx" "head.tx";
connectAttr "head_parentConstraint1.cty" "head.ty";
connectAttr "head_parentConstraint1.ctz" "head.tz";
connectAttr "head_parentConstraint1.crx" "head.rx";
connectAttr "head_parentConstraint1.cry" "head.ry";
connectAttr "head_parentConstraint1.crz" "head.rz";
connectAttr "head.s" "eyes.is";
connectAttr "head.s" "eyebrows.is";
connectAttr "head.ro" "head_parentConstraint1.cro";
connectAttr "head.pim" "head_parentConstraint1.cpim";
connectAttr "head.rp" "head_parentConstraint1.crp";
connectAttr "head.rpt" "head_parentConstraint1.crt";
connectAttr "head.jo" "head_parentConstraint1.cjo";
connectAttr "head_ctrl.t" "head_parentConstraint1.tg[0].tt";
connectAttr "head_ctrl.rp" "head_parentConstraint1.tg[0].trp";
connectAttr "head_ctrl.rpt" "head_parentConstraint1.tg[0].trt";
connectAttr "head_ctrl.r" "head_parentConstraint1.tg[0].tr";
connectAttr "head_ctrl.ro" "head_parentConstraint1.tg[0].tro";
connectAttr "head_ctrl.s" "head_parentConstraint1.tg[0].ts";
connectAttr "head_ctrl.pm" "head_parentConstraint1.tg[0].tpm";
connectAttr "head_parentConstraint1.w0" "head_parentConstraint1.tg[0].tw";
connectAttr "neck_01.ro" "neck_01_parentConstraint1.cro";
connectAttr "neck_01.pim" "neck_01_parentConstraint1.cpim";
connectAttr "neck_01.rp" "neck_01_parentConstraint1.crp";
connectAttr "neck_01.rpt" "neck_01_parentConstraint1.crt";
connectAttr "neck_01.jo" "neck_01_parentConstraint1.cjo";
connectAttr "neck_01_ctrl.t" "neck_01_parentConstraint1.tg[0].tt";
connectAttr "neck_01_ctrl.rp" "neck_01_parentConstraint1.tg[0].trp";
connectAttr "neck_01_ctrl.rpt" "neck_01_parentConstraint1.tg[0].trt";
connectAttr "neck_01_ctrl.r" "neck_01_parentConstraint1.tg[0].tr";
connectAttr "neck_01_ctrl.ro" "neck_01_parentConstraint1.tg[0].tro";
connectAttr "neck_01_ctrl.s" "neck_01_parentConstraint1.tg[0].ts";
connectAttr "neck_01_ctrl.pm" "neck_01_parentConstraint1.tg[0].tpm";
connectAttr "neck_01_parentConstraint1.w0" "neck_01_parentConstraint1.tg[0].tw";
connectAttr "spine_03.s" "clavicle_l.is";
connectAttr "clavicle_l_parentConstraint1.ctx" "clavicle_l.tx";
connectAttr "clavicle_l_parentConstraint1.cty" "clavicle_l.ty";
connectAttr "clavicle_l_parentConstraint1.ctz" "clavicle_l.tz";
connectAttr "clavicle_l_parentConstraint1.crx" "clavicle_l.rx";
connectAttr "clavicle_l_parentConstraint1.cry" "clavicle_l.ry";
connectAttr "clavicle_l_parentConstraint1.crz" "clavicle_l.rz";
connectAttr "clavicle_l.s" "UpperArm_L.is";
connectAttr "UpperArm_L_parentConstraint1.ctx" "UpperArm_L.tx";
connectAttr "UpperArm_L_parentConstraint1.cty" "UpperArm_L.ty";
connectAttr "UpperArm_L_parentConstraint1.ctz" "UpperArm_L.tz";
connectAttr "UpperArm_L_parentConstraint1.crx" "UpperArm_L.rx";
connectAttr "UpperArm_L_parentConstraint1.cry" "UpperArm_L.ry";
connectAttr "UpperArm_L_parentConstraint1.crz" "UpperArm_L.rz";
connectAttr "UpperArm_L.s" "lowerarm_l.is";
connectAttr "lowerarm_l_parentConstraint1.ctx" "lowerarm_l.tx";
connectAttr "lowerarm_l_parentConstraint1.cty" "lowerarm_l.ty";
connectAttr "lowerarm_l_parentConstraint1.ctz" "lowerarm_l.tz";
connectAttr "lowerarm_l_parentConstraint1.crx" "lowerarm_l.rx";
connectAttr "lowerarm_l_parentConstraint1.cry" "lowerarm_l.ry";
connectAttr "lowerarm_l_parentConstraint1.crz" "lowerarm_l.rz";
connectAttr "lowerarm_l.s" "Hand_L.is";
connectAttr "Hand_L_orientConstraint1.crx" "Hand_L.rx";
connectAttr "Hand_L_orientConstraint1.cry" "Hand_L.ry";
connectAttr "Hand_L_orientConstraint1.crz" "Hand_L.rz";
connectAttr "Hand_L.s" "thumb_01_l.is";
connectAttr "thumb_01_l.s" "thumb_02_l.is";
connectAttr "thumb_02_l.s" "thumb_03_l.is";
connectAttr "Hand_L.s" "indexFinger_01_l.is";
connectAttr "indexFinger_01_l.s" "indexFinger_02_l.is";
connectAttr "indexFinger_02_l.s" "indexFinger_03_l.is";
connectAttr "indexFinger_03_l.s" "indexFinger_04_l.is";
connectAttr "Hand_L.s" "finger_01_l.is";
connectAttr "finger_01_l.s" "finger_02_l.is";
connectAttr "finger_02_l.s" "finger_03_l.is";
connectAttr "finger_03_l.s" "finger_04_l.is";
connectAttr "Hand_L.ro" "Hand_L_orientConstraint1.cro";
connectAttr "Hand_L.pim" "Hand_L_orientConstraint1.cpim";
connectAttr "Hand_L.jo" "Hand_L_orientConstraint1.cjo";
connectAttr "Hand_L.is" "Hand_L_orientConstraint1.is";
connectAttr "Hand_L_ctrl.r" "Hand_L_orientConstraint1.tg[0].tr";
connectAttr "Hand_L_ctrl.ro" "Hand_L_orientConstraint1.tg[0].tro";
connectAttr "Hand_L_ctrl.pm" "Hand_L_orientConstraint1.tg[0].tpm";
connectAttr "Hand_L_orientConstraint1.w0" "Hand_L_orientConstraint1.tg[0].tw";
connectAttr "lowerarm_l.ro" "lowerarm_l_parentConstraint1.cro";
connectAttr "lowerarm_l.pim" "lowerarm_l_parentConstraint1.cpim";
connectAttr "lowerarm_l.rp" "lowerarm_l_parentConstraint1.crp";
connectAttr "lowerarm_l.rpt" "lowerarm_l_parentConstraint1.crt";
connectAttr "lowerarm_l.jo" "lowerarm_l_parentConstraint1.cjo";
connectAttr "lowerarm_l_ik.t" "lowerarm_l_parentConstraint1.tg[0].tt";
connectAttr "lowerarm_l_ik.rp" "lowerarm_l_parentConstraint1.tg[0].trp";
connectAttr "lowerarm_l_ik.rpt" "lowerarm_l_parentConstraint1.tg[0].trt";
connectAttr "lowerarm_l_ik.r" "lowerarm_l_parentConstraint1.tg[0].tr";
connectAttr "lowerarm_l_ik.ro" "lowerarm_l_parentConstraint1.tg[0].tro";
connectAttr "lowerarm_l_ik.s" "lowerarm_l_parentConstraint1.tg[0].ts";
connectAttr "lowerarm_l_ik.pm" "lowerarm_l_parentConstraint1.tg[0].tpm";
connectAttr "lowerarm_l_ik.jo" "lowerarm_l_parentConstraint1.tg[0].tjo";
connectAttr "lowerarm_l_ik.ssc" "lowerarm_l_parentConstraint1.tg[0].tsc";
connectAttr "lowerarm_l_ik.is" "lowerarm_l_parentConstraint1.tg[0].tis";
connectAttr "lowerarm_l_parentConstraint1.w0" "lowerarm_l_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperArm_L.ro" "UpperArm_L_parentConstraint1.cro";
connectAttr "UpperArm_L.pim" "UpperArm_L_parentConstraint1.cpim";
connectAttr "UpperArm_L.rp" "UpperArm_L_parentConstraint1.crp";
connectAttr "UpperArm_L.rpt" "UpperArm_L_parentConstraint1.crt";
connectAttr "UpperArm_L.jo" "UpperArm_L_parentConstraint1.cjo";
connectAttr "UpperArm_L_ik.t" "UpperArm_L_parentConstraint1.tg[0].tt";
connectAttr "UpperArm_L_ik.rp" "UpperArm_L_parentConstraint1.tg[0].trp";
connectAttr "UpperArm_L_ik.rpt" "UpperArm_L_parentConstraint1.tg[0].trt";
connectAttr "UpperArm_L_ik.r" "UpperArm_L_parentConstraint1.tg[0].tr";
connectAttr "UpperArm_L_ik.ro" "UpperArm_L_parentConstraint1.tg[0].tro";
connectAttr "UpperArm_L_ik.s" "UpperArm_L_parentConstraint1.tg[0].ts";
connectAttr "UpperArm_L_ik.pm" "UpperArm_L_parentConstraint1.tg[0].tpm";
connectAttr "UpperArm_L_ik.jo" "UpperArm_L_parentConstraint1.tg[0].tjo";
connectAttr "UpperArm_L_ik.ssc" "UpperArm_L_parentConstraint1.tg[0].tsc";
connectAttr "UpperArm_L_ik.is" "UpperArm_L_parentConstraint1.tg[0].tis";
connectAttr "UpperArm_L_parentConstraint1.w0" "UpperArm_L_parentConstraint1.tg[0].tw"
		;
connectAttr "clavicle_l.ro" "clavicle_l_parentConstraint1.cro";
connectAttr "clavicle_l.pim" "clavicle_l_parentConstraint1.cpim";
connectAttr "clavicle_l.rp" "clavicle_l_parentConstraint1.crp";
connectAttr "clavicle_l.rpt" "clavicle_l_parentConstraint1.crt";
connectAttr "clavicle_l.jo" "clavicle_l_parentConstraint1.cjo";
connectAttr "clavicle_l_ctrl.t" "clavicle_l_parentConstraint1.tg[0].tt";
connectAttr "clavicle_l_ctrl.rp" "clavicle_l_parentConstraint1.tg[0].trp";
connectAttr "clavicle_l_ctrl.rpt" "clavicle_l_parentConstraint1.tg[0].trt";
connectAttr "clavicle_l_ctrl.r" "clavicle_l_parentConstraint1.tg[0].tr";
connectAttr "clavicle_l_ctrl.ro" "clavicle_l_parentConstraint1.tg[0].tro";
connectAttr "clavicle_l_ctrl.s" "clavicle_l_parentConstraint1.tg[0].ts";
connectAttr "clavicle_l_ctrl.pm" "clavicle_l_parentConstraint1.tg[0].tpm";
connectAttr "clavicle_l_parentConstraint1.w0" "clavicle_l_parentConstraint1.tg[0].tw"
		;
connectAttr "spine_03.s" "clavicle_r.is";
connectAttr "clavicle_r_parentConstraint1.ctx" "clavicle_r.tx";
connectAttr "clavicle_r_parentConstraint1.cty" "clavicle_r.ty";
connectAttr "clavicle_r_parentConstraint1.ctz" "clavicle_r.tz";
connectAttr "clavicle_r_parentConstraint1.crx" "clavicle_r.rx";
connectAttr "clavicle_r_parentConstraint1.cry" "clavicle_r.ry";
connectAttr "clavicle_r_parentConstraint1.crz" "clavicle_r.rz";
connectAttr "clavicle_r.s" "UpperArm_R.is";
connectAttr "UpperArm_R_parentConstraint1.ctx" "UpperArm_R.tx";
connectAttr "UpperArm_R_parentConstraint1.cty" "UpperArm_R.ty";
connectAttr "UpperArm_R_parentConstraint1.ctz" "UpperArm_R.tz";
connectAttr "UpperArm_R_parentConstraint1.crx" "UpperArm_R.rx";
connectAttr "UpperArm_R_parentConstraint1.cry" "UpperArm_R.ry";
connectAttr "UpperArm_R_parentConstraint1.crz" "UpperArm_R.rz";
connectAttr "UpperArm_R.s" "lowerarm_r.is";
connectAttr "lowerarm_r_parentConstraint1.ctx" "lowerarm_r.tx";
connectAttr "lowerarm_r_parentConstraint1.cty" "lowerarm_r.ty";
connectAttr "lowerarm_r_parentConstraint1.ctz" "lowerarm_r.tz";
connectAttr "lowerarm_r_parentConstraint1.crx" "lowerarm_r.rx";
connectAttr "lowerarm_r_parentConstraint1.cry" "lowerarm_r.ry";
connectAttr "lowerarm_r_parentConstraint1.crz" "lowerarm_r.rz";
connectAttr "lowerarm_r.s" "Hand_R.is";
connectAttr "Hand_R_orientConstraint1.crx" "Hand_R.rx";
connectAttr "Hand_R_orientConstraint1.cry" "Hand_R.ry";
connectAttr "Hand_R_orientConstraint1.crz" "Hand_R.rz";
connectAttr "Hand_R.s" "thumb_01_r.is";
connectAttr "thumb_01_r.s" "thumb_02_r.is";
connectAttr "thumb_02_r.s" "thumb_03_r.is";
connectAttr "Hand_R.s" "indexFinger_01_r.is";
connectAttr "indexFinger_01_r.s" "indexFinger_02_r.is";
connectAttr "indexFinger_02_r.s" "indexFinger_03_r.is";
connectAttr "indexFinger_03_r.s" "indexFinger_04_r.is";
connectAttr "Hand_R.s" "finger_01_r.is";
connectAttr "finger_01_r.s" "finger_02_r.is";
connectAttr "finger_02_r.s" "finger_03_r.is";
connectAttr "finger_03_r.s" "finger_04_r.is";
connectAttr "Hand_R.ro" "Hand_R_orientConstraint1.cro";
connectAttr "Hand_R.pim" "Hand_R_orientConstraint1.cpim";
connectAttr "Hand_R.jo" "Hand_R_orientConstraint1.cjo";
connectAttr "Hand_R.is" "Hand_R_orientConstraint1.is";
connectAttr "Hand_R_ctrl.r" "Hand_R_orientConstraint1.tg[0].tr";
connectAttr "Hand_R_ctrl.ro" "Hand_R_orientConstraint1.tg[0].tro";
connectAttr "Hand_R_ctrl.pm" "Hand_R_orientConstraint1.tg[0].tpm";
connectAttr "Hand_R_orientConstraint1.w0" "Hand_R_orientConstraint1.tg[0].tw";
connectAttr "lowerarm_r.ro" "lowerarm_r_parentConstraint1.cro";
connectAttr "lowerarm_r.pim" "lowerarm_r_parentConstraint1.cpim";
connectAttr "lowerarm_r.rp" "lowerarm_r_parentConstraint1.crp";
connectAttr "lowerarm_r.rpt" "lowerarm_r_parentConstraint1.crt";
connectAttr "lowerarm_r.jo" "lowerarm_r_parentConstraint1.cjo";
connectAttr "lowerarm_r_ik.t" "lowerarm_r_parentConstraint1.tg[0].tt";
connectAttr "lowerarm_r_ik.rp" "lowerarm_r_parentConstraint1.tg[0].trp";
connectAttr "lowerarm_r_ik.rpt" "lowerarm_r_parentConstraint1.tg[0].trt";
connectAttr "lowerarm_r_ik.r" "lowerarm_r_parentConstraint1.tg[0].tr";
connectAttr "lowerarm_r_ik.ro" "lowerarm_r_parentConstraint1.tg[0].tro";
connectAttr "lowerarm_r_ik.s" "lowerarm_r_parentConstraint1.tg[0].ts";
connectAttr "lowerarm_r_ik.pm" "lowerarm_r_parentConstraint1.tg[0].tpm";
connectAttr "lowerarm_r_ik.jo" "lowerarm_r_parentConstraint1.tg[0].tjo";
connectAttr "lowerarm_r_ik.ssc" "lowerarm_r_parentConstraint1.tg[0].tsc";
connectAttr "lowerarm_r_ik.is" "lowerarm_r_parentConstraint1.tg[0].tis";
connectAttr "lowerarm_r_parentConstraint1.w0" "lowerarm_r_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperArm_R.ro" "UpperArm_R_parentConstraint1.cro";
connectAttr "UpperArm_R.pim" "UpperArm_R_parentConstraint1.cpim";
connectAttr "UpperArm_R.rp" "UpperArm_R_parentConstraint1.crp";
connectAttr "UpperArm_R.rpt" "UpperArm_R_parentConstraint1.crt";
connectAttr "UpperArm_R.jo" "UpperArm_R_parentConstraint1.cjo";
connectAttr "UpperArm_R_ik.t" "UpperArm_R_parentConstraint1.tg[0].tt";
connectAttr "UpperArm_R_ik.rp" "UpperArm_R_parentConstraint1.tg[0].trp";
connectAttr "UpperArm_R_ik.rpt" "UpperArm_R_parentConstraint1.tg[0].trt";
connectAttr "UpperArm_R_ik.r" "UpperArm_R_parentConstraint1.tg[0].tr";
connectAttr "UpperArm_R_ik.ro" "UpperArm_R_parentConstraint1.tg[0].tro";
connectAttr "UpperArm_R_ik.s" "UpperArm_R_parentConstraint1.tg[0].ts";
connectAttr "UpperArm_R_ik.pm" "UpperArm_R_parentConstraint1.tg[0].tpm";
connectAttr "UpperArm_R_ik.jo" "UpperArm_R_parentConstraint1.tg[0].tjo";
connectAttr "UpperArm_R_ik.ssc" "UpperArm_R_parentConstraint1.tg[0].tsc";
connectAttr "UpperArm_R_ik.is" "UpperArm_R_parentConstraint1.tg[0].tis";
connectAttr "UpperArm_R_parentConstraint1.w0" "UpperArm_R_parentConstraint1.tg[0].tw"
		;
connectAttr "clavicle_r.ro" "clavicle_r_parentConstraint1.cro";
connectAttr "clavicle_r.pim" "clavicle_r_parentConstraint1.cpim";
connectAttr "clavicle_r.rp" "clavicle_r_parentConstraint1.crp";
connectAttr "clavicle_r.rpt" "clavicle_r_parentConstraint1.crt";
connectAttr "clavicle_r.jo" "clavicle_r_parentConstraint1.cjo";
connectAttr "clavicle_r_ctrl.t" "clavicle_r_parentConstraint1.tg[0].tt";
connectAttr "clavicle_r_ctrl.rp" "clavicle_r_parentConstraint1.tg[0].trp";
connectAttr "clavicle_r_ctrl.rpt" "clavicle_r_parentConstraint1.tg[0].trt";
connectAttr "clavicle_r_ctrl.r" "clavicle_r_parentConstraint1.tg[0].tr";
connectAttr "clavicle_r_ctrl.ro" "clavicle_r_parentConstraint1.tg[0].tro";
connectAttr "clavicle_r_ctrl.s" "clavicle_r_parentConstraint1.tg[0].ts";
connectAttr "clavicle_r_ctrl.pm" "clavicle_r_parentConstraint1.tg[0].tpm";
connectAttr "clavicle_r_parentConstraint1.w0" "clavicle_r_parentConstraint1.tg[0].tw"
		;
connectAttr "spine_03.ro" "spine_03_parentConstraint1.cro";
connectAttr "spine_03.pim" "spine_03_parentConstraint1.cpim";
connectAttr "spine_03.rp" "spine_03_parentConstraint1.crp";
connectAttr "spine_03.rpt" "spine_03_parentConstraint1.crt";
connectAttr "spine_03.jo" "spine_03_parentConstraint1.cjo";
connectAttr "spine_03_ctrl.t" "spine_03_parentConstraint1.tg[0].tt";
connectAttr "spine_03_ctrl.rp" "spine_03_parentConstraint1.tg[0].trp";
connectAttr "spine_03_ctrl.rpt" "spine_03_parentConstraint1.tg[0].trt";
connectAttr "spine_03_ctrl.r" "spine_03_parentConstraint1.tg[0].tr";
connectAttr "spine_03_ctrl.ro" "spine_03_parentConstraint1.tg[0].tro";
connectAttr "spine_03_ctrl.s" "spine_03_parentConstraint1.tg[0].ts";
connectAttr "spine_03_ctrl.pm" "spine_03_parentConstraint1.tg[0].tpm";
connectAttr "spine_03_parentConstraint1.w0" "spine_03_parentConstraint1.tg[0].tw"
		;
connectAttr "spine_02.ro" "spine_02_parentConstraint1.cro";
connectAttr "spine_02.pim" "spine_02_parentConstraint1.cpim";
connectAttr "spine_02.rp" "spine_02_parentConstraint1.crp";
connectAttr "spine_02.rpt" "spine_02_parentConstraint1.crt";
connectAttr "spine_02.jo" "spine_02_parentConstraint1.cjo";
connectAttr "spine_02_ctrl.t" "spine_02_parentConstraint1.tg[0].tt";
connectAttr "spine_02_ctrl.rp" "spine_02_parentConstraint1.tg[0].trp";
connectAttr "spine_02_ctrl.rpt" "spine_02_parentConstraint1.tg[0].trt";
connectAttr "spine_02_ctrl.r" "spine_02_parentConstraint1.tg[0].tr";
connectAttr "spine_02_ctrl.ro" "spine_02_parentConstraint1.tg[0].tro";
connectAttr "spine_02_ctrl.s" "spine_02_parentConstraint1.tg[0].ts";
connectAttr "spine_02_ctrl.pm" "spine_02_parentConstraint1.tg[0].tpm";
connectAttr "spine_02_parentConstraint1.w0" "spine_02_parentConstraint1.tg[0].tw"
		;
connectAttr "spine_01.ro" "spine_01_parentConstraint1.cro";
connectAttr "spine_01.pim" "spine_01_parentConstraint1.cpim";
connectAttr "spine_01.rp" "spine_01_parentConstraint1.crp";
connectAttr "spine_01.rpt" "spine_01_parentConstraint1.crt";
connectAttr "spine_01.jo" "spine_01_parentConstraint1.cjo";
connectAttr "spine_01_ctrl.t" "spine_01_parentConstraint1.tg[0].tt";
connectAttr "spine_01_ctrl.rp" "spine_01_parentConstraint1.tg[0].trp";
connectAttr "spine_01_ctrl.rpt" "spine_01_parentConstraint1.tg[0].trt";
connectAttr "spine_01_ctrl.r" "spine_01_parentConstraint1.tg[0].tr";
connectAttr "spine_01_ctrl.ro" "spine_01_parentConstraint1.tg[0].tro";
connectAttr "spine_01_ctrl.s" "spine_01_parentConstraint1.tg[0].ts";
connectAttr "spine_01_ctrl.pm" "spine_01_parentConstraint1.tg[0].tpm";
connectAttr "spine_01_parentConstraint1.w0" "spine_01_parentConstraint1.tg[0].tw"
		;
connectAttr "Pelvis.s" "Thigh_R.is";
connectAttr "Thigh_R_parentConstraint1.ctx" "Thigh_R.tx";
connectAttr "Thigh_R_parentConstraint1.cty" "Thigh_R.ty";
connectAttr "Thigh_R_parentConstraint1.ctz" "Thigh_R.tz";
connectAttr "Thigh_R_parentConstraint1.crx" "Thigh_R.rx";
connectAttr "Thigh_R_parentConstraint1.cry" "Thigh_R.ry";
connectAttr "Thigh_R_parentConstraint1.crz" "Thigh_R.rz";
connectAttr "Thigh_R.s" "calf_r.is";
connectAttr "calf_r_parentConstraint1.ctx" "calf_r.tx";
connectAttr "calf_r_parentConstraint1.cty" "calf_r.ty";
connectAttr "calf_r_parentConstraint1.ctz" "calf_r.tz";
connectAttr "calf_r_parentConstraint1.crx" "calf_r.rx";
connectAttr "calf_r_parentConstraint1.cry" "calf_r.ry";
connectAttr "calf_r_parentConstraint1.crz" "calf_r.rz";
connectAttr "calf_r.s" "Foot_R.is";
connectAttr "Foot_R_orientConstraint1.crx" "Foot_R.rx";
connectAttr "Foot_R_orientConstraint1.cry" "Foot_R.ry";
connectAttr "Foot_R_orientConstraint1.crz" "Foot_R.rz";
connectAttr "Foot_R.s" "ball_r.is";
connectAttr "ball_r.s" "toes_r.is";
connectAttr "Foot_R.ro" "Foot_R_orientConstraint1.cro";
connectAttr "Foot_R.pim" "Foot_R_orientConstraint1.cpim";
connectAttr "Foot_R.jo" "Foot_R_orientConstraint1.cjo";
connectAttr "Foot_R.is" "Foot_R_orientConstraint1.is";
connectAttr "r_leg_ctrl.r" "Foot_R_orientConstraint1.tg[0].tr";
connectAttr "r_leg_ctrl.ro" "Foot_R_orientConstraint1.tg[0].tro";
connectAttr "r_leg_ctrl.pm" "Foot_R_orientConstraint1.tg[0].tpm";
connectAttr "Foot_R_orientConstraint1.w0" "Foot_R_orientConstraint1.tg[0].tw";
connectAttr "calf_r.ro" "calf_r_parentConstraint1.cro";
connectAttr "calf_r.pim" "calf_r_parentConstraint1.cpim";
connectAttr "calf_r.rp" "calf_r_parentConstraint1.crp";
connectAttr "calf_r.rpt" "calf_r_parentConstraint1.crt";
connectAttr "calf_r.jo" "calf_r_parentConstraint1.cjo";
connectAttr "calf_r_ik.t" "calf_r_parentConstraint1.tg[0].tt";
connectAttr "calf_r_ik.rp" "calf_r_parentConstraint1.tg[0].trp";
connectAttr "calf_r_ik.rpt" "calf_r_parentConstraint1.tg[0].trt";
connectAttr "calf_r_ik.r" "calf_r_parentConstraint1.tg[0].tr";
connectAttr "calf_r_ik.ro" "calf_r_parentConstraint1.tg[0].tro";
connectAttr "calf_r_ik.s" "calf_r_parentConstraint1.tg[0].ts";
connectAttr "calf_r_ik.pm" "calf_r_parentConstraint1.tg[0].tpm";
connectAttr "calf_r_ik.jo" "calf_r_parentConstraint1.tg[0].tjo";
connectAttr "calf_r_ik.ssc" "calf_r_parentConstraint1.tg[0].tsc";
connectAttr "calf_r_ik.is" "calf_r_parentConstraint1.tg[0].tis";
connectAttr "calf_r_parentConstraint1.w0" "calf_r_parentConstraint1.tg[0].tw";
connectAttr "Thigh_R.ro" "Thigh_R_parentConstraint1.cro";
connectAttr "Thigh_R.pim" "Thigh_R_parentConstraint1.cpim";
connectAttr "Thigh_R.rp" "Thigh_R_parentConstraint1.crp";
connectAttr "Thigh_R.rpt" "Thigh_R_parentConstraint1.crt";
connectAttr "Thigh_R.jo" "Thigh_R_parentConstraint1.cjo";
connectAttr "Thigh_R_ik.t" "Thigh_R_parentConstraint1.tg[0].tt";
connectAttr "Thigh_R_ik.rp" "Thigh_R_parentConstraint1.tg[0].trp";
connectAttr "Thigh_R_ik.rpt" "Thigh_R_parentConstraint1.tg[0].trt";
connectAttr "Thigh_R_ik.r" "Thigh_R_parentConstraint1.tg[0].tr";
connectAttr "Thigh_R_ik.ro" "Thigh_R_parentConstraint1.tg[0].tro";
connectAttr "Thigh_R_ik.s" "Thigh_R_parentConstraint1.tg[0].ts";
connectAttr "Thigh_R_ik.pm" "Thigh_R_parentConstraint1.tg[0].tpm";
connectAttr "Thigh_R_ik.jo" "Thigh_R_parentConstraint1.tg[0].tjo";
connectAttr "Thigh_R_ik.ssc" "Thigh_R_parentConstraint1.tg[0].tsc";
connectAttr "Thigh_R_ik.is" "Thigh_R_parentConstraint1.tg[0].tis";
connectAttr "Thigh_R_parentConstraint1.w0" "Thigh_R_parentConstraint1.tg[0].tw";
connectAttr "Pelvis.s" "Thigh_L.is";
connectAttr "Thigh_L_parentConstraint1.ctx" "Thigh_L.tx";
connectAttr "Thigh_L_parentConstraint1.cty" "Thigh_L.ty";
connectAttr "Thigh_L_parentConstraint1.ctz" "Thigh_L.tz";
connectAttr "Thigh_L_parentConstraint1.crx" "Thigh_L.rx";
connectAttr "Thigh_L_parentConstraint1.cry" "Thigh_L.ry";
connectAttr "Thigh_L_parentConstraint1.crz" "Thigh_L.rz";
connectAttr "Thigh_L.s" "calf_l.is";
connectAttr "calf_l_parentConstraint1.ctx" "calf_l.tx";
connectAttr "calf_l_parentConstraint1.cty" "calf_l.ty";
connectAttr "calf_l_parentConstraint1.ctz" "calf_l.tz";
connectAttr "calf_l_parentConstraint1.crx" "calf_l.rx";
connectAttr "calf_l_parentConstraint1.cry" "calf_l.ry";
connectAttr "calf_l_parentConstraint1.crz" "calf_l.rz";
connectAttr "calf_l.s" "Foot_L.is";
connectAttr "Foot_L_orientConstraint1.crx" "Foot_L.rx";
connectAttr "Foot_L_orientConstraint1.cry" "Foot_L.ry";
connectAttr "Foot_L_orientConstraint1.crz" "Foot_L.rz";
connectAttr "Foot_L.s" "ball_l.is";
connectAttr "ball_l.s" "toes_l.is";
connectAttr "Foot_L.ro" "Foot_L_orientConstraint1.cro";
connectAttr "Foot_L.pim" "Foot_L_orientConstraint1.cpim";
connectAttr "Foot_L.jo" "Foot_L_orientConstraint1.cjo";
connectAttr "Foot_L.is" "Foot_L_orientConstraint1.is";
connectAttr "l_leg_ctrl.r" "Foot_L_orientConstraint1.tg[0].tr";
connectAttr "l_leg_ctrl.ro" "Foot_L_orientConstraint1.tg[0].tro";
connectAttr "l_leg_ctrl.pm" "Foot_L_orientConstraint1.tg[0].tpm";
connectAttr "Foot_L_orientConstraint1.w0" "Foot_L_orientConstraint1.tg[0].tw";
connectAttr "calf_l.ro" "calf_l_parentConstraint1.cro";
connectAttr "calf_l.pim" "calf_l_parentConstraint1.cpim";
connectAttr "calf_l.rp" "calf_l_parentConstraint1.crp";
connectAttr "calf_l.rpt" "calf_l_parentConstraint1.crt";
connectAttr "calf_l.jo" "calf_l_parentConstraint1.cjo";
connectAttr "calf_l_ik.t" "calf_l_parentConstraint1.tg[0].tt";
connectAttr "calf_l_ik.rp" "calf_l_parentConstraint1.tg[0].trp";
connectAttr "calf_l_ik.rpt" "calf_l_parentConstraint1.tg[0].trt";
connectAttr "calf_l_ik.r" "calf_l_parentConstraint1.tg[0].tr";
connectAttr "calf_l_ik.ro" "calf_l_parentConstraint1.tg[0].tro";
connectAttr "calf_l_ik.s" "calf_l_parentConstraint1.tg[0].ts";
connectAttr "calf_l_ik.pm" "calf_l_parentConstraint1.tg[0].tpm";
connectAttr "calf_l_ik.jo" "calf_l_parentConstraint1.tg[0].tjo";
connectAttr "calf_l_ik.ssc" "calf_l_parentConstraint1.tg[0].tsc";
connectAttr "calf_l_ik.is" "calf_l_parentConstraint1.tg[0].tis";
connectAttr "calf_l_parentConstraint1.w0" "calf_l_parentConstraint1.tg[0].tw";
connectAttr "Thigh_L.ro" "Thigh_L_parentConstraint1.cro";
connectAttr "Thigh_L.pim" "Thigh_L_parentConstraint1.cpim";
connectAttr "Thigh_L.rp" "Thigh_L_parentConstraint1.crp";
connectAttr "Thigh_L.rpt" "Thigh_L_parentConstraint1.crt";
connectAttr "Thigh_L.jo" "Thigh_L_parentConstraint1.cjo";
connectAttr "Thigh_L_ik.t" "Thigh_L_parentConstraint1.tg[0].tt";
connectAttr "Thigh_L_ik.rp" "Thigh_L_parentConstraint1.tg[0].trp";
connectAttr "Thigh_L_ik.rpt" "Thigh_L_parentConstraint1.tg[0].trt";
connectAttr "Thigh_L_ik.r" "Thigh_L_parentConstraint1.tg[0].tr";
connectAttr "Thigh_L_ik.ro" "Thigh_L_parentConstraint1.tg[0].tro";
connectAttr "Thigh_L_ik.s" "Thigh_L_parentConstraint1.tg[0].ts";
connectAttr "Thigh_L_ik.pm" "Thigh_L_parentConstraint1.tg[0].tpm";
connectAttr "Thigh_L_ik.jo" "Thigh_L_parentConstraint1.tg[0].tjo";
connectAttr "Thigh_L_ik.ssc" "Thigh_L_parentConstraint1.tg[0].tsc";
connectAttr "Thigh_L_ik.is" "Thigh_L_parentConstraint1.tg[0].tis";
connectAttr "Thigh_L_parentConstraint1.w0" "Thigh_L_parentConstraint1.tg[0].tw";
connectAttr "Pelvis.ro" "Pelvis_parentConstraint1.cro";
connectAttr "Pelvis.pim" "Pelvis_parentConstraint1.cpim";
connectAttr "Pelvis.rp" "Pelvis_parentConstraint1.crp";
connectAttr "Pelvis.rpt" "Pelvis_parentConstraint1.crt";
connectAttr "Pelvis.jo" "Pelvis_parentConstraint1.cjo";
connectAttr "Pelvis_ctrl.t" "Pelvis_parentConstraint1.tg[0].tt";
connectAttr "Pelvis_ctrl.rp" "Pelvis_parentConstraint1.tg[0].trp";
connectAttr "Pelvis_ctrl.rpt" "Pelvis_parentConstraint1.tg[0].trt";
connectAttr "Pelvis_ctrl.r" "Pelvis_parentConstraint1.tg[0].tr";
connectAttr "Pelvis_ctrl.ro" "Pelvis_parentConstraint1.tg[0].tro";
connectAttr "Pelvis_ctrl.s" "Pelvis_parentConstraint1.tg[0].ts";
connectAttr "Pelvis_ctrl.pm" "Pelvis_parentConstraint1.tg[0].tpm";
connectAttr "Pelvis_parentConstraint1.w0" "Pelvis_parentConstraint1.tg[0].tw";
connectAttr "skinCluster1GroupId.id" "SK_Character_Male_JacketShape.iog.og[1].gid"
		;
connectAttr "skinCluster1Set.mwc" "SK_Character_Male_JacketShape.iog.og[1].gco";
connectAttr "groupId3.id" "SK_Character_Male_JacketShape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "SK_Character_Male_JacketShape.iog.og[2].gco";
connectAttr "skinCluster1.og[0]" "SK_Character_Male_JacketShape.i";
connectAttr "tweak1.vl[0].vt[0]" "SK_Character_Male_JacketShape.twl";
connectAttr "UpperArm_L_ik_parentConstraint1.ctx" "UpperArm_L_ik.tx";
connectAttr "UpperArm_L_ik_parentConstraint1.cty" "UpperArm_L_ik.ty";
connectAttr "UpperArm_L_ik_parentConstraint1.ctz" "UpperArm_L_ik.tz";
connectAttr "UpperArm_L_ik_parentConstraint1.crx" "UpperArm_L_ik.rx";
connectAttr "UpperArm_L_ik_parentConstraint1.cry" "UpperArm_L_ik.ry";
connectAttr "UpperArm_L_ik_parentConstraint1.crz" "UpperArm_L_ik.rz";
connectAttr "UpperArm_L_ik.s" "lowerarm_l_ik.is";
connectAttr "lowerarm_l_ik.s" "Hand_L_ik.is";
connectAttr "Hand_L_ik.tx" "effector1.tx";
connectAttr "Hand_L_ik.ty" "effector1.ty";
connectAttr "Hand_L_ik.tz" "effector1.tz";
connectAttr "Hand_L_ik.opm" "effector1.opm";
connectAttr "UpperArm_L_ik.ro" "UpperArm_L_ik_parentConstraint1.cro";
connectAttr "UpperArm_L_ik.pim" "UpperArm_L_ik_parentConstraint1.cpim";
connectAttr "UpperArm_L_ik.rp" "UpperArm_L_ik_parentConstraint1.crp";
connectAttr "UpperArm_L_ik.rpt" "UpperArm_L_ik_parentConstraint1.crt";
connectAttr "UpperArm_L_ik.jo" "UpperArm_L_ik_parentConstraint1.cjo";
connectAttr "clavicle_l.t" "UpperArm_L_ik_parentConstraint1.tg[0].tt";
connectAttr "clavicle_l.rp" "UpperArm_L_ik_parentConstraint1.tg[0].trp";
connectAttr "clavicle_l.rpt" "UpperArm_L_ik_parentConstraint1.tg[0].trt";
connectAttr "clavicle_l.r" "UpperArm_L_ik_parentConstraint1.tg[0].tr";
connectAttr "clavicle_l.ro" "UpperArm_L_ik_parentConstraint1.tg[0].tro";
connectAttr "clavicle_l.s" "UpperArm_L_ik_parentConstraint1.tg[0].ts";
connectAttr "clavicle_l.pm" "UpperArm_L_ik_parentConstraint1.tg[0].tpm";
connectAttr "clavicle_l.jo" "UpperArm_L_ik_parentConstraint1.tg[0].tjo";
connectAttr "clavicle_l.ssc" "UpperArm_L_ik_parentConstraint1.tg[0].tsc";
connectAttr "clavicle_l.is" "UpperArm_L_ik_parentConstraint1.tg[0].tis";
connectAttr "UpperArm_L_ik_parentConstraint1.w0" "UpperArm_L_ik_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperArm_R_ik_parentConstraint1.ctx" "UpperArm_R_ik.tx";
connectAttr "UpperArm_R_ik_parentConstraint1.cty" "UpperArm_R_ik.ty";
connectAttr "UpperArm_R_ik_parentConstraint1.ctz" "UpperArm_R_ik.tz";
connectAttr "UpperArm_R_ik_parentConstraint1.crx" "UpperArm_R_ik.rx";
connectAttr "UpperArm_R_ik_parentConstraint1.cry" "UpperArm_R_ik.ry";
connectAttr "UpperArm_R_ik_parentConstraint1.crz" "UpperArm_R_ik.rz";
connectAttr "UpperArm_R_ik.s" "lowerarm_r_ik.is";
connectAttr "lowerarm_r_ik.s" "Hand_R_ik.is";
connectAttr "Hand_R_ik.tx" "effector2.tx";
connectAttr "Hand_R_ik.ty" "effector2.ty";
connectAttr "Hand_R_ik.tz" "effector2.tz";
connectAttr "Hand_R_ik.opm" "effector2.opm";
connectAttr "UpperArm_R_ik.ro" "UpperArm_R_ik_parentConstraint1.cro";
connectAttr "UpperArm_R_ik.pim" "UpperArm_R_ik_parentConstraint1.cpim";
connectAttr "UpperArm_R_ik.rp" "UpperArm_R_ik_parentConstraint1.crp";
connectAttr "UpperArm_R_ik.rpt" "UpperArm_R_ik_parentConstraint1.crt";
connectAttr "UpperArm_R_ik.jo" "UpperArm_R_ik_parentConstraint1.cjo";
connectAttr "clavicle_r.t" "UpperArm_R_ik_parentConstraint1.tg[0].tt";
connectAttr "clavicle_r.rp" "UpperArm_R_ik_parentConstraint1.tg[0].trp";
connectAttr "clavicle_r.rpt" "UpperArm_R_ik_parentConstraint1.tg[0].trt";
connectAttr "clavicle_r.r" "UpperArm_R_ik_parentConstraint1.tg[0].tr";
connectAttr "clavicle_r.ro" "UpperArm_R_ik_parentConstraint1.tg[0].tro";
connectAttr "clavicle_r.s" "UpperArm_R_ik_parentConstraint1.tg[0].ts";
connectAttr "clavicle_r.pm" "UpperArm_R_ik_parentConstraint1.tg[0].tpm";
connectAttr "clavicle_r.jo" "UpperArm_R_ik_parentConstraint1.tg[0].tjo";
connectAttr "clavicle_r.ssc" "UpperArm_R_ik_parentConstraint1.tg[0].tsc";
connectAttr "clavicle_r.is" "UpperArm_R_ik_parentConstraint1.tg[0].tis";
connectAttr "UpperArm_R_ik_parentConstraint1.w0" "UpperArm_R_ik_parentConstraint1.tg[0].tw"
		;
connectAttr "Thigh_L_ik_parentConstraint1.ctx" "Thigh_L_ik.tx";
connectAttr "Thigh_L_ik_parentConstraint1.cty" "Thigh_L_ik.ty";
connectAttr "Thigh_L_ik_parentConstraint1.ctz" "Thigh_L_ik.tz";
connectAttr "Thigh_L_ik_parentConstraint1.crx" "Thigh_L_ik.rx";
connectAttr "Thigh_L_ik_parentConstraint1.cry" "Thigh_L_ik.ry";
connectAttr "Thigh_L_ik_parentConstraint1.crz" "Thigh_L_ik.rz";
connectAttr "Thigh_L_ik.s" "calf_l_ik.is";
connectAttr "calf_l_ik.s" "Foot_L_ik.is";
connectAttr "Foot_L_ik.tx" "effector3.tx";
connectAttr "Foot_L_ik.ty" "effector3.ty";
connectAttr "Foot_L_ik.tz" "effector3.tz";
connectAttr "Foot_L_ik.opm" "effector3.opm";
connectAttr "Thigh_L_ik.ro" "Thigh_L_ik_parentConstraint1.cro";
connectAttr "Thigh_L_ik.pim" "Thigh_L_ik_parentConstraint1.cpim";
connectAttr "Thigh_L_ik.rp" "Thigh_L_ik_parentConstraint1.crp";
connectAttr "Thigh_L_ik.rpt" "Thigh_L_ik_parentConstraint1.crt";
connectAttr "Thigh_L_ik.jo" "Thigh_L_ik_parentConstraint1.cjo";
connectAttr "Pelvis.t" "Thigh_L_ik_parentConstraint1.tg[0].tt";
connectAttr "Pelvis.rp" "Thigh_L_ik_parentConstraint1.tg[0].trp";
connectAttr "Pelvis.rpt" "Thigh_L_ik_parentConstraint1.tg[0].trt";
connectAttr "Pelvis.r" "Thigh_L_ik_parentConstraint1.tg[0].tr";
connectAttr "Pelvis.ro" "Thigh_L_ik_parentConstraint1.tg[0].tro";
connectAttr "Pelvis.s" "Thigh_L_ik_parentConstraint1.tg[0].ts";
connectAttr "Pelvis.pm" "Thigh_L_ik_parentConstraint1.tg[0].tpm";
connectAttr "Pelvis.jo" "Thigh_L_ik_parentConstraint1.tg[0].tjo";
connectAttr "Pelvis.ssc" "Thigh_L_ik_parentConstraint1.tg[0].tsc";
connectAttr "Pelvis.is" "Thigh_L_ik_parentConstraint1.tg[0].tis";
connectAttr "Thigh_L_ik_parentConstraint1.w0" "Thigh_L_ik_parentConstraint1.tg[0].tw"
		;
connectAttr "Thigh_R_ik_parentConstraint1.ctx" "Thigh_R_ik.tx";
connectAttr "Thigh_R_ik_parentConstraint1.cty" "Thigh_R_ik.ty";
connectAttr "Thigh_R_ik_parentConstraint1.ctz" "Thigh_R_ik.tz";
connectAttr "Thigh_R_ik_parentConstraint1.crx" "Thigh_R_ik.rx";
connectAttr "Thigh_R_ik_parentConstraint1.cry" "Thigh_R_ik.ry";
connectAttr "Thigh_R_ik_parentConstraint1.crz" "Thigh_R_ik.rz";
connectAttr "Thigh_R_ik.s" "calf_r_ik.is";
connectAttr "calf_r_ik.s" "Foot_R_ik.is";
connectAttr "Foot_R_ik.tx" "effector4.tx";
connectAttr "Foot_R_ik.ty" "effector4.ty";
connectAttr "Foot_R_ik.tz" "effector4.tz";
connectAttr "Foot_R_ik.opm" "effector4.opm";
connectAttr "Thigh_R_ik.ro" "Thigh_R_ik_parentConstraint1.cro";
connectAttr "Thigh_R_ik.pim" "Thigh_R_ik_parentConstraint1.cpim";
connectAttr "Thigh_R_ik.rp" "Thigh_R_ik_parentConstraint1.crp";
connectAttr "Thigh_R_ik.rpt" "Thigh_R_ik_parentConstraint1.crt";
connectAttr "Thigh_R_ik.jo" "Thigh_R_ik_parentConstraint1.cjo";
connectAttr "Pelvis.t" "Thigh_R_ik_parentConstraint1.tg[0].tt";
connectAttr "Pelvis.rp" "Thigh_R_ik_parentConstraint1.tg[0].trp";
connectAttr "Pelvis.rpt" "Thigh_R_ik_parentConstraint1.tg[0].trt";
connectAttr "Pelvis.r" "Thigh_R_ik_parentConstraint1.tg[0].tr";
connectAttr "Pelvis.ro" "Thigh_R_ik_parentConstraint1.tg[0].tro";
connectAttr "Pelvis.s" "Thigh_R_ik_parentConstraint1.tg[0].ts";
connectAttr "Pelvis.pm" "Thigh_R_ik_parentConstraint1.tg[0].tpm";
connectAttr "Pelvis.jo" "Thigh_R_ik_parentConstraint1.tg[0].tjo";
connectAttr "Pelvis.ssc" "Thigh_R_ik_parentConstraint1.tg[0].tsc";
connectAttr "Pelvis.is" "Thigh_R_ik_parentConstraint1.tg[0].tis";
connectAttr "Thigh_R_ik_parentConstraint1.w0" "Thigh_R_ik_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperArm_L_ik.msg" "l_arm_ikHandle.hsj";
connectAttr "effector1.hp" "l_arm_ikHandle.hee";
connectAttr "ikRPsolver.msg" "l_arm_ikHandle.hsv";
connectAttr "l_arm_ikHandle_poleVectorConstraint1.ctx" "l_arm_ikHandle.pvx";
connectAttr "l_arm_ikHandle_poleVectorConstraint1.cty" "l_arm_ikHandle.pvy";
connectAttr "l_arm_ikHandle_poleVectorConstraint1.ctz" "l_arm_ikHandle.pvz";
connectAttr "l_arm_ikHandle.pim" "l_arm_ikHandle_poleVectorConstraint1.cpim";
connectAttr "UpperArm_L_ik.pm" "l_arm_ikHandle_poleVectorConstraint1.ps";
connectAttr "UpperArm_L_ik.t" "l_arm_ikHandle_poleVectorConstraint1.crp";
connectAttr "l_pv_ctrl.t" "l_arm_ikHandle_poleVectorConstraint1.tg[0].tt";
connectAttr "l_pv_ctrl.rp" "l_arm_ikHandle_poleVectorConstraint1.tg[0].trp";
connectAttr "l_pv_ctrl.rpt" "l_arm_ikHandle_poleVectorConstraint1.tg[0].trt";
connectAttr "l_pv_ctrl.pm" "l_arm_ikHandle_poleVectorConstraint1.tg[0].tpm";
connectAttr "l_arm_ikHandle_poleVectorConstraint1.w0" "l_arm_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "UpperArm_R_ik.msg" "r_arm_ikHandle.hsj";
connectAttr "effector2.hp" "r_arm_ikHandle.hee";
connectAttr "ikRPsolver.msg" "r_arm_ikHandle.hsv";
connectAttr "r_arm_ikHandle_poleVectorConstraint1.ctx" "r_arm_ikHandle.pvx";
connectAttr "r_arm_ikHandle_poleVectorConstraint1.cty" "r_arm_ikHandle.pvy";
connectAttr "r_arm_ikHandle_poleVectorConstraint1.ctz" "r_arm_ikHandle.pvz";
connectAttr "r_arm_ikHandle.pim" "r_arm_ikHandle_poleVectorConstraint1.cpim";
connectAttr "UpperArm_R_ik.pm" "r_arm_ikHandle_poleVectorConstraint1.ps";
connectAttr "UpperArm_R_ik.t" "r_arm_ikHandle_poleVectorConstraint1.crp";
connectAttr "r_pv_ctrl.t" "r_arm_ikHandle_poleVectorConstraint1.tg[0].tt";
connectAttr "r_pv_ctrl.rp" "r_arm_ikHandle_poleVectorConstraint1.tg[0].trp";
connectAttr "r_pv_ctrl.rpt" "r_arm_ikHandle_poleVectorConstraint1.tg[0].trt";
connectAttr "r_pv_ctrl.pm" "r_arm_ikHandle_poleVectorConstraint1.tg[0].tpm";
connectAttr "r_arm_ikHandle_poleVectorConstraint1.w0" "r_arm_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Thigh_L_ik.msg" "l_leg_ikHandle.hsj";
connectAttr "effector3.hp" "l_leg_ikHandle.hee";
connectAttr "ikRPsolver.msg" "l_leg_ikHandle.hsv";
connectAttr "l_leg_ikHandle_poleVectorConstraint1.ctx" "l_leg_ikHandle.pvx";
connectAttr "l_leg_ikHandle_poleVectorConstraint1.cty" "l_leg_ikHandle.pvy";
connectAttr "l_leg_ikHandle_poleVectorConstraint1.ctz" "l_leg_ikHandle.pvz";
connectAttr "l_leg_ikHandle.pim" "l_leg_ikHandle_poleVectorConstraint1.cpim";
connectAttr "Thigh_L_ik.pm" "l_leg_ikHandle_poleVectorConstraint1.ps";
connectAttr "Thigh_L_ik.t" "l_leg_ikHandle_poleVectorConstraint1.crp";
connectAttr "l_leg_pv_ctrl.t" "l_leg_ikHandle_poleVectorConstraint1.tg[0].tt";
connectAttr "l_leg_pv_ctrl.rp" "l_leg_ikHandle_poleVectorConstraint1.tg[0].trp";
connectAttr "l_leg_pv_ctrl.rpt" "l_leg_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "l_leg_pv_ctrl.pm" "l_leg_ikHandle_poleVectorConstraint1.tg[0].tpm";
connectAttr "l_leg_ikHandle_poleVectorConstraint1.w0" "l_leg_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Thigh_R_ik.msg" "r_leg_ikHandle.hsj";
connectAttr "effector4.hp" "r_leg_ikHandle.hee";
connectAttr "ikRPsolver.msg" "r_leg_ikHandle.hsv";
connectAttr "r_leg_ikHandle_poleVectorConstraint1.ctx" "r_leg_ikHandle.pvx";
connectAttr "r_leg_ikHandle_poleVectorConstraint1.cty" "r_leg_ikHandle.pvy";
connectAttr "r_leg_ikHandle_poleVectorConstraint1.ctz" "r_leg_ikHandle.pvz";
connectAttr "r_leg_ikHandle.pim" "r_leg_ikHandle_poleVectorConstraint1.cpim";
connectAttr "Thigh_R_ik.pm" "r_leg_ikHandle_poleVectorConstraint1.ps";
connectAttr "Thigh_R_ik.t" "r_leg_ikHandle_poleVectorConstraint1.crp";
connectAttr "r_leg_pv_ctrl.t" "r_leg_ikHandle_poleVectorConstraint1.tg[0].tt";
connectAttr "r_leg_pv_ctrl.rp" "r_leg_ikHandle_poleVectorConstraint1.tg[0].trp";
connectAttr "r_leg_pv_ctrl.rpt" "r_leg_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "r_leg_pv_ctrl.pm" "r_leg_ikHandle_poleVectorConstraint1.tg[0].tpm";
connectAttr "r_leg_ikHandle_poleVectorConstraint1.w0" "r_leg_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SK_Character_Male_JacketSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SK_Character_Male_JacketSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "EnvSamplerTex.oc" "Mat_PolygonCity_Texture_01_A.c";
connectAttr "bump2d1.o" "Mat_PolygonCity_Texture_01_A.n";
connectAttr "Mat_PolygonCity_Texture_01_A.oc" "SK_Character_Male_JacketSG.ss";
connectAttr "SK_Character_Male_JacketSG.msg" "materialInfo1.sg";
connectAttr "Mat_PolygonCity_Texture_01_A.msg" "materialInfo1.m";
connectAttr "EnvSamplerTex.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "EnvSamplerTex.uv";
connectAttr "place2dTexture1.ofu" "EnvSamplerTex.ofu";
connectAttr "place2dTexture1.ofv" "EnvSamplerTex.ofv";
connectAttr "place2dTexture1.rf" "EnvSamplerTex.rf";
connectAttr "place2dTexture1.reu" "EnvSamplerTex.reu";
connectAttr "place2dTexture1.rev" "EnvSamplerTex.rev";
connectAttr "place2dTexture1.vt1" "EnvSamplerTex.vt1";
connectAttr "place2dTexture1.vt2" "EnvSamplerTex.vt2";
connectAttr "place2dTexture1.vt3" "EnvSamplerTex.vt3";
connectAttr "place2dTexture1.vc1" "EnvSamplerTex.vc1";
connectAttr "place2dTexture1.ofs" "EnvSamplerTex.fs";
connectAttr ":defaultColorMgtGlobals.cme" "EnvSamplerTex.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "EnvSamplerTex.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "EnvSamplerTex.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "EnvSamplerTex.ws";
connectAttr "EnvSamplerTex_ncl1_1.oa" "bump2d1.bv";
connectAttr "place2dTexture2.o" "EnvSamplerTex_ncl1_1.uv";
connectAttr "place2dTexture2.ofu" "EnvSamplerTex_ncl1_1.ofu";
connectAttr "place2dTexture2.ofv" "EnvSamplerTex_ncl1_1.ofv";
connectAttr "place2dTexture2.rf" "EnvSamplerTex_ncl1_1.rf";
connectAttr "place2dTexture2.reu" "EnvSamplerTex_ncl1_1.reu";
connectAttr "place2dTexture2.rev" "EnvSamplerTex_ncl1_1.rev";
connectAttr "place2dTexture2.vt1" "EnvSamplerTex_ncl1_1.vt1";
connectAttr "place2dTexture2.vt2" "EnvSamplerTex_ncl1_1.vt2";
connectAttr "place2dTexture2.vt3" "EnvSamplerTex_ncl1_1.vt3";
connectAttr "place2dTexture2.vc1" "EnvSamplerTex_ncl1_1.vc1";
connectAttr "place2dTexture2.ofs" "EnvSamplerTex_ncl1_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "EnvSamplerTex_ncl1_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "EnvSamplerTex_ncl1_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "EnvSamplerTex_ncl1_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "EnvSamplerTex_ncl1_1.ws";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Root.wm" "skinCluster1.ma[0]";
connectAttr "Pelvis.wm" "skinCluster1.ma[1]";
connectAttr "spine_01.wm" "skinCluster1.ma[2]";
connectAttr "spine_02.wm" "skinCluster1.ma[3]";
connectAttr "spine_03.wm" "skinCluster1.ma[4]";
connectAttr "neck_01.wm" "skinCluster1.ma[5]";
connectAttr "head.wm" "skinCluster1.ma[6]";
connectAttr "eyes.wm" "skinCluster1.ma[7]";
connectAttr "eyebrows.wm" "skinCluster1.ma[8]";
connectAttr "clavicle_l.wm" "skinCluster1.ma[9]";
connectAttr "UpperArm_L.wm" "skinCluster1.ma[10]";
connectAttr "lowerarm_l.wm" "skinCluster1.ma[11]";
connectAttr "Hand_L.wm" "skinCluster1.ma[12]";
connectAttr "thumb_01_l.wm" "skinCluster1.ma[13]";
connectAttr "thumb_02_l.wm" "skinCluster1.ma[14]";
connectAttr "thumb_03_l.wm" "skinCluster1.ma[15]";
connectAttr "indexFinger_01_l.wm" "skinCluster1.ma[16]";
connectAttr "indexFinger_02_l.wm" "skinCluster1.ma[17]";
connectAttr "indexFinger_03_l.wm" "skinCluster1.ma[18]";
connectAttr "indexFinger_04_l.wm" "skinCluster1.ma[19]";
connectAttr "finger_01_l.wm" "skinCluster1.ma[20]";
connectAttr "finger_02_l.wm" "skinCluster1.ma[21]";
connectAttr "finger_03_l.wm" "skinCluster1.ma[22]";
connectAttr "finger_04_l.wm" "skinCluster1.ma[23]";
connectAttr "clavicle_r.wm" "skinCluster1.ma[24]";
connectAttr "UpperArm_R.wm" "skinCluster1.ma[25]";
connectAttr "lowerarm_r.wm" "skinCluster1.ma[26]";
connectAttr "Hand_R.wm" "skinCluster1.ma[27]";
connectAttr "thumb_01_r.wm" "skinCluster1.ma[28]";
connectAttr "thumb_02_r.wm" "skinCluster1.ma[29]";
connectAttr "thumb_03_r.wm" "skinCluster1.ma[30]";
connectAttr "indexFinger_01_r.wm" "skinCluster1.ma[31]";
connectAttr "indexFinger_02_r.wm" "skinCluster1.ma[32]";
connectAttr "indexFinger_03_r.wm" "skinCluster1.ma[33]";
connectAttr "indexFinger_04_r.wm" "skinCluster1.ma[34]";
connectAttr "finger_01_r.wm" "skinCluster1.ma[35]";
connectAttr "finger_02_r.wm" "skinCluster1.ma[36]";
connectAttr "finger_03_r.wm" "skinCluster1.ma[37]";
connectAttr "finger_04_r.wm" "skinCluster1.ma[38]";
connectAttr "Thigh_R.wm" "skinCluster1.ma[39]";
connectAttr "calf_r.wm" "skinCluster1.ma[40]";
connectAttr "Foot_R.wm" "skinCluster1.ma[41]";
connectAttr "ball_r.wm" "skinCluster1.ma[42]";
connectAttr "toes_r.wm" "skinCluster1.ma[43]";
connectAttr "Thigh_L.wm" "skinCluster1.ma[44]";
connectAttr "calf_l.wm" "skinCluster1.ma[45]";
connectAttr "Foot_L.wm" "skinCluster1.ma[46]";
connectAttr "ball_l.wm" "skinCluster1.ma[47]";
connectAttr "toes_l.wm" "skinCluster1.ma[48]";
connectAttr "Root.liw" "skinCluster1.lw[0]";
connectAttr "Pelvis.liw" "skinCluster1.lw[1]";
connectAttr "spine_01.liw" "skinCluster1.lw[2]";
connectAttr "spine_02.liw" "skinCluster1.lw[3]";
connectAttr "spine_03.liw" "skinCluster1.lw[4]";
connectAttr "neck_01.liw" "skinCluster1.lw[5]";
connectAttr "head.liw" "skinCluster1.lw[6]";
connectAttr "eyes.liw" "skinCluster1.lw[7]";
connectAttr "eyebrows.liw" "skinCluster1.lw[8]";
connectAttr "clavicle_l.liw" "skinCluster1.lw[9]";
connectAttr "UpperArm_L.liw" "skinCluster1.lw[10]";
connectAttr "lowerarm_l.liw" "skinCluster1.lw[11]";
connectAttr "Hand_L.liw" "skinCluster1.lw[12]";
connectAttr "thumb_01_l.liw" "skinCluster1.lw[13]";
connectAttr "thumb_02_l.liw" "skinCluster1.lw[14]";
connectAttr "thumb_03_l.liw" "skinCluster1.lw[15]";
connectAttr "indexFinger_01_l.liw" "skinCluster1.lw[16]";
connectAttr "indexFinger_02_l.liw" "skinCluster1.lw[17]";
connectAttr "indexFinger_03_l.liw" "skinCluster1.lw[18]";
connectAttr "indexFinger_04_l.liw" "skinCluster1.lw[19]";
connectAttr "finger_01_l.liw" "skinCluster1.lw[20]";
connectAttr "finger_02_l.liw" "skinCluster1.lw[21]";
connectAttr "finger_03_l.liw" "skinCluster1.lw[22]";
connectAttr "finger_04_l.liw" "skinCluster1.lw[23]";
connectAttr "clavicle_r.liw" "skinCluster1.lw[24]";
connectAttr "UpperArm_R.liw" "skinCluster1.lw[25]";
connectAttr "lowerarm_r.liw" "skinCluster1.lw[26]";
connectAttr "Hand_R.liw" "skinCluster1.lw[27]";
connectAttr "thumb_01_r.liw" "skinCluster1.lw[28]";
connectAttr "thumb_02_r.liw" "skinCluster1.lw[29]";
connectAttr "thumb_03_r.liw" "skinCluster1.lw[30]";
connectAttr "indexFinger_01_r.liw" "skinCluster1.lw[31]";
connectAttr "indexFinger_02_r.liw" "skinCluster1.lw[32]";
connectAttr "indexFinger_03_r.liw" "skinCluster1.lw[33]";
connectAttr "indexFinger_04_r.liw" "skinCluster1.lw[34]";
connectAttr "finger_01_r.liw" "skinCluster1.lw[35]";
connectAttr "finger_02_r.liw" "skinCluster1.lw[36]";
connectAttr "finger_03_r.liw" "skinCluster1.lw[37]";
connectAttr "finger_04_r.liw" "skinCluster1.lw[38]";
connectAttr "Thigh_R.liw" "skinCluster1.lw[39]";
connectAttr "calf_r.liw" "skinCluster1.lw[40]";
connectAttr "Foot_R.liw" "skinCluster1.lw[41]";
connectAttr "ball_r.liw" "skinCluster1.lw[42]";
connectAttr "toes_r.liw" "skinCluster1.lw[43]";
connectAttr "Thigh_L.liw" "skinCluster1.lw[44]";
connectAttr "calf_l.liw" "skinCluster1.lw[45]";
connectAttr "Foot_L.liw" "skinCluster1.lw[46]";
connectAttr "ball_l.liw" "skinCluster1.lw[47]";
connectAttr "toes_l.liw" "skinCluster1.lw[48]";
connectAttr "Root.obcc" "skinCluster1.ifcl[0]";
connectAttr "Pelvis.obcc" "skinCluster1.ifcl[1]";
connectAttr "spine_01.obcc" "skinCluster1.ifcl[2]";
connectAttr "spine_02.obcc" "skinCluster1.ifcl[3]";
connectAttr "spine_03.obcc" "skinCluster1.ifcl[4]";
connectAttr "neck_01.obcc" "skinCluster1.ifcl[5]";
connectAttr "head.obcc" "skinCluster1.ifcl[6]";
connectAttr "eyes.obcc" "skinCluster1.ifcl[7]";
connectAttr "eyebrows.obcc" "skinCluster1.ifcl[8]";
connectAttr "clavicle_l.obcc" "skinCluster1.ifcl[9]";
connectAttr "UpperArm_L.obcc" "skinCluster1.ifcl[10]";
connectAttr "lowerarm_l.obcc" "skinCluster1.ifcl[11]";
connectAttr "Hand_L.obcc" "skinCluster1.ifcl[12]";
connectAttr "thumb_01_l.obcc" "skinCluster1.ifcl[13]";
connectAttr "thumb_02_l.obcc" "skinCluster1.ifcl[14]";
connectAttr "thumb_03_l.obcc" "skinCluster1.ifcl[15]";
connectAttr "indexFinger_01_l.obcc" "skinCluster1.ifcl[16]";
connectAttr "indexFinger_02_l.obcc" "skinCluster1.ifcl[17]";
connectAttr "indexFinger_03_l.obcc" "skinCluster1.ifcl[18]";
connectAttr "indexFinger_04_l.obcc" "skinCluster1.ifcl[19]";
connectAttr "finger_01_l.obcc" "skinCluster1.ifcl[20]";
connectAttr "finger_02_l.obcc" "skinCluster1.ifcl[21]";
connectAttr "finger_03_l.obcc" "skinCluster1.ifcl[22]";
connectAttr "finger_04_l.obcc" "skinCluster1.ifcl[23]";
connectAttr "clavicle_r.obcc" "skinCluster1.ifcl[24]";
connectAttr "UpperArm_R.obcc" "skinCluster1.ifcl[25]";
connectAttr "lowerarm_r.obcc" "skinCluster1.ifcl[26]";
connectAttr "Hand_R.obcc" "skinCluster1.ifcl[27]";
connectAttr "thumb_01_r.obcc" "skinCluster1.ifcl[28]";
connectAttr "thumb_02_r.obcc" "skinCluster1.ifcl[29]";
connectAttr "thumb_03_r.obcc" "skinCluster1.ifcl[30]";
connectAttr "indexFinger_01_r.obcc" "skinCluster1.ifcl[31]";
connectAttr "indexFinger_02_r.obcc" "skinCluster1.ifcl[32]";
connectAttr "indexFinger_03_r.obcc" "skinCluster1.ifcl[33]";
connectAttr "indexFinger_04_r.obcc" "skinCluster1.ifcl[34]";
connectAttr "finger_01_r.obcc" "skinCluster1.ifcl[35]";
connectAttr "finger_02_r.obcc" "skinCluster1.ifcl[36]";
connectAttr "finger_03_r.obcc" "skinCluster1.ifcl[37]";
connectAttr "finger_04_r.obcc" "skinCluster1.ifcl[38]";
connectAttr "Thigh_R.obcc" "skinCluster1.ifcl[39]";
connectAttr "calf_r.obcc" "skinCluster1.ifcl[40]";
connectAttr "Foot_R.obcc" "skinCluster1.ifcl[41]";
connectAttr "ball_r.obcc" "skinCluster1.ifcl[42]";
connectAttr "toes_r.obcc" "skinCluster1.ifcl[43]";
connectAttr "Thigh_L.obcc" "skinCluster1.ifcl[44]";
connectAttr "calf_l.obcc" "skinCluster1.ifcl[45]";
connectAttr "Foot_L.obcc" "skinCluster1.ifcl[46]";
connectAttr "ball_l.obcc" "skinCluster1.ifcl[47]";
connectAttr "toes_l.obcc" "skinCluster1.ifcl[48]";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "SK_Character_Male_JacketShape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "SK_Character_Male_JacketShape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "SK_Character_Male_JacketShapeOrig.w" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "|SK_Character_Male_Jacket.msg" "bindPose1.m[0]";
connectAttr "Root.msg" "bindPose1.m[1]";
connectAttr "Pelvis.msg" "bindPose1.m[2]";
connectAttr "spine_01.msg" "bindPose1.m[3]";
connectAttr "spine_02.msg" "bindPose1.m[4]";
connectAttr "spine_03.msg" "bindPose1.m[5]";
connectAttr "neck_01.msg" "bindPose1.m[6]";
connectAttr "head.msg" "bindPose1.m[7]";
connectAttr "eyes.msg" "bindPose1.m[8]";
connectAttr "eyebrows.msg" "bindPose1.m[9]";
connectAttr "clavicle_l.msg" "bindPose1.m[10]";
connectAttr "UpperArm_L.msg" "bindPose1.m[11]";
connectAttr "lowerarm_l.msg" "bindPose1.m[12]";
connectAttr "Hand_L.msg" "bindPose1.m[13]";
connectAttr "thumb_01_l.msg" "bindPose1.m[14]";
connectAttr "thumb_02_l.msg" "bindPose1.m[15]";
connectAttr "thumb_03_l.msg" "bindPose1.m[16]";
connectAttr "indexFinger_01_l.msg" "bindPose1.m[17]";
connectAttr "indexFinger_02_l.msg" "bindPose1.m[18]";
connectAttr "indexFinger_03_l.msg" "bindPose1.m[19]";
connectAttr "indexFinger_04_l.msg" "bindPose1.m[20]";
connectAttr "finger_01_l.msg" "bindPose1.m[21]";
connectAttr "finger_02_l.msg" "bindPose1.m[22]";
connectAttr "finger_03_l.msg" "bindPose1.m[23]";
connectAttr "finger_04_l.msg" "bindPose1.m[24]";
connectAttr "clavicle_r.msg" "bindPose1.m[25]";
connectAttr "UpperArm_R.msg" "bindPose1.m[26]";
connectAttr "lowerarm_r.msg" "bindPose1.m[27]";
connectAttr "Hand_R.msg" "bindPose1.m[28]";
connectAttr "thumb_01_r.msg" "bindPose1.m[29]";
connectAttr "thumb_02_r.msg" "bindPose1.m[30]";
connectAttr "thumb_03_r.msg" "bindPose1.m[31]";
connectAttr "indexFinger_01_r.msg" "bindPose1.m[32]";
connectAttr "indexFinger_02_r.msg" "bindPose1.m[33]";
connectAttr "indexFinger_03_r.msg" "bindPose1.m[34]";
connectAttr "indexFinger_04_r.msg" "bindPose1.m[35]";
connectAttr "finger_01_r.msg" "bindPose1.m[36]";
connectAttr "finger_02_r.msg" "bindPose1.m[37]";
connectAttr "finger_03_r.msg" "bindPose1.m[38]";
connectAttr "finger_04_r.msg" "bindPose1.m[39]";
connectAttr "Thigh_R.msg" "bindPose1.m[40]";
connectAttr "calf_r.msg" "bindPose1.m[41]";
connectAttr "Foot_R.msg" "bindPose1.m[42]";
connectAttr "ball_r.msg" "bindPose1.m[43]";
connectAttr "toes_r.msg" "bindPose1.m[44]";
connectAttr "Thigh_L.msg" "bindPose1.m[45]";
connectAttr "calf_l.msg" "bindPose1.m[46]";
connectAttr "Foot_L.msg" "bindPose1.m[47]";
connectAttr "ball_l.msg" "bindPose1.m[48]";
connectAttr "toes_l.msg" "bindPose1.m[49]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[7]" "bindPose1.p[9]";
connectAttr "bindPose1.m[5]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[13]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[13]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[5]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[28]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[28]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[2]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[43]" "bindPose1.p[44]";
connectAttr "bindPose1.m[2]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "bindPose1.m[46]" "bindPose1.p[47]";
connectAttr "bindPose1.m[47]" "bindPose1.p[48]";
connectAttr "bindPose1.m[48]" "bindPose1.p[49]";
connectAttr "Root.bps" "bindPose1.wm[1]";
connectAttr "Pelvis.bps" "bindPose1.wm[2]";
connectAttr "spine_01.bps" "bindPose1.wm[3]";
connectAttr "spine_02.bps" "bindPose1.wm[4]";
connectAttr "spine_03.bps" "bindPose1.wm[5]";
connectAttr "neck_01.bps" "bindPose1.wm[6]";
connectAttr "head.bps" "bindPose1.wm[7]";
connectAttr "eyes.bps" "bindPose1.wm[8]";
connectAttr "eyebrows.bps" "bindPose1.wm[9]";
connectAttr "clavicle_l.bps" "bindPose1.wm[10]";
connectAttr "UpperArm_L.bps" "bindPose1.wm[11]";
connectAttr "lowerarm_l.bps" "bindPose1.wm[12]";
connectAttr "Hand_L.bps" "bindPose1.wm[13]";
connectAttr "thumb_01_l.bps" "bindPose1.wm[14]";
connectAttr "thumb_02_l.bps" "bindPose1.wm[15]";
connectAttr "thumb_03_l.bps" "bindPose1.wm[16]";
connectAttr "indexFinger_01_l.bps" "bindPose1.wm[17]";
connectAttr "indexFinger_02_l.bps" "bindPose1.wm[18]";
connectAttr "indexFinger_03_l.bps" "bindPose1.wm[19]";
connectAttr "indexFinger_04_l.bps" "bindPose1.wm[20]";
connectAttr "finger_01_l.bps" "bindPose1.wm[21]";
connectAttr "finger_02_l.bps" "bindPose1.wm[22]";
connectAttr "finger_03_l.bps" "bindPose1.wm[23]";
connectAttr "finger_04_l.bps" "bindPose1.wm[24]";
connectAttr "clavicle_r.bps" "bindPose1.wm[25]";
connectAttr "UpperArm_R.bps" "bindPose1.wm[26]";
connectAttr "lowerarm_r.bps" "bindPose1.wm[27]";
connectAttr "Hand_R.bps" "bindPose1.wm[28]";
connectAttr "thumb_01_r.bps" "bindPose1.wm[29]";
connectAttr "thumb_02_r.bps" "bindPose1.wm[30]";
connectAttr "thumb_03_r.bps" "bindPose1.wm[31]";
connectAttr "indexFinger_01_r.bps" "bindPose1.wm[32]";
connectAttr "indexFinger_02_r.bps" "bindPose1.wm[33]";
connectAttr "indexFinger_03_r.bps" "bindPose1.wm[34]";
connectAttr "indexFinger_04_r.bps" "bindPose1.wm[35]";
connectAttr "finger_01_r.bps" "bindPose1.wm[36]";
connectAttr "finger_02_r.bps" "bindPose1.wm[37]";
connectAttr "finger_03_r.bps" "bindPose1.wm[38]";
connectAttr "finger_04_r.bps" "bindPose1.wm[39]";
connectAttr "Thigh_R.bps" "bindPose1.wm[40]";
connectAttr "calf_r.bps" "bindPose1.wm[41]";
connectAttr "Foot_R.bps" "bindPose1.wm[42]";
connectAttr "ball_r.bps" "bindPose1.wm[43]";
connectAttr "toes_r.bps" "bindPose1.wm[44]";
connectAttr "Thigh_L.bps" "bindPose1.wm[45]";
connectAttr "calf_l.bps" "bindPose1.wm[46]";
connectAttr "Foot_L.bps" "bindPose1.wm[47]";
connectAttr "ball_l.bps" "bindPose1.wm[48]";
connectAttr "toes_l.bps" "bindPose1.wm[49]";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "SK_Character_Male_JacketShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "file1.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture3.c" "file1.c";
connectAttr "place2dTexture3.tf" "file1.tf";
connectAttr "place2dTexture3.rf" "file1.rf";
connectAttr "place2dTexture3.mu" "file1.mu";
connectAttr "place2dTexture3.mv" "file1.mv";
connectAttr "place2dTexture3.s" "file1.s";
connectAttr "place2dTexture3.wu" "file1.wu";
connectAttr "place2dTexture3.wv" "file1.wv";
connectAttr "place2dTexture3.re" "file1.re";
connectAttr "place2dTexture3.of" "file1.of";
connectAttr "place2dTexture3.r" "file1.ro";
connectAttr "place2dTexture3.n" "file1.n";
connectAttr "place2dTexture3.vt1" "file1.vt1";
connectAttr "place2dTexture3.vt2" "file1.vt2";
connectAttr "place2dTexture3.vt3" "file1.vt3";
connectAttr "place2dTexture3.vc1" "file1.vc1";
connectAttr "place2dTexture3.o" "file1.uv";
connectAttr "place2dTexture3.ofs" "file1.fs";
connectAttr "SK_Character_Male_JacketSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "Mat_PolygonCity_Texture_01_A.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "EnvSamplerTex.msg" ":defaultTextureList1.tx" -na;
connectAttr "EnvSamplerTex_ncl1_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of human_rig.ma
