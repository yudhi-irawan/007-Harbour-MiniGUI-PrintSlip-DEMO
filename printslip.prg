function PrintSlip()

	Local mPageNo, mLineNo, mPrinter
	
	mPrinter := GetPrinter()
	If Empty (mPrinter)
	return nil
	EndIf
		SELECT PRINTER mPrinter ORIENTATION PRINTER_ORIENT_PORTRAIT PREVIEW
		START PRINTDOC NAME "Address"
	START PRINTPAGE

   
	cUpahPokok:=''
	cTunjanganJabatan:=''
	cTunjanganLain:=''
	cRapelan:=''
	cInsentif:=''
	cLembur:=''
	cMakan:=''
	cTransport:=''
	cTotal:=''
	
	cAbsensi:=''
	cUangTransport:=''
	cUangMakan:=''
	cNISP:=''
	cSPSI:=''
	cJHT:=''
	cJKN:=''
	cKoperasi:=''
	cPotLainLain:=''
	cTotalPotongan:=''
	cPPh:=''
	cTotalDiterima:=''
  
	******************************************************************************
	
	
     @ 20, 20 PRINT M->cComp1 FONT "Arial" SIZE 8 COLOR BLACK
	 @ 23, 20 PRINT M->cComp2 FONT "Arial" SIZE 8 COLOR BLACK
	 @ 25, 20 PRINT "___________________________________________" FONT "Arial" SIZE 8 COLOR BLACK
     @ 30, 20 PRINT "PERIODE" FONT "Arial" SIZE 8 COLOR BLACK
	 @ 30, 50 PRINT ":" FONT "Arial" SIZE 8 COLOR BLACK
     
	 @ 33, 20 PRINT "NIK" FONT "Arial" SIZE 8 COLOR BLACK
	 @ 33, 50 PRINT ":" FONT "Arial" SIZE 8 COLOR BLACK
	 @ 33, 55 PRINT M->cEmployeeCode FONT "Arial" SIZE 8 COLOR BLACK
	 
	 @ 36, 20 PRINT "NAMA" FONT "Arial" SIZE 8 COLOR BLACK
	 @ 36, 50 PRINT ":" FONT "Arial" SIZE 8 COLOR BLACK
	 @ 36, 55 PRINT M->cEmployeeName FONT "Arial" SIZE 8 COLOR BLACK
	 
	 
	 @ 39, 20 PRINT "JABATAN" FONT "Arial" SIZE 8 COLOR BLACK
	 @ 39, 50 PRINT ":" FONT "Arial" SIZE 8 COLOR BLACK
	 
	 @ 42, 20 PRINT "ORGANISASI" FONT "Arial" SIZE 8 COLOR BLACK
 	 @ 42, 50 PRINT ":" FONT "Arial" SIZE 8 COLOR BLACK
	 
	 @ 44, 20 PRINT "___________________________________________" FONT "Arial" SIZE 8 COLOR BLACK		 
		 
		
	@ 50, 20 PRINT "Perincian" FONT "Arial" SIZE 8 COLOR BLACK

	@ 55, 20 PRINT "Upah Pokok" FONT "Arial" SIZE 8 COLOR BLACK
	@ 55, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 55, 60 PRINT "cUpahPokok" FONT "Arial" SIZE 8 COLOR BLACK
	
	
	@ 60, 20 PRINT "Tunjangan Jabatan" FONT "Arial" SIZE 8 COLOR BLACK
	@ 60, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 60, 60 PRINT "cTunjanganJabatan" FONT "Arial" SIZE 8 COLOR BLACK
	@ 65, 20 PRINT "Tunjangan Lain-lain" FONT "Arial" SIZE 8 COLOR BLACK
	@ 65, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 65, 60 PRINT "cTunjanganLain" FONT "Arial" SIZE 8 COLOR BLACK
	@ 70, 20 PRINT "Rapelan" FONT "Arial" SIZE 8 COLOR BLACK
	@ 70, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 70, 60 PRINT "cRapelan" FONT "Arial" SIZE 8 COLOR BLACK
	@ 75, 20 PRINT "Insentif" FONT "Arial" SIZE 8 COLOR BLACK
	@ 75, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 75, 60 PRINT "cInsentif" FONT "Arial" SIZE 8 COLOR BLACK
	@ 80, 20 PRINT "Lembur" FONT "Arial" SIZE 8 COLOR BLACK
	@ 80, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 80, 60 PRINT "cLembur" FONT "Arial" SIZE 8 COLOR BLACK
	@ 85, 20 PRINT "Makan" FONT "Arial" SIZE 8 COLOR BLACK
	@ 85, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 85, 60 PRINT "cMakan" FONT "Arial" SIZE 8 COLOR BLACK
	@ 90, 20 PRINT "Transport" FONT "Arial" SIZE 8 COLOR BLACK
	@ 90, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 90, 60 PRINT "cTransport" FONT "Arial" SIZE 8 COLOR BLACK
	@ 91, 20 PRINT "___________________________________________" FONT "Arial" SIZE 8 COLOR BLACK		 
	@ 95, 20 PRINT "TOTAL" FONT "Arial" SIZE 8 COLOR BLACK
	@ 95, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 95, 60 PRINT "cTotal" FONT "Arial" SIZE 8 COLOR BLACK
	@ 96, 20 PRINT "___________________________________________" FONT "Arial" SIZE 8 COLOR BLACK		 

	@ 100, 20 PRINT "Potongan" FONT "Arial" SIZE 8 COLOR BLACK

	@ 105, 20 PRINT "Absensi" FONT "Arial" SIZE 8 COLOR BLACK
	@ 105, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 105, 60 PRINT "cAbsensi" FONT "Arial" SIZE 8 COLOR BLACK
	@ 110, 20 PRINT "Uang Transport" FONT "Arial" SIZE 8 COLOR BLACK
	@ 110, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 110, 60 PRINT "cUangTransport" FONT "Arial" SIZE 8 COLOR BLACK
	@ 115, 20 PRINT "Uang Makan" FONT "Arial" SIZE 8 COLOR BLACK
	@ 115, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 115, 60 PRINT "cUangMakan" FONT "Arial" SIZE 8 COLOR BLACK
	@ 120, 20 PRINT "NISP" FONT "Arial" SIZE 8 COLOR BLACK
	@ 120, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 120, 60 PRINT "cNISP" FONT "Arial" SIZE 8 COLOR BLACK
	@ 125, 20 PRINT "SPSI" FONT "Arial" SIZE 8 COLOR BLACK
	@ 125, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 125, 60 PRINT "cSPSI" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 130, 20 PRINT "JHT" FONT "Arial" SIZE 8 COLOR BLACK
	@ 130, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 130, 60 PRINT "cJHT" FONT "Arial" SIZE 8 COLOR BLACK
	@ 135, 20 PRINT "JKN" FONT "Arial" SIZE 8 COLOR BLACK
	@ 135, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 135, 60 PRINT "cJKN" FONT "Arial" SIZE 8 COLOR BLACK
	@ 140, 20 PRINT "Koperasi" FONT "Arial" SIZE 8 COLOR BLACK
	@ 140, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 140, 60 PRINT "cKoperasi" FONT "Arial" SIZE 8 COLOR BLACK
	@ 145, 20 PRINT "Pot Lain-Lain" FONT "Arial" SIZE 8 COLOR BLACK
	@ 145, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 145, 60 PRINT "cPotLainLain" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 146, 20 PRINT "___________________________________________" FONT "Arial" SIZE 8 COLOR BLACK		 
	@ 150, 20 PRINT "TOTAL POTONGAN" FONT "Arial" SIZE 8 COLOR BLACK
	@ 150, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 150, 60 PRINT "cTotalPotongan" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 151, 20 PRINT "___________________________________________" FONT "Arial" SIZE 8 COLOR BLACK		 
	@ 155, 20 PRINT "PPh 21" FONT "Arial" SIZE 8 COLOR BLACK
	@ 155, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 155, 60 PRINT "cPPh" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 156, 20 PRINT "___________________________________________" FONT "Arial" SIZE 8 COLOR BLACK		 
	@ 160, 20 PRINT "TOTAL DITERIMA" FONT "Arial" SIZE 8 COLOR BLACK
	@ 160, 52 PRINT "Rp. " FONT "Arial" SIZE 8 COLOR BLACK
	@ 160, 60 PRINT "cTotalDiterima" FONT "Arial" SIZE 8 COLOR BLACK
	
	@ 161, 20 PRINT "___________________________________________" FONT "Arial" SIZE 8 COLOR BLACK		 



	******************************************************************************

   END PRINTPAGE
   END PRINTDOC

return nil