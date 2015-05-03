//Maya ASCII 2015 scene
//Name: fencepost.ma
//Last modified: Sun, May 03, 2015 04:26:06 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.056457993851362 17.911104082139587 35.335491957479263 ;
	setAttr ".r" -type "double3" -15.938352728942901 342.99999999999585 8.3146995286576994e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 38.26681025361934;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.3332676887512207 6.5933876037597656 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.28904518619687769 100.11966013459705 -0.028377715436970485 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.9727908454992127;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.025099333027424842 12.547325052078531 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.4673836130916698;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.31949577321886 13.123511791229248 0.10049110651018495 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.8840905281704066;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
createNode transform -n "transform1" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".dr" 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 6 10.33930228606159 0 ;
	setAttr ".s" -type "double3" 0.60398027071065685 1.3611628561428917 1 ;
createNode transform -n "transform4" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".dr" 1;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 6 5.3517294120749233 0 ;
	setAttr ".s" -type "double3" 0.60398027071065685 1.3611628561428917 1 ;
createNode transform -n "transform3" -p "pCube3";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr -s 8 ".vt[0:7]"  -9.41337967 -0.90956455 0.26540682 9.41337967 -0.90956455 0.26540682
		 -9.41337967 0.90956455 0.26540682 9.41337967 0.90956455 0.26540682 -9.41337967 0.90956455 -0.26540682
		 9.41337967 0.90956455 -0.26540682 -9.41337967 -0.90956455 -0.26540682 9.41337967 -0.90956455 -0.26540682;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "transform2" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:98]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 131 ".uvst[0].uvsp[0:130]" -type "float2" 0.625 0 0.625 0.25
		 0.625 0.5 0.625 0.75 0.625 1 0.875 0 0.875 0.25 0.625 0.480281 0.855281 0.25 0.625
		 0.769719 0.855281 0 0.62500006 0.2829842 0.65798426 0.25 0.625 0.9670158 0.6579842
		 0 0.62500006 0.345557 0.72055709 0.25 0.625 0.90444303 0.72055697 0 0.625 0.40980765
		 0.78480768 0.25 0.625 0.84019238 0.78480762 0 0.625 0.24721783 0.625 0.50278217 0.875
		 0.24721783 0.855281 0.24721783 0.78480768 0.24721783 0.72055709 0.24721783 0.65798426
		 0.24721783 0.60788733 0.25 0.60788739 0.2829842 0.60788739 0.345557 0.60788733 0.40980765
		 0.60788733 0.480281 0.60788733 0.5 0.60788733 0.50278217 0.60788733 0.75 0.60788733
		 0.769719 0.60788733 0.84019238 0.60788733 0.90444303 0.60788733 0.96701574 0.60788733
		 0 0.60788733 1 0.60788733 0.24721783 0.60788733 0.74558967 0.625 0.74558967 0.875
		 0.0044103437 0.855281 0.0044103502 0.78480762 0.0044103502 0.72055697 0.0044103502
		 0.65798426 0.0044103502 0.625 0.0044103502 0.60788733 0.0044103502 0.65798426 0.22073494
		 0.625 0.22073494 0.60788733 0.22073494 0.60788733 0.52926505 0.625 0.52926505 0.875
		 0.22073494 0.855281 0.22073494 0.78480768 0.22073494 0.72055709 0.22073494 0.65798426
		 0.16946948 0.625 0.16946948 0.60788733 0.16946948 0.60788733 0.58053052 0.625 0.58053052
		 0.875 0.16946948 0.855281 0.16946948 0.78480768 0.16946948 0.72055709 0.16946948
		 0.65798426 0.12664764 0.625 0.12664764 0.60788733 0.12664764 0.60788733 0.62335241
		 0.625 0.62335241 0.875 0.12664764 0.855281 0.12664764 0.78480762 0.12664764 0.72055709
		 0.12664764 0.65798426 0.075781621 0.625 0.075781621 0.60788733 0.075781621 0.60788733
		 0.67421842 0.625 0.67421842 0.875 0.075781621 0.855281 0.075781621 0.78480762 0.075781621
		 0.72055709 0.075781621 0.72055709 0.22073494 0.72055709 0.16946948 0.78480768 0.16946948
		 0.78480768 0.22073494 0.72055709 0.12664764 0.72055709 0.075781621 0.78480762 0.075781621
		 0.78480762 0.12664764 0.78480762 0.12664764 0.78480762 0.075781621 0.72055703 0.075781621
		 0.72055703 0.12664764 0.78480768 0.16946948 0.72055709 0.16946948 0.72055709 0.22073494
		 0.78480768 0.22073494 0.50147039 0.5 0.50147039 0.50278217 0.50147039 0.52926505
		 0.50147039 0.58053052 0.50147039 0.62335241 0.50147039 0.67421842 0.50147039 0.74558967
		 0.50147039 0.75 0.50147039 0.769719 0.50147039 0.84019238 0.50147039 0.90444303 0.50147039
		 0.96701574 0.50147039 0 0.50147039 1 0.50147045 0.0044103502 0.50147045 0.075781621
		 0.50147039 0.12664764 0.50147039 0.16946948 0.50147039 0.22073494 0.50147039 0.24721783
		 0.50147039 0.25 0.50147045 0.2829842 0.50147045 0.345557 0.50147039 0.40980765 0.50147039
		 0.480281;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr -s 112 ".vt[0:111]"  1.48930633 0 1.27873886 1.48930633 13.1867733 1.27873886
		 1.37842751 13.1867733 -1.29259872 1.37842751 0 -1.29259872 1.47544646 13.1867733 -1.077756643
		 1.47544646 0 -1.077756643 1.54474568 13.18677425 1.0025291443 1.54474568 0 1.0025292635
		 1.54474568 13.18677521 0.32078698 1.54474568 0 0.32078707 1.54474568 13.1867733 -0.3792358
		 1.54474568 0 -0.37923574 1.48930633 13.040021896 1.27873886 1.37842751 13.040021896 -1.29259872
		 1.47544646 13.040021896 -1.077756643 1.54474568 13.040021896 -0.3792358 1.54474568 13.040023804 0.32078698
		 1.54474568 13.04002285 1.0025291443 1.18078637 13.1867733 1.36189795 1.33326769 13.18677425 1.0025291443
		 1.33326769 13.18677521 0.32078698 1.33326769 13.1867733 -0.3792358 1.26396847 13.1867733 -1.077756643
		 0.95905173 13.1867733 -1.34803808 0.95905173 13.040021896 -1.34803808 0.95905173 0 -1.34803808
		 1.26396847 0 -1.077756643 1.33326769 0 -0.37923574 1.33326769 0 0.32078707 1.33326769 0 1.0025292635
		 1.18078637 0 1.36189795 1.18078637 13.040021896 1.36189795 0.95905173 0.2326328 -1.34803808
		 1.37842751 0.2326328 -1.29259872 1.47544658 0.23263314 -1.077756643 1.5447458 0.23263314 -0.37923574
		 1.5447458 0.23263317 0.32078707 1.5447458 0.23263316 1.0025292635 1.48930645 0.23263314 1.27873886
		 1.18078637 0.23263314 1.36189795 1.54474568 11.64312744 1.0025291443 1.48930633 11.64312649 1.27873886
		 1.18078637 11.64312649 1.36189795 0.95905173 11.64312649 -1.34803808 1.37842751 11.64312649 -1.29259872
		 1.47544646 11.64312649 -1.077756643 1.53723586 11.63206863 -0.29371855 1.53723586 11.63207054 0.30648029
		 1.54474568 8.93902206 1.0025291443 1.48930633 8.93902206 1.27873886 1.18078637 8.93902206 1.36189795
		 0.95905173 8.93902206 -1.34803808 1.37842751 8.93902206 -1.29259872 1.47544646 8.93902206 -1.077756643
		 1.53723586 9.036943436 -0.29371852 1.53723586 9.036944389 0.30648032 1.54474568 6.68029451 1.0025291443
		 1.48930633 6.68029451 1.27873886 1.18078637 6.68029451 1.36189795 0.95905173 6.68029451 -1.34803808
		 1.37842751 6.68029451 -1.29259872 1.47544646 6.68029451 -1.077756643 1.53808904 6.65420771 -0.31029508
		 1.53808904 6.65420866 0.30565387 1.54474568 3.99726033 1.0025291443 1.48930633 3.99726033 1.27873886
		 1.18078637 3.99726033 1.36189795 0.95905173 3.99726009 -1.34803808 1.37842751 3.99726009 -1.29259872
		 1.47544646 3.99726033 -1.077756643 1.53808904 4.067032337 -0.31029508 1.53808904 4.067032814 0.3056539
		 1.31055486 9.066473007 0.29965094 1.31055486 11.60254192 0.29965091 1.31055486 9.066472054 -0.28688914
		 1.31055486 11.60254002 -0.28688917 1.30970168 4.09299612 0.29044124 1.30970168 6.62824535 0.29044122
		 1.30970168 4.092995644 -0.29508242 1.30970168 6.6282444 -0.29508242 1.50590742 6.6282444 -0.29508242
		 1.50590742 4.092995644 -0.29508242 1.50590742 4.09299612 0.29044124 1.50590742 6.62824535 0.29044122
		 1.51150966 9.066472054 -0.28688914 1.51150966 9.066473007 0.29965097 1.51150966 11.60254288 0.29965091
		 1.51150966 11.60254002 -0.28688917 5.3822994e-005 13.1867733 -1.34803808 5.3822994e-005 13.040021896 -1.34803808
		 5.3822994e-005 11.64312649 -1.34803808 5.3822994e-005 8.93902206 -1.34803808 5.364418e-005 6.68029451 -1.34803808
		 5.364418e-005 3.99726009 -1.34803808 5.3822994e-005 0.2326328 -1.34803808 5.3822994e-005 0 -1.34803808
		 -0.00059372187 0 -1.02371037 0.00059378147 0 -0.37923574 0.00059378147 0 0.32078707
		 0.00059378147 0 1.0092850924 0.00046390295 0 1.36189795 0.00046390295 0.23263314 1.36189795
		 0.00046390295 3.99726033 1.36189795 0.00046390295 6.68029451 1.36189795 0.00046390295 8.93902206 1.36189795
		 0.00046390295 11.64312649 1.36189795 0.00046390295 13.040021896 1.36189795 0.00046390295 13.1867733 1.36189795
		 0.00059378147 13.18677425 1.0092849731 0.00059378147 13.18677521 0.32078698 0.00059378147 13.1867733 -0.3792358
		 -0.00059372187 13.1867733 -1.02371037;
	setAttr -s 210 ".ed";
	setAttr ".ed[0:165]"  0 38 0 1 6 0 2 13 0 3 5 0 4 2 0 4 22 1 5 11 0 5 34 1
		 6 8 0 6 19 1 7 0 0 7 37 1 8 10 0 8 20 1 9 7 0 9 36 1 10 4 0 10 21 1 11 9 0 11 35 1
		 12 1 0 12 31 1 13 44 0 14 4 1 13 14 1 15 10 1 14 15 1 16 8 1 15 16 1 17 6 1 16 17 1
		 17 12 1 18 1 0 19 108 1 18 19 1 20 109 1 19 20 1 21 110 1 20 21 1 22 111 1 21 22 1
		 23 2 0 22 23 1 24 13 1 23 24 1 25 3 0 24 43 1 26 5 1 25 26 1 27 11 1 26 27 1 28 9 1
		 27 28 1 29 7 1 28 29 1 30 0 0 29 30 1 31 106 1 30 39 1 31 18 1 32 25 1 33 3 0 32 33 1
		 34 69 1 33 34 1 35 70 1 34 35 1 36 71 1 35 36 1 37 64 1 36 37 1 38 65 0 37 38 1 39 66 1
		 38 39 1 39 101 1 40 17 1 41 12 0 40 41 1 42 31 1 41 42 1 42 105 1 43 51 1 44 52 0
		 43 44 1 45 14 1 44 45 1 46 15 1 45 46 1 47 16 1 46 47 0 47 40 1 48 40 1 49 41 0 48 49 1
		 50 42 1 49 50 1 50 104 1 51 59 1 52 60 0 51 52 1 53 45 1 52 53 1 54 46 0 53 54 1
		 55 47 0 54 55 0 55 48 1 56 48 1 57 49 0 56 57 1 58 50 1 57 58 1 58 103 1 59 67 1
		 60 68 0 59 60 1 61 53 1 60 61 1 62 54 1 61 62 1 63 55 1 62 63 0 63 56 1 64 56 1 65 57 0
		 64 65 1 66 58 1 65 66 1 66 102 1 67 32 1 68 33 0 67 68 1 69 61 1 68 69 1 70 62 0
		 69 70 1 71 63 0 70 71 0 71 64 1 55 85 0 47 86 0 72 73 0 54 84 0 74 72 0 46 87 0 74 75 0
		 75 73 0 71 82 0 63 83 0 76 77 0 70 81 0 78 76 0 62 80 0 78 79 0 79 77 0 80 79 0 81 78 0
		 80 81 1 82 76 0 81 82 1 83 77 0 82 83 1 83 80 1 84 74 0 85 72 0;
	setAttr ".ed[166:209]" 84 85 1 86 73 0 85 86 1 87 75 0 86 87 1 87 84 1 88 23 0
		 89 24 1 88 89 0 90 43 1 89 90 0 91 51 1 90 91 0 92 59 1 91 92 0 93 67 1 92 93 0 94 32 1
		 93 94 0 95 25 0 94 95 0 96 26 1 95 96 0 97 27 1 96 97 0 98 28 1 97 98 0 99 29 1 98 99 0
		 100 30 0 99 100 0 100 101 0 101 102 0 102 103 0 103 104 0 104 105 0 105 106 0 107 18 0
		 106 107 0 107 108 0 108 109 0 109 110 0 110 111 0 111 88 0;
	setAttr -s 99 -ch 396 ".fc[0:98]" -type "polyFaces" 
		f 4 -11 11 72 -1
		mu 0 4 0 14 51 52
		f 4 -8 -4 -62 64
		mu 0 4 48 10 5 47
		f 4 -12 -15 15 70
		mu 0 4 51 14 18 50
		f 4 -16 -19 19 68
		mu 0 4 50 18 22 49
		f 4 -20 -7 7 66
		mu 0 4 49 22 10 48
		f 4 -24 -25 -3 -5
		mu 0 4 8 26 25 6
		f 4 -26 -27 23 -17
		mu 0 4 20 27 26 8
		f 4 -28 -29 25 -13
		mu 0 4 16 28 27 20
		f 4 -30 -31 27 -9
		mu 0 4 12 29 28 16
		f 4 -32 29 -2 -21
		mu 0 4 23 29 12 1
		f 4 32 1 9 -35
		mu 0 4 30 1 11 31
		f 4 -37 -10 8 13
		mu 0 4 32 31 11 15
		f 4 -39 -14 12 17
		mu 0 4 33 32 15 19
		f 4 -41 -18 16 5
		mu 0 4 34 33 19 7
		f 4 -43 -6 4 -42
		mu 0 4 35 34 7 2
		f 4 -45 41 2 -44
		mu 0 4 36 35 2 24
		f 4 -61 62 61 -46
		mu 0 4 37 45 46 3
		f 4 -49 45 3 -48
		mu 0 4 38 37 3 9
		f 4 -51 47 6 -50
		mu 0 4 39 38 9 21
		f 4 -53 49 18 -52
		mu 0 4 40 39 21 17
		f 4 -55 51 14 -54
		mu 0 4 41 40 17 13
		f 4 -57 53 10 -56
		mu 0 4 43 41 13 4
		f 4 -59 55 0 74
		mu 0 4 53 42 0 52
		f 4 -60 -22 20 -33
		mu 0 4 30 44 23 1
		f 4 -63 -131 132 131
		mu 0 4 46 45 84 85
		f 4 -64 -65 -132 134
		mu 0 4 87 48 47 86
		f 4 -66 -67 63 136
		mu 0 4 88 49 48 87
		f 4 -68 -69 65 138
		mu 0 4 89 50 49 88
		f 4 139 -70 -71 67
		mu 0 4 89 81 51 50
		f 4 -73 69 126 -72
		mu 0 4 52 51 81 82
		f 4 -74 -75 71 128
		mu 0 4 83 53 52 82
		f 4 -79 76 31 -78
		mu 0 4 55 54 29 23
		f 4 -80 -81 77 21
		mu 0 4 44 56 55 23
		f 4 -85 -47 43 22
		mu 0 4 58 57 36 24
		f 4 -86 -87 -23 24
		mu 0 4 26 60 59 25
		f 4 -88 -89 85 26
		mu 0 4 27 61 60 26
		f 4 -90 -91 87 28
		mu 0 4 28 62 61 27
		f 4 -77 -92 89 30
		mu 0 4 29 54 62 28
		f 4 -95 92 78 -94
		mu 0 4 64 63 54 55
		f 4 -96 -97 93 80
		mu 0 4 56 65 64 55
		f 4 -101 -83 84 83
		mu 0 4 67 66 57 58
		f 4 -102 -103 -84 86
		mu 0 4 60 69 68 59
		f 4 -104 -105 101 88
		mu 0 4 61 70 69 60
		f 4 -143 -145 146 147
		mu 0 4 90 91 92 93
		f 4 91 -93 -108 105
		mu 0 4 62 54 63 71
		f 4 -111 108 94 -110
		mu 0 4 73 72 63 64
		f 4 -112 -113 109 96
		mu 0 4 65 74 73 64
		f 4 -117 -99 100 99
		mu 0 4 76 75 66 67
		f 4 -118 -119 -100 102
		mu 0 4 69 78 77 68
		f 4 -120 -121 117 104
		mu 0 4 70 79 78 69
		f 4 -122 -123 119 106
		mu 0 4 71 80 79 70
		f 4 107 -109 -124 121
		mu 0 4 71 63 72 80
		f 4 -127 124 110 -126
		mu 0 4 82 81 72 73
		f 4 -128 -129 125 112
		mu 0 4 74 83 82 73
		f 4 -133 -115 116 115
		mu 0 4 85 84 75 76
		f 4 -134 -135 -116 118
		mu 0 4 78 87 86 77
		f 4 -136 -137 133 120
		mu 0 4 79 88 87 78
		f 4 -151 -153 154 155
		mu 0 4 94 95 96 97
		f 4 123 -125 -140 137
		mu 0 4 80 72 81 89
		f 4 -106 140 168 -142
		mu 0 4 62 71 103 104
		f 4 -107 143 166 -141
		mu 0 4 71 70 102 103
		f 4 103 145 171 -144
		mu 0 4 70 61 105 102
		f 4 90 141 170 -146
		mu 0 4 61 62 104 105
		f 4 -138 148 162 -150
		mu 0 4 80 89 100 101
		f 4 -139 151 160 -149
		mu 0 4 89 88 99 100
		f 4 135 153 158 -152
		mu 0 4 88 79 98 99
		f 4 122 149 163 -154
		mu 0 4 79 80 101 98
		f 4 -159 156 -155 -158
		mu 0 4 99 98 97 96
		f 4 -161 157 152 -160
		mu 0 4 100 99 96 95
		f 4 -163 159 150 -162
		mu 0 4 101 100 95 94
		f 4 -164 161 -156 -157
		mu 0 4 98 101 94 97
		f 4 -167 164 144 -166
		mu 0 4 103 102 92 91
		f 4 -169 165 142 -168
		mu 0 4 104 103 91 90
		f 4 -171 167 -148 -170
		mu 0 4 105 104 90 93
		f 4 -172 169 -147 -165
		mu 0 4 102 105 93 92
		f 4 -175 172 44 -174
		mu 0 4 107 106 35 36
		f 4 -176 -177 173 46
		mu 0 4 57 108 107 36
		f 4 -178 -179 175 82
		mu 0 4 66 109 108 57
		f 4 -180 -181 177 98
		mu 0 4 75 110 109 66
		f 4 -182 -183 179 114
		mu 0 4 84 111 110 75
		f 4 -184 -185 181 130
		mu 0 4 45 112 111 84
		f 4 -187 183 60 -186
		mu 0 4 113 112 45 37
		f 4 -189 185 48 -188
		mu 0 4 114 113 37 38
		f 4 -191 187 50 -190
		mu 0 4 115 114 38 39
		f 4 -193 189 52 -192
		mu 0 4 116 115 39 40
		f 4 -195 191 54 -194
		mu 0 4 117 116 40 41
		f 4 -197 193 56 -196
		mu 0 4 119 117 41 43
		f 4 -198 195 58 75
		mu 0 4 120 118 42 53
		f 4 -199 -76 73 129
		mu 0 4 121 120 53 83
		f 4 -200 -130 127 113
		mu 0 4 122 121 83 74
		f 4 -201 -114 111 97
		mu 0 4 123 122 74 65
		f 4 -202 -98 95 81
		mu 0 4 124 123 65 56
		f 4 -203 -82 79 57
		mu 0 4 125 124 56 44
		f 4 -205 -58 59 -204
		mu 0 4 126 125 44 30
		f 4 -206 203 34 33
		mu 0 4 127 126 30 31
		f 4 -207 -34 36 35
		mu 0 4 128 127 31 32
		f 4 -208 -36 38 37
		mu 0 4 129 128 32 33
		f 4 -209 -38 40 39
		mu 0 4 130 129 33 34
		f 4 -210 -40 42 -173
		mu 0 4 106 130 34 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "polySurface1";
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.68823519349098206 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" -6 10.33930228606159 0 ;
	setAttr ".s" -type "double3" 0.60398027071065685 1.3611628561428917 1 ;
createNode transform -n "transform5" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr -s 8 ".vt[0:7]"  -9.41337967 -0.90956455 0.26540682 9.41337967 -0.90956455 0.26540682
		 -9.41337967 0.90956455 0.26540682 9.41337967 0.90956455 0.26540682 -9.41337967 0.90956455 -0.26540682
		 9.41337967 0.90956455 -0.26540682 -9.41337967 -0.90956455 -0.26540682 9.41337967 -0.90956455 -0.26540682;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" -6 5.3517294120749233 0 ;
	setAttr ".s" -type "double3" 0.60398027071065685 1.3611628561428917 1 ;
createNode transform -n "transform6" -p "pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr -s 8 ".vt[0:7]"  -9.41337967 -0.90956455 0.26540682 9.41337967 -0.90956455 0.26540682
		 -9.41337967 0.90956455 0.26540682 9.41337967 0.90956455 0.26540682 -9.41337967 0.90956455 -0.26540682
		 9.41337967 0.90956455 -0.26540682 -9.41337967 -0.90956455 -0.26540682 9.41337967 -0.90956455 -0.26540682;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode place3dTexture -n "place3dTexture1";
	setAttr ".r" -type "double3" 90 0 0 ;
createNode place3dTexture -n "place3dTexture2";
	setAttr ".t" -type "double3" 0 8.2056342019851289 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "pCube7";
createNode mesh -n "pCube7Shape" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt";
	setAttr ".pt[0]" -type "float3" 2.5162158 0 0 ;
	setAttr ".pt[2]" -type "float3" 2.5162158 0 0 ;
	setAttr ".pt[4]" -type "float3" 2.5162158 0 0 ;
	setAttr ".pt[6]" -type "float3" 2.5162158 0 0 ;
	setAttr ".pt[8]" -type "float3" 2.5162158 0 0 ;
	setAttr ".pt[10]" -type "float3" 2.5162158 0 0 ;
	setAttr ".pt[12]" -type "float3" 2.5162158 0 0 ;
	setAttr ".pt[14]" -type "float3" 2.5162158 0 0 ;
	setAttr ".pt[17]" -type "float3" -2.5162158 0 0 ;
	setAttr ".pt[19]" -type "float3" -2.5162158 0 0 ;
	setAttr ".pt[21]" -type "float3" -2.5162158 0 0 ;
	setAttr ".pt[23]" -type "float3" -2.5162158 0 0 ;
	setAttr ".pt[25]" -type "float3" -2.5162158 0 0 ;
	setAttr ".pt[27]" -type "float3" -2.5162158 0 0 ;
	setAttr ".pt[29]" -type "float3" -2.5162158 0 0 ;
	setAttr ".pt[31]" -type "float3" -2.5162158 0 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 3.0894912552721578;
	setAttr ".h" 12.729299106778564;
	setAttr ".d" 2.7237958028845668;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	setAttr ".w" 18.826759612702215;
	setAttr ".h" 1.8191290859589972;
	setAttr ".d" 0.53081363835175921;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.92112404108047485;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 6.36464977 0 0 6.36464977
		 0 0 6.82212353 0 0 6.82212353 0 0 6.82212353 0 0 6.82212353 0 0 6.36464977 0 0 6.36464977
		 0;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[6:7]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.14323452115058899;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[15]" "e[17]" "e[20:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31715062260627747;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[15]" "e[17]" "e[28:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.47690579295158386;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.98887133598327637;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[58]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.93154925107955933;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0:3]" "e[18]" "e[26]" "e[34]" "e[42]" "e[58]" "e[69]" "e[71]" "e[73]" "e[75]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.062551312148571014;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[4:5]" "e[19]" "e[27]" "e[35]" "e[43]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[82]" "e[94]" "e[110]" "e[122]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.017839934676885605;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[82]" "e[110]" "e[124]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.89093047380447388;
	setAttr ".dr" no;
	setAttr ".re" 147;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[124]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.7630159854888916;
	setAttr ".dr" no;
	setAttr ".re" 147;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[124]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.7405666708946228;
	setAttr ".dr" no;
	setAttr ".re" 147;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[124]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]" "e[239]" "e[241]" "e[243]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.58387482166290283;
	setAttr ".dr" no;
	setAttr ".re" 147;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[108]" "f[140]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5447457 7.8201942 -0.029224366 ;
	setAttr ".rs" 33367;
	setAttr ".lt" -type "double3" 5.3884514225865674e-017 -2.9599801531787606e-017 -0.24170072181135116 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.5447456836700439 3.9972603321075439 -0.37923580408096313 ;
	setAttr ".cbx" -type "double3" 1.5447456836700439 11.643128395080566 0.32078707218170166 ;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[292:293]" "e[295]" "e[297]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.14090822637081146;
	setAttr ".dr" no;
	setAttr ".re" 297;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[94]" -type "float3" -0.0075097941 -0.040586062 0.092346638 ;
	setAttr ".tk[95]" -type "float3" -0.0075097941 -0.040586174 -0.021136111 ;
	setAttr ".tk[110]" -type "float3" -0.0075097941 0.12745045 0.092346638 ;
	setAttr ".tk[111]" -type "float3" -0.0075097941 0.12745039 -0.021136103 ;
	setAttr ".tk[126]" -type "float3" -0.0066565927 -0.052049942 0.084153332 ;
	setAttr ".tk[127]" -type "float3" -0.0066565927 -0.052050002 -0.03034582 ;
	setAttr ".tk[142]" -type "float3" -0.0066565927 0.09573511 0.084153332 ;
	setAttr ".tk[143]" -type "float3" -0.0066565927 0.095735066 -0.030345824 ;
	setAttr ".tk[144]" -type "float3" 0.0075097941 0.12745039 -0.021136103 ;
	setAttr ".tk[145]" -type "float3" 0.0075097941 -0.040586174 -0.021136111 ;
	setAttr ".tk[146]" -type "float3" 0.0075097941 0.12745045 0.092346638 ;
	setAttr ".tk[147]" -type "float3" 0.0075097941 -0.040586062 0.092346638 ;
	setAttr ".tk[148]" -type "float3" 0.0066565927 0.095735066 -0.030345824 ;
	setAttr ".tk[149]" -type "float3" 0.0066565927 -0.052050002 -0.03034582 ;
	setAttr ".tk[150]" -type "float3" 0.0066565927 0.09573511 0.084153332 ;
	setAttr ".tk[151]" -type "float3" 0.0066565927 -0.052049942 0.084153332 ;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[284:285]" "e[287]" "e[289]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11349119991064072;
	setAttr ".dr" no;
	setAttr ".re" 287;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[69]" "e[71]" "e[73]" "e[75]" "e[93]" "e[96]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[138]" "e[154]" "e[162]" "e[178]" "e[194]" "e[210]" "e[226]" "e[242]" "e[258]" "e[274]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.51256424188613892;
	setAttr ".dr" no;
	setAttr ".re" 105;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 102 ".tk";
	setAttr ".tk[0]" -type "float3" 0.13859852 0 -0.083159104 ;
	setAttr ".tk[1]" -type "float3" -0.055439409 0 -0.083159104 ;
	setAttr ".tk[2]" -type "float3" 0.13859852 0 -0.083159104 ;
	setAttr ".tk[3]" -type "float3" -0.055439409 0 -0.083159104 ;
	setAttr ".tk[4]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[5]" -type "float3" -0.16631822 0 0.069299258 ;
	setAttr ".tk[6]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[7]" -type "float3" -0.16631822 0 0.069299258 ;
	setAttr ".tk[8]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[11]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[13]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[14]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[24]" -type "float3" -0.055439409 0 -0.083159104 ;
	setAttr ".tk[25]" -type "float3" 0.13859852 0 -0.083159104 ;
	setAttr ".tk[26]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[30]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[31]" -type "float3" -0.16631822 0 0.069299258 ;
	setAttr ".tk[32]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[36]" -type "float3" -0.15248127 0 0 ;
	setAttr ".tk[40]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[41]" -type "float3" -0.37421593 0 0.013859847 ;
	setAttr ".tk[42]" -type "float3" -0.37421593 0 0.013859847 ;
	setAttr ".tk[43]" -type "float3" -0.37421593 0 0.013859847 ;
	setAttr ".tk[44]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[48]" -type "float3" -0.15248127 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.15248127 0 0 ;
	setAttr ".tk[50]" -type "float3" 0.15245837 0 1.3038516e-008 ;
	setAttr ".tk[51]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[55]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[56]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[57]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[61]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[62]" -type "float3" 0.15245837 0 1.3038516e-008 ;
	setAttr ".tk[63]" -type "float3" 0.15245837 0 1.3038516e-008 ;
	setAttr ".tk[64]" -type "float3" 0.13859852 0 -0.083159104 ;
	setAttr ".tk[65]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[69]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[70]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[71]" -type "float3" -0.37421593 0 0.013859847 ;
	setAttr ".tk[72]" -type "float3" -0.16631822 0 0.069299258 ;
	setAttr ".tk[73]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[77]" -type "float3" -0.055439409 0 -0.083159104 ;
	setAttr ".tk[78]" -type "float3" -0.15248127 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.15245837 0 1.3038516e-008 ;
	setAttr ".tk[81]" -type "float3" -0.055439409 0 -0.083159104 ;
	setAttr ".tk[82]" -type "float3" -0.15248127 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.15245837 0 1.3038516e-008 ;
	setAttr ".tk[84]" -type "float3" 0.13859852 0 -0.083159104 ;
	setAttr ".tk[85]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[89]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[90]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[91]" -type "float3" -0.37421593 0 0.013859847 ;
	setAttr ".tk[92]" -type "float3" -0.16631822 0 0.069299258 ;
	setAttr ".tk[93]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[94]" -type "float3" 0 0.029528735 -0.0068293917 ;
	setAttr ".tk[95]" -type "float3" 0 0.029528778 0.0068293908 ;
	setAttr ".tk[97]" -type "float3" -0.055439409 0 -0.083159104 ;
	setAttr ".tk[98]" -type "float3" -0.15248127 0 0 ;
	setAttr ".tk[99]" -type "float3" 0.15245837 0 1.3038516e-008 ;
	setAttr ".tk[100]" -type "float3" 0.13859852 0 -0.083159104 ;
	setAttr ".tk[101]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[104]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[105]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[106]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[107]" -type "float3" -0.37421593 0 0.013859847 ;
	setAttr ".tk[108]" -type "float3" -0.16631822 0 0.069299258 ;
	setAttr ".tk[109]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[110]" -type "float3" 0 -0.029528778 -0.0068293908 ;
	setAttr ".tk[111]" -type "float3" 0 -0.029528758 0.0068293917 ;
	setAttr ".tk[113]" -type "float3" -0.055439409 0 -0.083159104 ;
	setAttr ".tk[114]" -type "float3" -0.15248127 0 0 ;
	setAttr ".tk[115]" -type "float3" 0.15245837 0 1.3038516e-008 ;
	setAttr ".tk[116]" -type "float3" 0.13859852 0 -0.083159104 ;
	setAttr ".tk[117]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[120]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[121]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[122]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[123]" -type "float3" -0.37421593 0 0.013859847 ;
	setAttr ".tk[124]" -type "float3" -0.16631822 0 0.069299258 ;
	setAttr ".tk[125]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[126]" -type "float3" 0 0.025963146 -0.015212663 ;
	setAttr ".tk[127]" -type "float3" 0 0.02596317 0.015212663 ;
	setAttr ".tk[129]" -type "float3" -0.055439409 0 -0.083159104 ;
	setAttr ".tk[130]" -type "float3" -0.15248127 0 0 ;
	setAttr ".tk[131]" -type "float3" 0.15245837 0 1.3038516e-008 ;
	setAttr ".tk[132]" -type "float3" 0.13859852 0 -0.083159104 ;
	setAttr ".tk[133]" -type "float3" -1.3038516e-008 0 0.013859865 ;
	setAttr ".tk[136]" -type "float3" 0 0 0.18017808 ;
	setAttr ".tk[137]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[138]" -type "float3" 0.36035606 0 0.01385985 ;
	setAttr ".tk[139]" -type "float3" -0.37421593 0 0.013859847 ;
	setAttr ".tk[140]" -type "float3" -0.16631822 0 0.069299258 ;
	setAttr ".tk[141]" -type "float3" -0.069299251 0 0.069299258 ;
	setAttr ".tk[142]" -type "float3" 0 -0.02596317 -0.015212663 ;
	setAttr ".tk[143]" -type "float3" 0 -0.025963157 0.015212663 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[160:183]" -type "float3"  -0.0019578934 0 0 -0.0019578934
		 0 0 -0.0019578934 0 0 -0.0019578934 0 0 -0.0019581318 0 0 -0.0019581318 0 0 -0.0019578934
		 0 0 -0.0019578934 0 0 0.016755581 0 0 -0.017577171 0 0 -0.017577171 0 0 -0.017577171
		 0 0 -0.013864279 0 0 -0.013864279 0 0 -0.013864279 0 0 -0.013864279 0 0 -0.013864279
		 0 0 -0.013864279 0 0 -0.013864279 0 0 -0.013864279 0 0 -0.017577171 0 0 -0.017577171
		 0 0 -0.017577171 0 0 0.016755581 0 0;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 12 "f[0:3]" "f[5:8]" "f[10:12]" "f[14:16]" "f[18:20]" "f[22:28]" "f[48:68]" "f[76:77]" "f[80:88]" "f[96:104]" "f[112:120]" "f[128:136]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:98]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[88]" -type "float3" 5.3822994e-005 0 0 ;
	setAttr ".tk[89]" -type "float3" 5.3822994e-005 0 0 ;
	setAttr ".tk[90]" -type "float3" 5.3822994e-005 0 0 ;
	setAttr ".tk[91]" -type "float3" 5.3822994e-005 0 0 ;
	setAttr ".tk[92]" -type "float3" 5.364418e-005 0 0 ;
	setAttr ".tk[93]" -type "float3" 5.364418e-005 0 0 ;
	setAttr ".tk[94]" -type "float3" 5.3822994e-005 0 0 ;
	setAttr ".tk[95]" -type "float3" 5.3822994e-005 0 0 ;
	setAttr ".tk[96]" -type "float3" -0.00059372187 0 0 ;
	setAttr ".tk[97]" -type "float3" 0.00059378147 0 0 ;
	setAttr ".tk[98]" -type "float3" 0.00059378147 0 0 ;
	setAttr ".tk[99]" -type "float3" 0.00059378147 0 0 ;
	setAttr ".tk[100]" -type "float3" 0.00046390295 0 0 ;
	setAttr ".tk[101]" -type "float3" 0.00046390295 0 0 ;
	setAttr ".tk[102]" -type "float3" 0.00046390295 0 0 ;
	setAttr ".tk[103]" -type "float3" 0.00046390295 0 0 ;
	setAttr ".tk[104]" -type "float3" 0.00046390295 0 0 ;
	setAttr ".tk[105]" -type "float3" 0.00046390295 0 0 ;
	setAttr ".tk[106]" -type "float3" 0.00046390295 0 0 ;
	setAttr ".tk[107]" -type "float3" 0.00046390295 0 0 ;
	setAttr ".tk[108]" -type "float3" 0.00059378147 0 0 ;
	setAttr ".tk[109]" -type "float3" 0.00059378147 0 0 ;
	setAttr ".tk[110]" -type "float3" 0.00059378147 0 0 ;
	setAttr ".tk[111]" -type "float3" -0.00059372187 0 0 ;
	setAttr ".tk[200]" -type "float3" -5.3822994e-005 0 0 ;
	setAttr ".tk[201]" -type "float3" -5.3822994e-005 0 0 ;
	setAttr ".tk[202]" -type "float3" -5.3822994e-005 0 0 ;
	setAttr ".tk[203]" -type "float3" -5.3822994e-005 0 0 ;
	setAttr ".tk[204]" -type "float3" -5.364418e-005 0 0 ;
	setAttr ".tk[205]" -type "float3" -5.364418e-005 0 0 ;
	setAttr ".tk[206]" -type "float3" -5.3822994e-005 0 0 ;
	setAttr ".tk[207]" -type "float3" -5.3822994e-005 0 0 ;
	setAttr ".tk[208]" -type "float3" 0.00059372187 0 0 ;
	setAttr ".tk[209]" -type "float3" -0.00059378147 0 0 ;
	setAttr ".tk[210]" -type "float3" -0.00059378147 0 0 ;
	setAttr ".tk[211]" -type "float3" -0.00059378147 0 0 ;
	setAttr ".tk[212]" -type "float3" -0.00046390295 0 0 ;
	setAttr ".tk[213]" -type "float3" -0.00046390295 0 0 ;
	setAttr ".tk[214]" -type "float3" -0.00046390295 0 0 ;
	setAttr ".tk[215]" -type "float3" -0.00046390295 0 0 ;
	setAttr ".tk[216]" -type "float3" -0.00046390295 0 0 ;
	setAttr ".tk[217]" -type "float3" -0.00046390295 0 0 ;
	setAttr ".tk[218]" -type "float3" -0.00046390295 0 0 ;
	setAttr ".tk[219]" -type "float3" -0.00046390295 0 0 ;
	setAttr ".tk[220]" -type "float3" -0.00059378147 0 0 ;
	setAttr ".tk[221]" -type "float3" -0.00059378147 0 0 ;
	setAttr ".tk[222]" -type "float3" -0.00059378147 0 0 ;
	setAttr ".tk[223]" -type "float3" 0.00059372187 0 0 ;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 47 ".tk";
	setAttr ".tk[1]" -type "float3" 0.018506527 -0.11168323 -0.058330514 ;
	setAttr ".tk[2]" -type "float3" 0 -0.14024803 0.018228285 ;
	setAttr ".tk[4]" -type "float3" 0.018506527 -0.11425072 0 ;
	setAttr ".tk[6]" -type "float3" 0.018506527 -0.038307764 0 ;
	setAttr ".tk[8]" -type "float3" 0.018506527 -0.034148611 0 ;
	setAttr ".tk[10]" -type "float3" 0.018506527 -0.071580991 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.15008709 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.11301538 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.1318588 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.10998484 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.10998484 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.10998484 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.067334868 -0.058330514 ;
	setAttr ".tk[19]" -type "float3" 0 0.0060406034 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.010199757 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.02723263 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.069902346 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.14024803 0.018228285 ;
	setAttr ".tk[24]" -type "float3" 0 -0.11301538 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.15114141 0 ;
	setAttr ".tk[88]" -type "float3" 0 -0.11301538 0.018228285 ;
	setAttr ".tk[89]" -type "float3" 0 -0.15386435 0 ;
	setAttr ".tk[106]" -type "float3" 0 -0.080951184 0 ;
	setAttr ".tk[107]" -type "float3" 0 -0.040102229 -0.058330514 ;
	setAttr ".tk[108]" -type "float3" 0 0.033273231 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.037432384 0 ;
	setAttr ".tk[111]" -type "float3" 0 -0.042669713 0 ;
	setAttr ".tk[113]" -type "float3" -0.02775979 -0.12748107 -0.058330514 ;
	setAttr ".tk[114]" -type "float3" 0 -0.15386435 0.018228285 ;
	setAttr ".tk[116]" -type "float3" -0.02775979 -0.13004854 0 ;
	setAttr ".tk[118]" -type "float3" -0.02775979 -0.054105602 0 ;
	setAttr ".tk[120]" -type "float3" -0.02775979 -0.04994645 0 ;
	setAttr ".tk[122]" -type "float3" -0.02775979 -0.087378837 0 ;
	setAttr ".tk[124]" -type "float3" 0 -0.080951184 0 ;
	setAttr ".tk[125]" -type "float3" 0 -0.15386435 0 ;
	setAttr ".tk[126]" -type "float3" 0 -0.062722892 0 ;
	setAttr ".tk[127]" -type "float3" 0 -0.040848941 0 ;
	setAttr ".tk[128]" -type "float3" 0 -0.040848941 0 ;
	setAttr ".tk[129]" -type "float3" 0 -0.040848941 0 ;
	setAttr ".tk[130]" -type "float3" 0 -0.080951184 -0.058330514 ;
	setAttr ".tk[131]" -type "float3" 0 -0.0075757098 0 ;
	setAttr ".tk[132]" -type "float3" 0 -0.0034165559 0 ;
	setAttr ".tk[133]" -type "float3" 0 -0.040848941 0 ;
	setAttr ".tk[134]" -type "float3" 0 -0.083518654 0 ;
	setAttr ".tk[135]" -type "float3" 0 -0.11301538 0.018228285 ;
	setAttr ".tk[136]" -type "float3" 0 -0.11301538 0 ;
	setAttr ".tk[143]" -type "float3" 0 -0.080951184 0 ;
createNode wood -n "wood1";
createNode lambert -n "wood1Material";
createNode shadingEngine -n "wood1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode wood -n "wood2";
	setAttr ".v" 0.18045112490653992;
	setAttr ".ls" 0.13898496329784393;
	setAttr ".rd" 0.30075186491012573;
	setAttr ".a" 15.789473533630371;
	setAttr ".gs" 0.033082704991102219;
createNode lambert -n "wood2Material";
createNode shadingEngine -n "wood2SG";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
createNode materialInfo -n "materialInfo2";
createNode polyUnite -n "polyUnite2";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ep" 1;
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
	setAttr ".dar" 1.3333332538604736;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId3.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId4.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId10.id" "pCubeShape2.iog.og[0].gid";
connectAttr "wood2SG.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId11.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId12.id" "pCubeShape3.iog.og[0].gid";
connectAttr "wood2SG.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId13.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupId2.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "polySoftEdge1.out" "polySurfaceShape1.i";
connectAttr "groupId8.id" "pCubeShape5.iog.og[0].gid";
connectAttr "wood2SG.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupId9.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId6.id" "pCubeShape6.iog.og[0].gid";
connectAttr "wood2SG.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupId7.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "polyUnite2.out" "pCube7Shape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "wood1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "wood2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "wood1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "wood2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak2.out" "polySplitRing13.ip";
connectAttr "pCubeShape1.wm" "polySplitRing13.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCubeShape1.wm" "polySplitRing14.mp";
connectAttr "polyTweak3.out" "polySplitRing15.ip";
connectAttr "pCubeShape1.wm" "polySplitRing15.mp";
connectAttr "polySplitRing14.out" "polyTweak3.ip";
connectAttr "polySplitRing15.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent1.ig";
connectAttr "pCubeShape4.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape4.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "deleteComponent1.og" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "polyTweak5.out" "polyMergeVert1.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert1.mp";
connectAttr "polyUnite1.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySoftEdge1.ip";
connectAttr "polySurfaceShape1.wm" "polySoftEdge1.mp";
connectAttr "polyMergeVert1.out" "polyTweak6.ip";
connectAttr "place3dTexture1.wim" "wood1.pm";
connectAttr "wood1.oc" "wood1Material.c";
connectAttr "wood1Material.oc" "wood1SG.ss";
connectAttr "wood1SG.msg" "materialInfo1.sg";
connectAttr "wood1Material.msg" "materialInfo1.m";
connectAttr "wood1.msg" "materialInfo1.t" -na;
connectAttr "place3dTexture2.wim" "wood2.pm";
connectAttr "wood2.oc" "wood2Material.c";
connectAttr "wood2Material.oc" "wood2SG.ss";
connectAttr "pCubeShape6.iog.og[0]" "wood2SG.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" "wood2SG.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" "wood2SG.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" "wood2SG.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" "wood2SG.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" "wood2SG.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" "wood2SG.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" "wood2SG.dsm" -na;
connectAttr "groupId6.msg" "wood2SG.gn" -na;
connectAttr "groupId7.msg" "wood2SG.gn" -na;
connectAttr "groupId8.msg" "wood2SG.gn" -na;
connectAttr "groupId9.msg" "wood2SG.gn" -na;
connectAttr "groupId10.msg" "wood2SG.gn" -na;
connectAttr "groupId11.msg" "wood2SG.gn" -na;
connectAttr "groupId12.msg" "wood2SG.gn" -na;
connectAttr "groupId13.msg" "wood2SG.gn" -na;
connectAttr "wood2SG.msg" "materialInfo2.sg";
connectAttr "wood2Material.msg" "materialInfo2.m";
connectAttr "wood2.msg" "materialInfo2.t" -na;
connectAttr "pCubeShape6.o" "polyUnite2.ip[0]";
connectAttr "pCubeShape5.o" "polyUnite2.ip[1]";
connectAttr "pCubeShape2.o" "polyUnite2.ip[2]";
connectAttr "pCubeShape3.o" "polyUnite2.ip[3]";
connectAttr "pCubeShape6.wm" "polyUnite2.im[0]";
connectAttr "pCubeShape5.wm" "polyUnite2.im[1]";
connectAttr "pCubeShape2.wm" "polyUnite2.im[2]";
connectAttr "pCubeShape3.wm" "polyUnite2.im[3]";
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId10.id" "groupParts2.gi";
connectAttr "wood1SG.pa" ":renderPartition.st" -na;
connectAttr "wood2SG.pa" ":renderPartition.st" -na;
connectAttr "wood1Material.msg" ":defaultShaderList1.s" -na;
connectAttr "wood2Material.msg" ":defaultShaderList1.s" -na;
connectAttr "place3dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place3dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "wood1.msg" ":defaultTextureList1.tx" -na;
connectAttr "wood2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
// End of fencepost.ma
