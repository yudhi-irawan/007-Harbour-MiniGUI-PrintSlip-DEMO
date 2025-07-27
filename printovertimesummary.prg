function PrintOvertimeSummary()

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
	
	*------------------------------0        1         2         3 
	*                  			   123456789012345678901234567890                   

	cOrganizationCode			:='00.00.00.00.00.00.00'			//aDataCell[3]
	cOrganizationDescription2	:='ABCDEFGHIJKLMNOPQRSTUVWXYZABCD'	//aDataCell[4]
	cOT150						:=12345.78							//aDataCell[5]
	cOT200         				:=12345.78							//aDataCell[6]
	cOT300         				:=12345.78							//aDataCell[7]
	cOT400         				:=12345.78							//aDataCell[8]
	cOTPaidMeal     			:=12345.78							//aDataCell[9]
	cOTPaidTransport			:=12345.78							//aDataCell[10]
	
	
	
	***Jangan di ubah!!!*****************************************
	
	
	@ 08, 05 PRINT M->cComp1 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	@ 11, 05 PRINT M->cComp2 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	
	@ 08, 200 PRINT "OVERTIME SUMMARY" FONT "Arial" SIZE 10 COLOR BLACK BOLD RIGHT 
	
	@ 22,05 print RECTANGLE TO 26,12 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,07 PRINT "NO." FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,12 print RECTANGLE TO 26,25 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,17 PRINT "NIK" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,25 print RECTANGLE TO 26,61 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,35 PRINT "NAMA KARYAWAN" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,61 print RECTANGLE TO 26,84 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,63 PRINT "KODE ORGANISASI" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,84 print RECTANGLE TO 26,129 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,100 PRINT "KETERANGAN" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,129 print RECTANGLE TO 26,140 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,132 PRINT "OT150" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,140 print RECTANGLE TO 26,151 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,142 PRINT "OT200" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,151 print RECTANGLE TO 26,162 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,153 PRINT "OT300" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,162 print RECTANGLE TO 26,173 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,164 PRINT "OT400" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,173 print RECTANGLE TO 26,187 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,174 PRINT "OTPaidMeal" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,187 print RECTANGLE TO 26,202 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,188 PRINT "OTPaidTrans" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	
	*hasil
	
	nNo:=0
	*1*
	nRow:=28
	nNo++
	
	@ nRow, 11 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 13 PRINT M->cEmployeeCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 26 PRINT M->cEmployeeName FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 63 PRINT cOrganizationCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 85 PRINT cOrganizationDescription2 FONT "Arial" SIZE 6 COLOR BLACK
	
	@ nRow, 139 PRINT cOT150 FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 150 PRINT cOT200 FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 161 PRINT cOT300 FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 172 PRINT cOT400 FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 186 PRINT cOTPaidMeal FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 202 PRINT cOTPaidTransport FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	******************************************************************************************
	
	****************************************************************************************
   
	END PRINTPAGE
	END PRINTDOC

return nil