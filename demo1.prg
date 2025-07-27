*http://hmgforum.com/hmgdoc/data/selectprinter.htm


#include "minigui.ch"
#include "miniprint.ch"

static nPageNo:=9999
function main()
	
	Public cUserEdit:='TESTING'
	Public cComp1:='PT. YUDHI IRAWAN'
	Public cComp2:='INDONESIAN FOOD FACTORY'
	
	Public cEmployeeCode:='13.05.1711'
	Public cEmployeeName:='TIKA KARTIKA' 	
	
	Public cEmployeeCode1:='13.05.1711'
	Public cEmployeeName1:='TIKA KARTIKA' 
	Public cEmployeeCode2:='13.05.1712'
	Public cEmployeeName2:='YYCDEFGHIJABCDEFGHIJABCDEFGH__' 
	       
	
	Private cFileToOpen:=''
	
   SET CENTURY ON
   SET DATE GERMAN

   DEFINE WINDOW winMain ;
      AT 0, 0 WIDTH 640 HEIGHT 460 ;
      TITLE "Printing Test Sample" ;
      MAIN ;
      ON INIT CreateData()
	  
	  ON KEY ESCAPE ACTION {|| ThisWindow.Release() }
      
      DEFINE MAIN MENU
         POPUP "&File"
            Item "1.Print Slip" action PrintSlip()
			Item "2.Print UMT" action PrintUMT()
			Item "3.Print UMT by Date" action PrintUMTbyDate()
			Item "4.Print DATA ABSENSI KARYAWAN" action PrintDataAbsensiKaryawan()	
			Item "5.Print DAFTAR GAJI KARYAWAN" action PrintDaftarGajiKaryawan()
			Item "6.Print Employee Report Recap" action PrintEmployeeReportRecap()			
			Item "7.Print Employee Report Headcount" action PrintEmployeeReportHeadcount()
			Item "8.Print DATA KARYAWAN MUTASI" action PrintDataKaryawanMutasi()
			Item "9.Print ABSENSI SUMMARY" action PrintAbsensiSummary()
			Item "A.Print OVERTIME SUMMARY" action PrintOvertimeSummary()	
			Item "B.Print CEK TOTAL ORGANISASI" action CekTotalOrganisasi()
			Item "C.Print UMT INSENTIVE" action PrintUMTInsentive()
            			
			Item "E&xit" action thiswindow.release()
         END POPUP
      END MENU   
      
   END WINDOW

   winMain.center
   winMain.activate

return nil

function CreateData()
return nil


******************************************************************************************************************

#include "printslip.prg"
#include "printumt.prg"
#include "printumtbydate.prg"
#include "printdataabsensikaryawan.prg"
#include "printdaftargajikaryawan.prg"
#include "printemployeereportrecap.prg"
#include "printemployeereportheadcount.prg"
#include "printdatakaryawanmutasi.prg"
#include "printabsensisummary.prg"
#include "printovertimesummary.prg"
#include "cektotalorganisasi.prg"
#include "printumtinsentive.prg"