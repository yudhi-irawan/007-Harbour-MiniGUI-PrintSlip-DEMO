function PrintUMTInsentive()

	Local mPageNo, mLineNo, mPrinter
	
	mPrinter := GetPrinter()
	If Empty (mPrinter)
		return nil
	EndIf

	SELECT PRINTER mPrinter; 
	ORIENTATION PRINTER_ORIENT_LANDSCAPE; 
	PAPERSIZE PRINTER_PAPER_A4;
	QUALITY PRINTER_RES_DRAFT;
	PREVIEW

	START PRINTDOC NAME "Address"
	START PRINTPAGE



	cKetUpah:='XXXXXXXXXXXXXXXXXXXX'



	cOrganizationCode:=''							//aDataCell[1]
	cOrganizationDescription2:=''					//aDataCell[2]	
	//M->cEmployeeCode:='13.05.1711'						//aDataCell[3]
	//M->cEmployeeName:='TIKA KARTIKA'					//aDataCell[4]
	cPosition:='XXCDEFGHIJABCDEFGHIJABCDEFGHXX'		//aDataCell[5]
	
	cJML_HR_GK:=22		//aDataCell[6]
	cJML_POT_UM:=22		//aDataCell[7]	  
	cJML_POT_UT:=22		//aDataCell[8]
	cJML_POT_IN:=22		//aDataCell[9]
	
	
	cJML_BYR_UM:=22		//aDataCell[10]
	cJML_BYR_UT:=22		//aDataCell[11]
	cJML_BYR_IN:=22		//aDataCell[12]
	
	
	cTUN_UM:=22			//aDataCell[13]
	cTUN_UT:=22			//aDataCell[14]
	cTUN_IN:=22			//aDataCell[15]
	cRpUangMakan:=0			//aDataCell[16]
	cRpUangTransport:=0		//aDataCell[17]
	cRpUangIncentive:=14000	//aDataCell[18]
	
	cRpTotalDiterima:=0			//aDataCell[19]
	cTotalAbsDeductionSalary:=0	//aDataCell[20]
	
	*cRemark:=aDataCell[21]   
	*cKeterangan:=Alltrim(cRemark)      	  
	cRemark_16_to_20:='aaa'	//aDataCell[21]
	cRemark_21_to_25:='bbb'	//aDataCell[22]
	cRemark_26_to_31:='ccc'	//aDataCell[23]
	cRemark_01_to_05:='ddd'	//aDataCell[24]
	cRemark_06_to_10:='eee'	//aDataCell[25]
	cRemark_11_to_15:='fff'	//aDataCell[26]
	cKeterangan:=Alltrim(cRemark_16_to_20)+Alltrim(cRemark_21_to_25)+Alltrim(cRemark_26_to_31)+Alltrim(cRemark_01_to_05)+Alltrim(cRemark_06_to_10)+Alltrim(cRemark_11_to_15)
	  
	  
	***Jangan di ubah!!!*****************************************


	*                      1         2         3         4         5         6         7         8         9         10        1         2         3         4         5         6         7         8         9         10
	*-------------123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
	cKeterangan:='*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*'
	
	******************************************************************************
	
	@ 07, 03 PRINT M->cComp1 FONT "Arial" SIZE 8 COLOR BLACK
	@ 10, 03 PRINT M->cComp2 FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 07, 134 PRINT "PERHITUNGAN ABSENSI DAN UMT" FONT "Arial" SIZE 8 COLOR BLACK BOLD
	@ 10, 130 PRINT "dari TANGGAL 2014-08-16 s/d 2014-08-15" FONT "Arial" SIZE 8 COLOR BLACK BOLD
	
	@ 20, 16 PRINT "PAGE : "+Trans(nPageNo,'9999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	*@ 25,03 print RECTANGLE TO 33,275 penwidth 0.1 
	
	@ 25,03 print RECTANGLE TO 33,11 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 28, 06 PRINT "NO." FONT "Arial" SIZE 6 COLOR BLACK
	
	*--------------
	
	@ 25,11 print RECTANGLE TO 29,115 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26, 60 PRINT "EMPLOYEE" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,11 print RECTANGLE TO 33,23 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 16 PRINT "ID" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,23 print RECTANGLE TO 33,70 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 43 PRINT "NAME" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,70 print RECTANGLE TO 33,115 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 87 PRINT "POSITION" FONT "Arial" SIZE 6 COLOR BLACK
	
	*------------
	
	@ 25,115 print RECTANGLE TO 33,122 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 28, 117 PRINT "GK" FONT "Arial" SIZE 6 COLOR BLACK
	
	*-------------
	
	@ 25,122 print RECTANGLE TO 29,140 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26, 124 PRINT "JUMLAH POT." FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,122 print RECTANGLE TO 33,140 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 127 PRINT "INSENTIF" FONT "Arial" SIZE 6 COLOR BLACK
	
	
	*------------
	
	@ 25,140 print RECTANGLE TO 29,158 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,142 PRINT "JUMLAH BYR" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,140 print RECTANGLE TO 33,158 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 145 PRINT "INSENTIF" FONT "Arial" SIZE 6 COLOR BLACK
	
	
	
	*------------
	
	@ 25,158 print RECTANGLE TO 33,186 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27,163 PRINT "RINCIAN INSENTIF" FONT "Arial" SIZE 6 COLOR BLACK
	
	
	*------------
	
	@ 25,186 print RECTANGLE TO 33,202 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27,191 PRINT "TOTAL" FONT "Arial" SIZE 6 COLOR BLACK
	
	*------------
	
	@ 25,202 print RECTANGLE TO 29,218 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,204 PRINT "POTONGAN" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,202 print RECTANGLE TO 33,218 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 207 PRINT "UPAH" FONT "Arial" SIZE 6 COLOR BLACK
	
	*------------
	
	@ 25,218 print RECTANGLE TO 33,278 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27,237 PRINT "KETERANGAN UPAH" FONT "Arial" SIZE 6 COLOR BLACK
	
	
	
	nNo:=0
	*1*
	****************************************************************************************
	nRow:=37
	nNo++
	
	@ nRow, 04 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 12 PRINT M->cEmployeeCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 24 PRINT M->cEmployeeName FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 71 PRINT cPosition FONT "Arial" SIZE 6 COLOR BLACK
	
	@ nRow, 121 PRINT Trans(cJML_HR_GK,'99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT  //------->betulin...
	**@ nRow, 130 PRINT Trans(cJML_HR_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	**@ nRow, 139 PRINT Trans(cJML_HR_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 148 PRINT Trans(cJML_POT_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT   
	@ nRow, 157 PRINT Trans(cJML_POT_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 171 PRINT Trans(cRpUangMakan,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 185 PRINT Trans(cRpUangTransport,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 201 PRINT Trans(cRpTotalDiterima,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 217 PRINT Trans(cTotalAbsDeductionSalary,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 219 PRINT cKetUpah FONT "Arial" SIZE 6 COLOR BLACK
	
	
	******************************************************************************
	
	*2*
	****************************************************************************************
	nRow:=40
	nNo++
	
	@ nRow, 04 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 12 PRINT M->cEmployeeCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 24 PRINT M->cEmployeeName FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 71 PRINT cPosition FONT "Arial" SIZE 6 COLOR BLACK
	
	@ nRow, 121 PRINT Trans(cJML_HR_GK,'99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT  //------->betulin...
	*@ nRow, 130 PRINT Trans(cJML_HR_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	*@ nRow, 139 PRINT Trans(cJML_HR_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 148 PRINT Trans(cJML_POT_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT   
	@ nRow, 157 PRINT Trans(cJML_POT_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 171 PRINT Trans(cRpUangMakan,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 185 PRINT Trans(cRpUangTransport,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 201 PRINT Trans(cRpTotalDiterima,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 217 PRINT Trans(cTotalAbsDeductionSalary,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 219 PRINT cKetUpah FONT "Arial" SIZE 6 COLOR BLACK
	
	*3*
	****************************************************************************************
	nRow:=43
	nNo++
	
	@ nRow, 04 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 12 PRINT M->cEmployeeCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 24 PRINT M->cEmployeeName FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 71 PRINT cPosition FONT "Arial" SIZE 6 COLOR BLACK
	
	@ nRow, 121 PRINT Trans(cJML_HR_GK,'99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT  //------->betulin...
	*@ nRow, 130 PRINT Trans(cJML_HR_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	*@ nRow, 139 PRINT Trans(cJML_HR_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 148 PRINT Trans(cJML_POT_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT   
	@ nRow, 157 PRINT Trans(cJML_POT_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 171 PRINT Trans(cRpUangMakan,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 185 PRINT Trans(cRpUangTransport,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 201 PRINT Trans(cRpTotalDiterima,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 217 PRINT Trans(cTotalAbsDeductionSalary,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 219 PRINT cKetUpah FONT "Arial" SIZE 6 COLOR BLACK
	
	*4*
	****************************************************************************************
	nRow:=46
	nNo++
	
	@ nRow, 04 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 12 PRINT M->cEmployeeCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 24 PRINT M->cEmployeeName FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 71 PRINT cPosition FONT "Arial" SIZE 6 COLOR BLACK
	
	@ nRow, 121 PRINT Trans(cJML_HR_GK,'99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT  //------->betulin...
	*@ nRow, 130 PRINT Trans(cJML_HR_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	*@ nRow, 139 PRINT Trans(cJML_HR_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 148 PRINT Trans(cJML_POT_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT   
	@ nRow, 157 PRINT Trans(cJML_POT_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 171 PRINT Trans(cRpUangMakan,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 185 PRINT Trans(cRpUangTransport,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 201 PRINT Trans(cRpTotalDiterima,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 217 PRINT Trans(cTotalAbsDeductionSalary,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 219 PRINT cKetUpah FONT "Arial" SIZE 6 COLOR BLACK
	
	*5*
	****************************************************************************************
	nRow:=49
	nNo++
	
	@ nRow, 04 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 12 PRINT M->cEmployeeCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 24 PRINT M->cEmployeeName FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 71 PRINT cPosition FONT "Arial" SIZE 6 COLOR BLACK
	
	@ nRow, 121 PRINT Trans(cJML_HR_GK,'99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT  //------->betulin...
	*@ nRow, 130 PRINT Trans(cJML_HR_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	*@ nRow, 139 PRINT Trans(cJML_HR_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 148 PRINT Trans(cJML_POT_UM,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT   
	@ nRow, 157 PRINT Trans(cJML_POT_UT,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 171 PRINT Trans(cRpUangMakan,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 185 PRINT Trans(cRpUangTransport,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 201 PRINT Trans(cRpTotalDiterima,'9,999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 217 PRINT Trans(cTotalAbsDeductionSalary,'99.99') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 219 PRINT cKetUpah FONT "Arial" SIZE 6 COLOR BLACK
	
	
	******************************************************************************

   
	END PRINTPAGE
	END PRINTDOC

return nil