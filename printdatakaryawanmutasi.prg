function PrintDataKaryawanMutasi()

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




	***Jangan di ubah!!!*****************************************


	*----------------------------          1         2         3          
	cEmployeeName           	:='123456789 123456789 123456789 '  //     VARCHAR(50),
	cEmployeeCode     		 	:='123456789 1'  	//VARCHAR(11),
	cJoinDate               	:='2015-01-01'   	//DATE,
	cTransDate              	:='2015-01-01'   	//DATE,
	cEducationLevelCode     	:='123456789 123456789 1234 '  				//SmallInt,
		cOrganizationCode       	:='123456789 1'  	//VARCHAR(11),
	cOrganizationDescription   :='123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 '  // VARCHAR(80),
	cOrganizationDescription2  :='123456789 123456789 123456789 '  // VARCHAR(30),
	
	cPositionTypeCode    		:='123' //VARCHAR(3),
	cPositionTypeDescription   :='123456789 123456789 123456789 '  // VARCHAR(30),
	cPositionTypeDescription2  :='123456789 123456789 123456789 '  // VARCHAR(30),
	
	*---------------------				1		  2			3		  4         5         6       
	cRemark 					:='123456789 123456789 123456789 123456789 123456789 123456789 '  // VARCHAR(80),

	***Jangan di ubah!!!*****************************************
 
	*------------------------
	cDepartemen				:='123456789 123456789 12345789 '
	*------------------------
 

	@ 08, 05 PRINT M->cComp1 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	@ 11, 05 PRINT M->cComp2 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	
	@ 08, 270 PRINT "DATA KARYAWAN MUTASI" FONT "Arial" SIZE 10 COLOR BLACK BOLD RIGHT 
	
	@ 22,05 print RECTANGLE TO 26,12 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,07 PRINT "NO." FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,12 print RECTANGLE TO 26,27 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,18 PRINT "NIK" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,27 print RECTANGLE TO 26,63 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,37 PRINT "NAMA KARYAWAN" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,63 print RECTANGLE TO 26,83 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,64 PRINT "TANGGAL MASUK" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,83 print RECTANGLE TO 26,104 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,84 PRINT "TANGGAL MUTASI" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,104 print RECTANGLE TO 26,133 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,112 PRINT "PENDIDIKAN" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,133 print RECTANGLE TO 26,167 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,143 PRINT "DEPARTEMEN" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,167 print RECTANGLE TO 26,202 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,180 PRINT "JABATAN" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	@ 22,202 print RECTANGLE TO 26,270 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 23,228 PRINT "KETERANGAN" FONT "Arial" SIZE 6 COLOR BLACK BOLD
	
	
	*hasil
	
	nNo:=0
	*1*
	nRow:=28
	nNo++
	
	@ nRow, 11 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 13 PRINT cEmployeeCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 28 PRINT cEmployeeName FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 73 PRINT cJoinDate FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 93 PRINT cTransDate FONT "Arial" SIZE 6 COLOR BLACK CENTER
	@ nRow, 105 PRINT cEducationLevelCode FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 134 PRINT cDepartemen FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 168 PRINT cPositionTypeDescription FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 203 PRINT cRemark FONT "Arial" SIZE 6 COLOR BLACK
	
	******************************************************************************************
	
	****************************************************************************************
   
	END PRINTPAGE
	END PRINTDOC

return nil