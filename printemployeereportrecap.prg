function PrintEmployeeReportRecap()

	Local mPageNo, mLineNo, mPrinter
	
	mPrinter := GetPrinter()
		If Empty (mPrinter)
	return nil
	EndIf

	SELECT PRINTER mPrinter; 
	ORIENTATION PRINTER_ORIENT_PORTRAIT; 
	PAPERSIZE PRINTER_PAPER_A4;
	QUALITY PRINTER_RES_DRAFT;
	PREVIEW

	START PRINTDOC NAME "Address"
	START PRINTPAGE



   
   
   

	***Jangan di ubah!!!*****************************************
	cGenderMale 	:=12345
	cGenderFemale 	:=12345
	cGenderOthers 	:=12345
	cGenderTotal 	:=12345
	
	cMaritalSingle	:=12345
	cMaritalMarried	:=12345
	cMaritalOthers	:=12345
	cMaritalTotal	:=12345
	
	*--EmployeeStatusCode		domEmployeeStatusCode,           --/* SmallInt {'-','CONTRACT','PERMANENT','OUTSOURCE','DAILY-WORKER','PROBATION-CONTRACT','PROBATION-DAILY'} */
	cEmpStaCONTRACT				:=12345
	cEmpStaPERMANENT			:=12345
	cEmpStaOUTSOURCE			:=12345
	cEmpStaDAILY_WORKER			:=12345
	cEmpStaPROBATION_CONTRACT	:=12345
	cEmpStaPROBATION_DAILY		:=12345
	cEmpStaOthers				:=12345
	cEmpStaTotal				:=12345
	
	*--ReligionCode	domReligionCode,         /* SmallInt {'-','ISLAM','KATHOLIK','PROTESTAN','HINDU','BUDHA'} 1 2 3 4 5 6 */
	cReligISLAM		:=12345
	cReligKATHOLIK	:=12345
	cReligPROTESTAN	:=12345
	cReligHINDU		:=12345
	cReligBUDHA		:=12345
	cReligOthers	:=12345
	cReligTotal		:=12345
	
	*--EducationLevelCode	domEducationLevelCode, /* tblEducationLevel SmallInt  {'-','SD','SMP','SMU','D1','D2','D3','D4','S1','S2','S3'} */
	cEduSD		:=12345
	cEduSMP		:=12345
	cEduSMU		:=12345
	cEduD1		:=12345
	cEduD2		:=12345
	cEduD3		:=12345
	cEduD4		:=12345
	cEduS1		:=12345
	cEduS2		:=12345
	cEduS3		:=12345
	cEduOthers	:=12345
	cEduTotal	:=12345
	
	***Jangan di ubah!!!*****************************************
	
	
	
	
	******************************************************************************
	*gender
	
	
	
	@ 08, 05 PRINT M->cComp1 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	@ 11, 05 PRINT M->cComp2 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	
	@ 08, 195 PRINT "EMPLOYEE  REPORT  RECAP" FONT "Arial" SIZE 12 COLOR BLACK BOLD UNDERLINE RIGHT 
	
	
	
	*@ 22, 05 PRINT "GENDER" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,05 print RECTANGLE TO 25,47 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 22,22 PRINT "GENDER" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 25,05 print RECTANGLE TO 29,14 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,07 PRINT "MALE" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 25,14 print RECTANGLE TO 29,26 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,16 PRINT "FEMALE" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 25,26 print RECTANGLE TO 29,37 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,27 PRINT "OTHERS" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 25,37 print RECTANGLE TO 29,47 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,39 PRINT "TOTAL" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	
	*hasil
	
	nNo:=0
	*1*
	nRow:=30
	nNo++
	
	@ nRow, 13 PRINT Trans(cGenderMale,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 25 PRINT Trans(cGenderFemale,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 36 PRINT Trans(cGenderOthers,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 46 PRINT Trans(cGenderTotal,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	******************************************************************************************
	
	*status
	
	*@ 34, 05 PRINT "STATUS" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 36,05 print RECTANGLE TO 39,47 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 36,22 PRINT "STATUS" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 39,05 print RECTANGLE TO 42,15 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 39,06 PRINT "SINGLE" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 39,15 print RECTANGLE TO 42,27 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 39,16 PRINT "MARRIED" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 39,27 print RECTANGLE TO 42,38 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 39,28 PRINT "OTHERS" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 39,38 print RECTANGLE TO 42,47 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 39,39 PRINT "TOTAL" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	*hasil
	
	nNo:=0
	*1*
	nRow:=43
	nNo++
	
	@ nRow, 14 PRINT Trans(cMaritalSingle,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 26 PRINT Trans(cMaritalMarried,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 37 PRINT Trans(cMaritalOthers,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 46 PRINT Trans(cMaritalTotal,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	******************************************************************************************
	
	
	*employee status
	
	*@ 47, 05 PRINT "EMPLOYEE STATUS" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 50,05 print RECTANGLE TO 53,112 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 50,48 PRINT "EMPLOYEE STATUS" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 53,05 print RECTANGLE TO 56,15 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 53, 06 PRINT "Contract" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 53,15 print RECTANGLE TO 56,28 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 53, 16 PRINT "Permanent" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 53,28 print RECTANGLE TO 56,41 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 53, 29 PRINT "Out Source" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 53,41 print RECTANGLE TO 56,56 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 53, 42 PRINT "Daily Worker" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 53,56 print RECTANGLE TO 56,77 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 53, 57 PRINT "Probation Contract" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 53,77 print RECTANGLE TO 56,94 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 53, 78 PRINT "Probation Daily" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 53,94 print RECTANGLE TO 56,103 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 53, 95 PRINT "Others" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 53,103 print RECTANGLE TO 56,112 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 53, 105 PRINT "Total" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	
	*hasil
	
	nNo:=0
	*1*
	nRow:=57
	nNo++
	
	@ nRow, 14 PRINT Trans(cEmpStaCONTRACT,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 27 PRINT Trans(cEmpStaPERMANENT,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 40 PRINT Trans(cEmpStaOUTSOURCE,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 55 PRINT Trans(cEmpStaDAILY_WORKER,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 77 PRINT Trans(cEmpStaPROBATION_CONTRACT,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 93 PRINT Trans(cEmpStaPROBATION_DAILY,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 102 PRINT Trans(cEmpStaOthers,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 111 PRINT Trans(cEmpStaTotal,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	****************************************************************************************
	
	*ReligionCode
	
	*@ 63, 05 PRINT "RELIGION" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 66,05 print RECTANGLE TO 69,74 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 66,35 PRINT "RELIGION" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 69,05 print RECTANGLE TO 72,14 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 69, 07 PRINT "Islam" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 69,14 print RECTANGLE TO 72,24 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 69, 15 PRINT "Khatolik" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 69,24 print RECTANGLE TO 72,36 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 69, 25 PRINT "Protestan" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 69,36 print RECTANGLE TO 72,45 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 69, 38 PRINT "Hindu" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 69,45 print RECTANGLE TO 72,54 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 69, 46 PRINT "Budha" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 69,54 print RECTANGLE TO 72,65 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 69, 56 PRINT "Others" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 69,65 print RECTANGLE TO 72,74 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 69, 67 PRINT "Total" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	*hasil
	
	nNo:=0
	*1*
	nRow:=73
	nNo++
	
	@ nRow, 13 PRINT Trans(cReligISLAM,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 23 PRINT Trans(cReligISLAM,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 35 PRINT Trans(cReligISLAM,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 44 PRINT Trans(cReligISLAM,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 53 PRINT Trans(cReligISLAM,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 64 PRINT Trans(cReligISLAM,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 73 PRINT Trans(cReligISLAM,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	****************************************************************************************
	
	
	*EducationLevelCode
	
	*@ 78, 05 PRINT "EDUCATION LEVEL" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 81,05 print RECTANGLE TO 84,103 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 81,44 PRINT "EDUCATION LEVEL" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,05 print RECTANGLE TO 87,14 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 08 PRINT "SD" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,14 print RECTANGLE TO 87,22 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 16 PRINT "SMP" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,22 print RECTANGLE TO 87,31 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 24 PRINT "SMU" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,31 print RECTANGLE TO 87,40 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 34 PRINT "D1" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,40 print RECTANGLE TO 87,49 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 43 PRINT "D2" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,49 print RECTANGLE TO 87,58 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 52 PRINT "D3" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,58 print RECTANGLE TO 87,67 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 61 PRINT "D4" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,67 print RECTANGLE TO 87,76 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 70 PRINT "S1" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,76 print RECTANGLE TO 87,85 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 79 PRINT "S2" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,85 print RECTANGLE TO 87,94 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 86 PRINT "Others" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 84,94 print RECTANGLE TO 87,103 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 84, 96 PRINT "Total" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	
	
	*hasil
	
	nNo:=0
	*1*
	nRow:=88
	nNo++
	
	@ nRow, 13 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 21 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 30 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 39 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 48 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 57 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 66 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 75 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 84 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 93 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 102 PRINT Trans(cEduSD,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	
	
	
	****************************************************************************************
   
	END PRINTPAGE
	END PRINTDOC

return nil