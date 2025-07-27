function PrintUMT()

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


   

	cPosition1:='XXCDEFGHIJABCDEFGHIJABCDEFGHXX' 
	cPosition2:='XXCDEFGHIJABCDEFGHXX'
	
	cHR:=25
	cUH:=21
	cUM:=23
	cUT:=23
	
	cUMRincian:=23*10500
	cUTRincian:=23*13300
	
	cTotal:=cUMRincian+cUTRincian
	
	cPotUpah:=0000000
	cKetUpah:='XXXXXXXXXXXXXXXXXXXX'
	
	
	*                      1         2         3         4         5         6         7         8         9         10        1         2         3         4         5         6         7         8         9         10
	*-------------123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
	cKeterangan:='*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*'
	
	******************************************************************************
	
	@ 05, 03 PRINT M->cComp1 FONT "Arial" SIZE 8 COLOR BLACK
	@ 08, 03 PRINT M->cComp2 FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 05, 100 PRINT "PERHITUNGAN ABSENSI DAN UMT TANGGAL " FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 20, 18 PRINT "PAGE : "+Trans(nPageNo,'9999') FONT "Arial" SIZE 8 COLOR BLACK RIGHT
	
	*@ 25,03 print RECTANGLE TO 33,275 penwidth 0.1 
	
	@ 25,03 print RECTANGLE TO 33,15 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 28, 07 PRINT "No." FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 25,14 print RECTANGLE TO 29,132 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26, 60 PRINT "Employee" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 29,14 print RECTANGLE TO 33,30 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 21 PRINT "ID" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 29,30 print RECTANGLE TO 33,87 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 53 PRINT "Name" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 29,87 print RECTANGLE TO 33,131 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 99 PRINT "Position" FONT "Arial" SIZE 8 COLOR BLACK
	
	*------------
	
	@ 25,130 print RECTANGLE TO 29,156 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,138 PRINT "Jumlah" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 29,130 print RECTANGLE TO 33,143 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 135 PRINT "UM" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 29,143 print RECTANGLE TO 33,156 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 148 PRINT "UT" FONT "Arial" SIZE 8 COLOR BLACK
	
	*------------
	
	@ 25,156 print RECTANGLE TO 29,184 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,165 PRINT "Rincian" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 29,156 print RECTANGLE TO 33,170 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 161 PRINT "UM" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 29,170 print RECTANGLE TO 33,184 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29,175  PRINT "UT" FONT "Arial" SIZE 8 COLOR BLACK
	
	*------------
	
	@ 25,184 print RECTANGLE TO 33,204 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27,191 PRINT "Total" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 25,204 print RECTANGLE TO 33,230 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27,205 PRINT "POTONGAN UPAH" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 25,230 print RECTANGLE TO 33,268 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27,236 PRINT "KETERANGAN UPAH" FONT "Arial" SIZE 8 COLOR BLACK
	
	
	****************************************************************************************
	
	@ 39, 05 PRINT Trans(99999,'99999') FONT "Arial" SIZE 8 COLOR BLACK
	@ 39, 16 PRINT M->cEmployeeCode2 FONT "Arial" SIZE 8 COLOR BLACK
	@ 39, 32 PRINT M->cEmployeeName2 FONT "Arial" SIZE 8 COLOR BLACK
	@ 39, 89 PRINT cPosition2 FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 39, 142 PRINT Trans(cUM,'99.99') FONT "Arial" SIZE 8 COLOR BLACK RIGHT
	@ 39, 155 PRINT Trans(cUT,'99.99') FONT "Arial" SIZE 8 COLOR BLACK RIGHT
	
	@ 39, 169 PRINT Trans(cUMRincian,'9,999,999,999') FONT "Arial" SIZE 8 COLOR BLACK RIGHT
	@ 39, 183 PRINT Trans(cUTRincian,'9,999,999,999') FONT "Arial" SIZE 8 COLOR BLACK RIGHT
	@ 39, 203 PRINT Trans(cTotal,'9,999,999,999') FONT "Arial" SIZE 8 COLOR BLACK RIGHT
	
	@ 39, 229 PRINT Trans(cPotUpah,'9,999,999') FONT "Arial" SIZE 8 COLOR BLACK RIGHT
	
	@ 39, 231 PRINT cKetUpah FONT "Arial" SIZE 8 COLOR BLACK
	
	
	******************************************************************************



   
   END PRINTPAGE
   END PRINTDOC

return nil