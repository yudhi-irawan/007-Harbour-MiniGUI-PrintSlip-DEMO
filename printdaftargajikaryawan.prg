function PrintDaftarGajiKaryawan()

	Local mPageNo, mLineNo, mPrinter
	
	mPrinter := GetPrinter()
 		If Empty (mPrinter)
 	return nil 
	EndIf 
 
   
	//SELECT PRINTER mPrinter; 
	//ORIENTATION PRINTER_ORIENT_LANDSCAPE; 
	//PAPERSIZE PRINTER_PAPER_A4;
	//QUALITY PRINTER_RES_DRAFT; 
	//PREVIEW  
	  
   
	*PAPERSIZE PRINTER_PAPER_LEGAL;
	*ORIENTATION PRINTER_ORIENT_LANDSCAPE;
	SELECT PRINTER mPrinter; 
	ORIENTATION PRINTER_ORIENT_LANDSCAPE; 
	PAPERSIZE PRINTER_PAPER_LEGAL;
	QUALITY PRINTER_RES_DRAFT;
	PREVIEW
	
	
	START PRINTDOC NAME "Address"
	START PRINTPAGE


	cAbsensi1:='XXCDEFGHIJABCDE'
	cInfo1:='ABCDEF'
	
	cAbsensi2    :='XXCDEFGHIJABCDE'
	cInfo2:='ABCDEF'
	
	*cHR:=25
	*cUM:=23
	*cUT:=23
	
	*cDate
	
	cUpahPokok:=2564100
	cJabatan:=0
	cLain:=0
	cUM:=21*10500
	cUT:=21*13300
	
	*UM=10500 x 21 hari
	*UT = 13300 x 21 hari
	
	
	cBPJSKetenagakerjaan:=141799
	cBPJSKesehatan:=107628
	
	cTotalUpah:=cUpahPokok+cJabatan+cLain+cUM+cUT
	
	cRapelan:=0
	cInsentif:=0
	cLembur:=0
	
	cGajiNetto:=cTotalUpah+cRapelan+cInsentif+cLembur
	
	cPot_NISP:=0
	cPot_SPSI:=10000
	cPot_JHT:=53814
	
	*JHT=2% dari gaji
	*JKN=4% dari gaji
	
	cPot_JKN:=13454
	cPot_Koperasi:=1234567
	cPot_Lain:=1234567
	
	cTotalPotongan:=cPot_NISP+cPot_SPSI+cPot_JHT+cPot_JKN+cPot_Koperasi+cPot_Lain
	
	cpot_PPH21:=0
	
	cNettoTerima:=cGajiNetto-cTotalPotongan-cpot_PPH21
	
	cPage:='XXXX'
	
	
	
	*                      1         2         3         4         5         6         7         8         9         10        1         2         3         4         5         6         7         8         9         10
	*-------------123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789
	cKeterangan:='*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*'
	
	******************************************************************************
	@ 10, 03 PRINT M->cComp1 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	@ 14, 03 PRINT M->cComp2 FONT "Arial" SIZE 8 COLOR BLACK BOLD
	
	@ 10, 140 PRINT "DAFTAR GAJI KARYAWAN" FONT "Arial" SIZE 8 COLOR BLACK BOLD
	@ 14, 140 PRINT "TANGGAL PENGGAJIAN ....." FONT "Arial" SIZE 8 COLOR BLACK BOLD
	
	@ 20, 18 PRINT "PAGE : "+Trans(nPageNo,'9999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	*@ 25,03 print RECTANGLE TO 33,275 penwidth 0.1 
	
	@ 25,03 print RECTANGLE TO 33,10 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27, 05 PRINT "No." FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 25,10 print RECTANGLE TO 33,22 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27, 14 PRINT "NIK" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 25,22 print RECTANGLE TO 33,65 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27, 40 PRINT "NAMA" FONT "Arial" SIZE 6 COLOR BLACK
	
	*-----------
	
	@ 25,65 print RECTANGLE TO 29,79 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26, 69 PRINT "UPAH" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,65 print RECTANGLE TO 33,79 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 68 PRINT "POKOK" FONT "Arial" SIZE 6 COLOR BLACK
	
	*------------
	
	@ 25,79 print RECTANGLE TO 29,121 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,92 PRINT "TUNJANGAN" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,79 print RECTANGLE TO 33,92 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 81 PRINT "JABATAN" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,92 print RECTANGLE TO 33,103 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 95 PRINT "LAIN" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,103 print RECTANGLE TO 33,112 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 106 PRINT "UM" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,112 print RECTANGLE TO 33,121 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 115 PRINT "UT" FONT "Arial" SIZE 6 COLOR BLACK
	
	*------------
	
	@ 25,121 print RECTANGLE TO 29,144 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26, 125 PRINT "BPJS T. KERJA" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,121 print RECTANGLE TO 33,144 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 122 PRINT "PERUSAHAAN 5.27%" FONT "Arial" SIZE 6 COLOR BLACK
	
	*------------
	
	@ 25,144 print RECTANGLE TO 29,165 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26, 145 PRINT "BPJS KESEHATAN" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,144 print RECTANGLE TO 33,165 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 145 PRINT "PERUSAHAAN 4%" FONT "Arial" SIZE 6 COLOR BLACK
	
	
	*-------------
	
	@ 25,165 print RECTANGLE TO 29,178 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,168 PRINT "TOTAL" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,165 print RECTANGLE TO 33,178 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 169 PRINT "GAJI" FONT "Arial" SIZE 6 COLOR BLACK
	
	*------------
	
	@ 25,178 print RECTANGLE TO 33,190 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27, 179 PRINT "RAPELAN" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 25,190 print RECTANGLE TO 33,201 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27, 191 PRINT "INSENTIF" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 25,201 print RECTANGLE TO 33,213 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27, 203 PRINT "LEMBUR" FONT "Arial" SIZE 6 COLOR BLACK
	
	*------------
	
	@ 25,213 print RECTANGLE TO 29,225 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,217 PRINT "GAJI" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,213 print RECTANGLE TO 33,225 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 216 PRINT "NETTO" FONT "Arial" SIZE 6 COLOR BLACK
	
	*-------------
	
	@ 25,225 print RECTANGLE TO 29,283 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,255 PRINT "POTONGAN" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,225 print RECTANGLE TO 33,234 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 227 PRINT "NISP" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,234 print RECTANGLE TO 33,243 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 236 PRINT "SPSI" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,243 print RECTANGLE TO 33,252 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 245 PRINT "JHT" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,252 print RECTANGLE TO 33,261 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 255 PRINT "JKN" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,261 print RECTANGLE TO 33,272 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 265 PRINT "KOP" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,272 print RECTANGLE TO 33,283 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 275 PRINT "LAIN" FONT "Arial" SIZE 6 COLOR BLACK
	
	
	*----------
	
	
	@ 25,283 print RECTANGLE TO 29,295 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,286 PRINT "TOTAL" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,283 print RECTANGLE TO 33,295 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 287 PRINT "POT." FONT "Arial" SIZE 6 COLOR BLACK
	
	*-----------
	
	@ 25,295 print RECTANGLE TO 33,305 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 27, 296 PRINT "PPH 21" FONT "Arial" SIZE 6 COLOR BLACK
	
	*-----------
	
	
	@ 25,305 print RECTANGLE TO 29,318 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 26,308 PRINT "TOTAL" FONT "Arial" SIZE 6 COLOR BLACK
	
	@ 29,305 print RECTANGLE TO 33,318 penwidth 0.1 COLOR {224,224,224} FILLED
	@ 29, 308 PRINT "TERIMA" FONT "Arial" SIZE 6 COLOR BLACK
	
	
	****************************************************************************************
	nRow:=39
	
	@ nRow, 04 PRINT Trans(99999,'99999') FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 11 PRINT M->cEmployeeCode2 FONT "Arial" SIZE 6 COLOR BLACK
	@ nRow, 23 PRINT left(M->cEmployeeName1,30) FONT "Arial" SIZE 6 COLOR BLACK
	
	@ nRow, 78 PRINT Trans(cUpahPokok,'999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 91 PRINT Trans(cJabatan,'99,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 102 PRINT Trans(cLain,'9,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 111 PRINT Trans(cUM,'999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 120 PRINT Trans(cUT,'999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 143 PRINT Trans(cBPJSKetenagakerjaan,'999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 164 PRINT Trans(cBPJSKesehatan,'999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 177 PRINT Trans(cTotalUpah,'99,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 189 PRINT Trans(cRapelan,'99,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 200 PRINT Trans(cInsentif,'99,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 212 PRINT Trans(cLembur,'9,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 224 PRINT Trans(cGajiNetto,'999,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	@ nRow, 233 PRINT Trans(cPot_NISP,'99,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 242 PRINT Trans(cPot_SPSI,'99,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 251 PRINT Trans(cPot_JHT,'99,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 260 PRINT Trans(cPot_JKN,'99,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 271 PRINT Trans(cPot_KOPERASI,'9,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 282 PRINT Trans(cPot_LAIN,'9,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 294 PRINT Trans(cTotalPotongan,'9,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 304 PRINT Trans(cpot_PPH21,'999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	@ nRow, 317 PRINT Trans(cNettoTerima,'99,999,999') FONT "Arial" SIZE 6 COLOR BLACK RIGHT
	
	
	******************************************************************************
   
	END PRINTPAGE
	END PRINTDOC

return nil