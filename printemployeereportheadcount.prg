function PrintEmployeeReportHeadcount()

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
    cOrganizationCode:='00.00.00.00'
	*-------------------------          1         2         3         4         5         6         7         8
	cOrganizationDescription:='123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 '
    cOrganizationDescription2:='123456789 123456789 123456789 '	
	cHeadcount:=123456
	***Jangan di ubah!!!*****************************************




	*                      1         2         3         4         5         6         7         8         9         10        1         2         3         4         5         6         7         8         9         10
	*-------------123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
	cKeterangan:='*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*'
	
	******************************************************************************
	
	
	@ 08, 05 PRINT M->cComp1 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	@ 11, 05 PRINT M->cComp2 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	
	@ 08, 195 PRINT "EMPLOYEE  REPORT  HEADCOUNT" FONT "Arial" SIZE 10 COLOR BLACK BOLD UNDERLINE RIGHT 
	
	
	
	*@ 22, 05 PRINT "GENDER" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,05 print RECTANGLE TO 29,12 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 24, 07 PRINT "NO." FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,12 print RECTANGLE TO 25,184 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 22,94 PRINT "REPORT HEADCOUNT" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 25,12 print RECTANGLE TO 29,39 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,14 PRINT "ORGANIZATITON CODE" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 25,39 print RECTANGLE TO 29,132 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,77 PRINT "DESCRIPTION" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 25,132 print RECTANGLE TO 29,167 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,139 PRINT "SHORT DESCRIPTION" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 25,167 print RECTANGLE TO 29,184 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,169 PRINT "HEADCOUNT" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	
	*hasil
	
	nNo:=0
	*1*
	nRow:=30
	nNo++
	
	@ nRow, 11 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 13 PRINT cOrganizationCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 40 PRINT cOrganizationDescription FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 133 PRINT cOrganizationDescription2 FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 183 PRINT Trans(cHeadcount,'999999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	******************************************************************************************
	
	****************************************************************************************
   
	END PRINTPAGE
	END PRINTDOC

return nil