function PrintAbsensiSummary()

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
	*                  	   		   123456789012345678901234567890                   

	cOrganizationCode			:='00.00.00.00.00.00.00'			//aDataCell[3]
	cOrganizationDescription2	:='ABCDEFGHIJKLMNOPQRSTUVWXYZABCD'	//aDataCell[4]
	cA							:=5									//aDataCell[5]
	cCT							:=6									//aDataCell[6]
	cI							:=7									//aDataCell[7]
	cIB							:=8									//aDataCell[8]
	cIP							:=9									//aDataCell[9]
	cS							:=10								//aDataCell[10]
	cSB							:=11								//aDataCell[11]
	cT							:=12								//aDataCell[12]
	cPotGP						:=99								//aDataCell[13]
	cPotUM						:=88								//aDataCell[14]
	
	***Jangan di ubah!!!*****************************************
	
	
	@ 08, 05 PRINT M->cComp1 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	@ 11, 05 PRINT M->cComp2 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	
	@ 08, 200 PRINT "ABSENSI SUMMARY" FONT "Arial" SIZE 10 COLOR BLACK BOLD RIGHT 
	
	@ 22,05 print RECTANGLE TO 26,12 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,07 PRINT "NO." FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,12 print RECTANGLE TO 26,27 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,18 PRINT "NIK" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,27 print RECTANGLE TO 26,63 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,37 PRINT "NAMA KARYAWAN" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,63 print RECTANGLE TO 26,86 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,65 PRINT "KODE ORGANISASI" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,86 print RECTANGLE TO 26,131 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,102 PRINT "KETERANGAN" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,131 print RECTANGLE TO 26,137 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,132 PRINT "  A " FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,137 print RECTANGLE TO 26,143 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,139 PRINT "CT" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,143 print RECTANGLE TO 26,149 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,146 PRINT "I " FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,149 print RECTANGLE TO 26,155 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,150 PRINT " IB" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,155 print RECTANGLE TO 26,161 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,156 PRINT " IP" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,161 print RECTANGLE TO 26,167 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,163 PRINT " S " FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,167 print RECTANGLE TO 26,173 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,168 PRINT " SB" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,173 print RECTANGLE TO 26,179 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,175 PRINT "T " FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,179 print RECTANGLE TO 26,187 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,180 PRINT "PotGP " FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,187 print RECTANGLE TO 26,196 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,188 PRINT "PotUM" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	
	*hasil
	
	nNo:=0
	*1*
	nRow:=28
	nNo++
	
	@ nRow, 11 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 13 PRINT M->cEmployeeCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 28 PRINT M->cEmployeeName FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 65 PRINT cOrganizationCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 87 PRINT cOrganizationDescription2 FONT "Arial" SIZE 6 COLOR BLACK
	
	
	
	*cA		
	*cCT		
	*cI		
	*cIB		
	*cIP		
	*cS		
	*cSB		
	*cT		
	*cPotGP
	*cPotUM
	
	
	@ nRow, 134 PRINT cA FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 140 PRINT cCT FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 146 PRINT cI FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 152 PRINT cIB FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 158 PRINT cIP FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 164 PRINT cS FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 170 PRINT cSB FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 176 PRINT cT FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 183 PRINT cPotGP FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 192 PRINT cPotUM FONT "Arial" SIZE 6 COLOR BLACK CENTER
	******************************************************************************************
	
	****************************************************************************************
   
	END PRINTPAGE
	END PRINTDOC

return nil