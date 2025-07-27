function CekTotalOrganisasi //UMT_summary2.prg

	Local nPageNo, nRow, mPrinter, nI, aDataCell, nNo
	
		
	mPrinter := GetPrinter()
	
	If Empty (mPrinter)
		return nil
	EndIf
	
	SELECT PRINTER mPrinter; 
	ORIENTATION PRINTER_ORIENT_LANDSCAPE; 
	PAPERSIZE PRINTER_PAPER_A4;
	QUALITY PRINTER_RES_DRAFT;
	PREVIEW
	
	START PRINTDOC NAME "UMT_summary2"
	START PRINTPAGE
	
	nPageNo:=0
	nRow:=0
	nNo:=0   
	
	
	
	PRIVATE aData:={}
	
	aadd(aData, {	'01.01.01.00',	'PRODUKSI                      ',	'14.09.1805     ',	'ACHMAD SANUSI                                     '})			
	aadd(aData, {	'01.01.01.00',	'PRODUKSI                      ',	'14.03.1798     ',	'SUYONO                                            '})			
	aadd(aData, {	'01.01.01.00',	'PRODUKSI                      ',	'1111           ',	'TES                                               '})			
	aadd(aData, {	'01.01.01.01',	'ADM PRODUKSI                  ',	'12.09.0930     ',	'INDRI SUSANTI JUARSA AMD                          '})			
	aadd(aData, {	'01.01.01.01',	'ADM PRODUKSI                  ',	'01.01.0365     ',	'POPPY NOVIANTI                                    '})			
	aadd(aData, {	'01.01.01.01',	'ADM PRODUKSI                  ',	'02.02.0484     ',	'RD SOFIA OKTAVIANI                                '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'04.05.0752     ',	'ABDULLAH                                          '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'09.06.1308     ',	'ABDUR ROHMAN                                      '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'04.09.0845     ',	'ADIH                                              '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'06.05.1002     ',	'AGUS CHOLIDIN                                     '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'05.01.0883     ',	'AHMAD MASKHURI                                    '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'04.08.0831     ',	'AHMAD SOPIYAN                                     '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'08.10.1409     ',	'ANDA                                              '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'01.06.0471     ',	'ANGGA SAPUTRA                                     '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'02.06.0565     ',	'ASEP SOLEHUDIN                                    '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'97.08.0164     ',	'DADANG MUHARAM                                    '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'05.01.0884     ',	'EKO HERNOWO                                       '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'95.01.0086     ',	'GUNAWAN                                           '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'05.10.0951     ',	'HARDENI                                           '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'08.07.1388     ',	'IKA ANIKA                                         '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'08.08.1394     ',	'ILIH SOLEHHUDIN                                   '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'97.07.0145     ',	'IMRON ROSADI                                      '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'06.11.1091     ',	'JODI HERMAWAN                                     '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'09.07.1493     ',	'MAHPUDIN                                          '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'04.12.0873     ',	'MUKHSIN HADIDIE                                   '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'99.09.0207     ',	'NURDIN                                            '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'00.03.1107     ',	'NURFAI                                            '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'06.11.1093     ',	'PEPEN PENDI RAHMAN                                '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'13.05.1709     ',	'PRAYITNO HADI                                     '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'96.09.0126     ',	'PURNOMO                                           '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'07.04.1174     ',	'SLAMET SUKAMTO                                    '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'01.09.0446     ',	'SUGENG WIDODO                                     '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'08.07.1389     ',	'WAWAN SARIFUDIN                                   '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'04.07.0804     ',	'YADI SURYADI                                      '})			
	aadd(aData, {	'01.01.02.01',	'BIW                           ',	'98.04.0166     ',	'YUDI                                              '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'05.01.0892     ',	'ADE SUGANDI                                       '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'07.05.1190     ',	'ASHORI                                            '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'08.05.1354     ',	'DENI FIRMANSYAH                                   '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'08.05.1339     ',	'HARTOYO                                           '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'08.05.1340     ',	'HERMAWAN                                          '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'09.07.1474     ',	'HUSEN WAHYUDI                                     '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'01.09.0435     ',	'IWAN                                              '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'00.05.0280     ',	'JUNAEDI                                           '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'07.07.1181     ',	'KOMARUDIN                                         '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'05.03.0879     ',	'MOHAMAD MAHRIZAL                                  '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'13.02.1659     ',	'MUHAMAD HIDAYAT                                   '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'01.02.0381     ',	'SARMAN                                            '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'97.09.0156     ',	'SUPRIYADI                                         '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'13.09.1733     ',	'SUTISNA EFENDI                                    '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'04.10.0877     ',	'SUWARTO                                           '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'15.03.1821     ',	'TITA RISMANTO                                     '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'89.11.0050     ',	'USODO YEKTI MARTONO                               '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'04.07.0806     ',	'YATIMAN                                           '})			
	aadd(aData, {	'01.01.02.02',	'EPOXY , PAINTSHOP             ',	'09.08.1519     ',	'YUDHI KARYADI                                     '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'98.07.0176     ',	'ABDUL AZIZ                                        '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'03.10.0727     ',	'AHMAD JUNAEDI                                     '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'13.02.1605     ',	'AKBAR MAULANA                                     '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'13.02.1608     ',	'BAGUS KARYONO                                     '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'08.05.1367     ',	'DEDI SUPRIYATNA                                   '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'94.08.0178     ',	'DEDY RUSWANDI                                     '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'01.07.0419     ',	'HADI HIDAYAT                                      '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'07.08.1229     ',	'JUSIN                                             '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'13.02.1607     ',	'KIKI HERDIANA                                     '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'01.09.0443     ',	'MAHPUDIN                                          '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'05.06.0932     ',	'MOH DASUKI                                        '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'13.02.1606     ',	'MUHAMAD SIHABUDIN                                 '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'07.08.1225     ',	'NURJEN SUPRILA                                    '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'02.12.0603     ',	'SUDARTO                                           '})			
	aadd(aData, {	'01.01.02.03',	'PRA PRODUKSI                  ',	'01.01.0692     ',	'YUTI MUSTOPA                                      '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'04.03.0772     ',	'A AMIR MUHKLISIN                                  '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'13.02.1611     ',	'ANDRI WIDODO                                      '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'00.02.0254     ',	'APENDI                                            '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'04.09.0786     ',	'ASEP SAEFUDIN                                     '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'98.09.0182     ',	'DADANG SANJAYA                                    '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'89.12.0014     ',	'DARWAT                                            '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'91.01.0250     ',	'DAYAT                                             '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'01.08.0426     ',	'EHEN SUKENDAR                                     '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'97.05.0142     ',	'ENDANG WIJAYA                                     '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'04.03.0759     ',	'HENDRI                                            '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'10.02.1570     ',	'HERBERT                                           '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'00.09.0308     ',	'INDRA JAYA                                        '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'04.07.0807     ',	'MIHDAN NOPIANTO                                   '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'91.03.0030     ',	'MOH SIDIK BIN H ARSA                              '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'90.05.0035     ',	'ROHMAN                                            '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'09.08.1518     ',	'SAMSURI                                           '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'13.02.1661     ',	'SOFYAN WAHYUDI                                    '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'01.06.0452     ',	'TONI FONTES                                       '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'99.05.0193     ',	'WILARSO                                           '})			
	aadd(aData, {	'01.01.02.04',	'TRIMMING                      ',	'08.04.1329     ',	'YAYANG NURAHMAN                                   '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'07.05.1177     ',	'ALFREDO RIXARDO                                   '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'08.02.1288     ',	'ARIYANTO                                          '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'08.04.1335     ',	'ASEP KOSASIH                                      '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'07.08.1228     ',	'ASEP SUMANTRI                                     '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'08.11.1416     ',	'DIK DIK                                           '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'08.04.1322     ',	'HAMIDI                                            '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'09.04.1286     ',	'HASYIM ASYARI                                     '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'07.11.1265     ',	'HENDRA WIEJAYA PRASTIANA                          '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'08.04.1321     ',	'KHOTIB                                            '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'90.11.0027     ',	'KUSMAYADI                                         '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'92.05.0028     ',	'LEONARDUS SETYO                                   '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'02.07.1112     ',	'NATA HANDIKA                                      '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'13.02.1642     ',	'RIDWAN                                            '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'04.08.1109     ',	'SAHRUDIN                                          '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'04.10.0878     ',	'SAKRIM                                            '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'93.10.0077     ',	'SISWANTO                                          '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'08.05.1338     ',	'SOLIHIN                                           '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'97.10.0159     ',	'SUKISNO                                           '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'07.08.1224     ',	'SUMARNO                                           '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'13.02.1656     ',	'SURYADI                                           '})			
	aadd(aData, {	'01.01.03.01',	'COMMUTER                      ',	'03.09.0713     ',	'YAYA SUNARYA                                      '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'08.04.1310     ',	'A MUSLICH                                         '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'13.02.1655     ',	'AGUS                                              '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'05.02.0899     ',	'AHMAD SOPYAN                                      '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'04.06.0800     ',	'ASEP RUKMANA                                      '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'08.04.1311     ',	'BUNTORO                                           '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'03.11.0736     ',	'CHANDRA HEDIYANTO                                 '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'02.06.0516     ',	'DEDI FRIADI                                       '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'93.01.0065     ',	'DODDY HALAIHI SALAM                               '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'96.08.0123     ',	'JAYADI HAMID                                      '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'08.05.1347     ',	'JOKO SANTOSO                                      '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'04.12.0868     ',	'KOMARUDIN                                         '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'02.04.0491     ',	'MUHAMAD YUDI                                      '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'99.09.0208     ',	'SUHANDI                                           '})			
	aadd(aData, {	'01.01.04.01',	'SPEC. DESIGN                  ',	'06.05.1003     ',	'UUS KUSNADI                                       '})			
	aadd(aData, {	'01.01.05.00',	'MFG                           ',	'92.10.0068     ',	'FX TIPO                                           '})			
	aadd(aData, {	'01.01.05.01',	'ADM MFG                       ',	'04.08.0823     ',	'A RAHMAN SAPUTRA                                  '})			
	aadd(aData, {	'01.01.05.01',	'ADM MFG                       ',	'04.09.0840     ',	'CATUR SETIYONO                                    '})			
	aadd(aData, {	'01.01.05.01',	'ADM MFG                       ',	'11.05.1333     ',	'DITA FEBRIANI                                     '})			
	aadd(aData, {	'01.01.05.01',	'ADM MFG                       ',	'07.09.1254     ',	'DODDY NURIYADI                                    '})			
	aadd(aData, {	'01.01.05.01',	'ADM MFG                       ',	'04.01.0784     ',	'HOLIL                                             '})			
	aadd(aData, {	'01.01.05.01',	'ADM MFG                       ',	'00.04.0259     ',	'MANSUR                                            '})			
	aadd(aData, {	'01.01.05.01',	'ADM MFG                       ',	'01.01.0348     ',	'MUHAMAD YUSUF                                     '})			
	aadd(aData, {	'01.01.05.01',	'ADM MFG                       ',	'11.09.1472     ',	'SARAS AYU ADISTYA NURDINI                         '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'13.04.1702     ',	'ADUNG TRIYANA PUTRA                               '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'04.12.0875     ',	'ANDA                                              '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'08.02.1293     ',	'DIDIN MAHPUDIN                                    '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'05.04.0890     ',	'H.ZAENAL ABIDIN                                   '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'02.06.0560     ',	'HARIYANTO                                         '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'01.01.1056     ',	'IWAN SETIAWAN                                     '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'04.12.0874     ',	'KURNIAWAN                                         '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'02.07.0527     ',	'MOCH SAEFUDIN                                     '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'02.02.1058     ',	'MUHAMAD ALI                                       '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'07.08.1227     ',	'NGAINUN NAJIB                                     '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'02.12.0597     ',	'NURDIN                                            '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'99.09.1060     ',	'RONI                                              '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'05.08.0960     ',	'SLAMET SUNARDI                                    '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'95.05.0179     ',	'SUHERMAN                                          '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'02.07.0533     ',	'SUPARJIANA                                        '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'04.12.0867     ',	'SURAHMAT                                          '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'04.09.0841     ',	'SUWARNO                                           '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'01.01.0358     ',	'TRI YANTO                                         '})			
	aadd(aData, {	'01.01.05.02',	'ASSY                          ',	'99.10.0236     ',	'UCU SAEPUL HAMDANI                                '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'95.12.0107     ',	'ABU SOFYAN                                        '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'00.11.0325     ',	'ADE MANSYUR                                       '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'04.12.0851     ',	'ADE ROYATIN                                       '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'04.10.0850     ',	'AGUS HENDRA                                       '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'05.08.0961     ',	'AHMAD JUNAEDI ABDILLAH                            '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'04.05.0779     ',	'AHMAD SAEFULLAH                                   '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'02.10.0612     ',	'AHMAD SAPTARI                                     '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'03.01.0456     ',	'ALPIS SAHRIN                                      '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'03.06.0644     ',	'AMAR HANAFI                                       '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'03.09.0672     ',	'ASEP BUNANDAR                                     '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'97.09.0154     ',	'ASEP SUPARMAN                                     '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'04.06.0761     ',	'BAMBANG IRAWAN S                                  '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'06.08.1053     ',	'DEDI DJUNAEDI                                     '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'01.01.0360     ',	'DIYONO AJI WIRYO                                  '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'02.07.0526     ',	'DWIYANTO WIDODO                                   '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'07.07.1202     ',	'EGI WAHYUDI                                       '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'08.07.1380     ',	'EKO BAYU SAPUTRA                                  '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'04.06.0769     ',	'ERWIN ALIATNO                                     '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'02.10.0611     ',	'HARIYADI                                          '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'07.08.1237     ',	'HENRI HERMAWAN                                    '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'07.06.1185     ',	'IMANUDIN EDI GUNAWAN                              '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'07.11.1267     ',	'IRVAN                                             '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'07.05.1184     ',	'IRWAN SETIAWAN                                    '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'09.06.1460     ',	'ISKANDAR                                          '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'02.07.0539     ',	'JAELANI                                           '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'08.05.1345     ',	'KOMARUDIN                                         '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'09.05.1453     ',	'M.JUHRI                                           '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'09.12.1556     ',	'MAHRUDIN                                          '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'96.02.0112     ',	'MAMAN SUHERMAN                                    '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'04.01.0730     ',	'MISTUM                                            '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'97.07.0146     ',	'MOHTAROM                                          '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'00.03.0256     ',	'MULYADI                                           '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'07.07.1186     ',	'NANANG SURYANA                                    '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'99.08.0202     ',	'PRIYANTO                                          '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'95.11.0105     ',	'ROMI HIDAYAT                                      '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'04.07.0815     ',	'RUDI ARIYANTO                                     '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'07.07.1201     ',	'RYANTO MARUP                                      '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'01.06.0410     ',	'SURYANA                                           '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'01.09.0434     ',	'TATANG SUWANDI                                    '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'03.08.0685     ',	'YADI MULYADI                                      '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'07.06.1178     ',	'YUDI IMRON                                        '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'09.10.1527     ',	'YUDI SUHARYADI                                    '})			
	aadd(aData, {	'01.01.05.03',	' MACHINE WORK                 ',	'94.08.0082     ',	'YUNUS TANGKE                                      '})			
	aadd(aData, {	'01.01.06.00',	'PPIC                          ',	'00.11.0320     ',	'DENDA WIGUNA                                      '})			
	aadd(aData, {	'01.01.06.00',	'PPIC                          ',	'09.12.1562     ',	'YUDHI KRISNA                                      '})			
	aadd(aData, {	'01.01.06.01',	'PRODUCT PLANNING              ',	'07.03.1151     ',	'DENI SUTRIYO                                      '})			
	aadd(aData, {	'01.01.06.01',	'PRODUCT PLANNING              ',	'99.11.0237     ',	'DIANTI                                            '})			
	aadd(aData, {	'01.01.06.01',	'PRODUCT PLANNING              ',	'04.08.0824     ',	'SUPRIONO                                          '})			
	aadd(aData, {	'01.01.06.02',	'INVENTORY CONTROL             ',	'15.04.1835     ',	'ADE ISKANDAR                                      '})			
	aadd(aData, {	'01.01.06.02',	'INVENTORY CONTROL             ',	'04.03.0745     ',	'AGISTIO DEFRI                                     '})			
	aadd(aData, {	'01.01.06.02',	'INVENTORY CONTROL             ',	'94.11.0092     ',	'WAHYU DWI HASTUTI                                 '})			
	aadd(aData, {	'01.01.06.02',	'INVENTORY CONTROL             ',	'97.08.0150     ',	'WAWAN KURNIAWAN                                   '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'15.03.1822     ',	'CHANDRA WIBOWO                                    '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'01.09.0447     ',	'CUPRIYATIN                                        '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'01.04.0403     ',	'DEDE SUWANDI                                      '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'92.12.0071     ',	'JAJA                                              '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'91.06.0026     ',	'KOMAR                                             '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'08.05.1341     ',	'KOSASIH                                           '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'99.06.0200     ',	'M SOLEH B BAESUNI                                 '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'08.05.1346     ',	'RAHANTO                                           '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'94.12.0093     ',	'SUMONO                                            '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'91.02.0046     ',	'SUNANTO DHIANTO                                   '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'02.04.0489     ',	'SUTISNA                                           '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'06.12.1108     ',	'WIDI KURNIAWAN                                    '})			
	aadd(aData, {	'01.01.07.02',	'QC                            ',	'06.04.0995     ',	'WONGGA ABADI                                      '})			
	//aadd(aData, {	'',	'',	'',	''})			
	aadd(aData, {	'01.02.08.00',	'DESIGN ENGINEERING            ',	'15.01.1817     ',	'RIZKA PRIANSEN                                    '})			
	aadd(aData, {	'01.02.08.00',	'DESIGN ENGINEERING            ',	'15.03.1823     ',	'UKON SARKONI                                      '})			
	aadd(aData, {	'01.02.08.01',	'DENG DATA DESIGN              ',	'03.10.0722     ',	'ABDULLAH                                          '})			
	aadd(aData, {	'01.02.08.01',	'DENG DATA DESIGN              ',	'03.02.0621     ',	'ASEP SAEPULOH                                     '})			
	aadd(aData, {	'01.02.08.01',	'DENG DATA DESIGN              ',	'11.01.1196     ',	'DANAN NOVIARSO                                    '})			
	aadd(aData, {	'01.02.08.01',	'DENG DATA DESIGN              ',	'96.10.0134     ',	'HASAN NUDIN                                       '})			
	aadd(aData, {	'01.02.08.01',	'DENG DATA DESIGN              ',	'15.03.1833     ',	'HELMY PRABOWO                                     '})			
	aadd(aData, {	'01.02.08.01',	'DENG DATA DESIGN              ',	'14.04.1800     ',	'HERIYAWAN                                         '})			
	aadd(aData, {	'01.02.08.01',	'DENG DATA DESIGN              ',	'01.03.0450     ',	'IWAN HERMAWAN                                     '})			
	aadd(aData, {	'01.02.08.01',	'DENG DATA DESIGN              ',	'97.06.0143     ',	'JAMALUDIN                                         '})			
	aadd(aData, {	'01.02.08.01',	'DENG DATA DESIGN              ',	'12.09.1581     ',	'SUPRIYATNO                                        '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'09.08.1525     ',	'ABDUL ROHMAN                                      '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'13.02.1618     ',	'AGUS SYAHRONI                                     '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'13.02.1619     ',	'AHMAD PRIYATNA                                    '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'07.08.1221     ',	'ARIS PIANU                                        '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'05.08.0931     ',	'EDI DJUNAEDI                                      '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'01.02.0379     ',	'FERY SURYAMAN                                     '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'05.05.0903     ',	'IMAM KUNCORO                                      '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'13.02.1621     ',	'IRPAN AGUSTIAN                                    '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'01.03.0449     ',	'KURNAEN                                           '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'03.08.0683     ',	'MUHAMAD RAMDON                                    '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'08.05.1325     ',	'SELAMET                                           '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'09.01.1435     ',	'SUJARWO                                           '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'13.02.1615     ',	'SYAMSUDIN SUPRIYANTO                              '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'08.05.1364     ',	'UJANG ASEP                                        '})			
	aadd(aData, {	'01.02.08.02',	'DENG WORKSHOP                 ',	'03.07.0663     ',	'USEN                                              '})			
	aadd(aData, {	'01.02.09.00',	'PRODUCTION ENGINEERING        ',	'04.01.0795     ',	'UMARDANI                                          '})			
	aadd(aData, {	'01.02.09.01',	'FACILITY                      ',	'93.12.0059     ',	'ASIK                                              '})			
	aadd(aData, {	'01.02.09.01',	'FACILITY                      ',	'13.10.1757     ',	'ENJAT SUDRAJAT                                    '})			
	aadd(aData, {	'01.02.09.01',	'FACILITY                      ',	'02.07.0530     ',	'IYENG SUHAYA                                      '})			
	aadd(aData, {	'01.02.09.01',	'FACILITY                      ',	'01.06.0418     ',	'KOMARUDIN                                         '})			
	aadd(aData, {	'01.02.09.01',	'FACILITY                      ',	'06.09.1014     ',	'SUTAR                                             '})			
	aadd(aData, {	'01.02.09.02',	'PROSES ENGINEERING            ',	'07.05.1189     ',	'ABDUL CHAER                                       '})			
	aadd(aData, {	'01.02.09.02',	'PROSES ENGINEERING            ',	'15.05.1836     ',	'DIDI NURDIANSYAH                                  '})			
	aadd(aData, {	'01.02.09.02',	'PROSES ENGINEERING            ',	'08.04.1315     ',	'LUKMAN WAHYUDI                                    '})			
	aadd(aData, {	'01.02.09.02',	'PROSES ENGINEERING            ',	'08.04.1313     ',	'RAHMAT HIDAYAT                                    '})			
	aadd(aData, {	'01.02.09.02',	'PROSES ENGINEERING            ',	'13.02.1631     ',	'SUTARYO                                           '})			
	//aadd(aData, {	'',	'',	'',	''})			
	aadd(aData, {	'02.01.01.01',	'ADM UMUM                      ',	'90.05.0040     ',	'SUBIYANTO                                         '})			
	aadd(aData, {	'02.01.02.00',	'MTC                           ',	'15.03.1824     ',	'MOHAMAD IQBAL                                     '})			
	aadd(aData, {	'02.01.02.00',	'MTC                           ',	'13.12.1791     ',	'WIRYADI SUDJONO                                   '})			
	aadd(aData, {	'02.01.02.01',	'ADM MTC                       ',	'95.01.0163     ',	'MOCH HUDRIA AR                                    '})			
	aadd(aData, {	'02.01.02.01',	'ADM MTC                       ',	'92.01.0008     ',	'NAYU NURAIDA                                      '})			
	aadd(aData, {	'02.01.02.01',	'ADM MTC                       ',	'07.09.1255     ',	'SOPIAN                                            '})			
	aadd(aData, {	'02.01.02.02',	'CIVIL                         ',	'03.09.0676     ',	'ANDI ROSANDI                                      '})			
	aadd(aData, {	'02.01.02.02',	'CIVIL                         ',	'07.05.1172     ',	'SYAHRONI                                          '})			
	aadd(aData, {	'02.01.02.03',	'KENDARAAN                     ',	'08.09.1405     ',	'AHSANUL FUAD                                      '})			
	aadd(aData, {	'02.01.02.03',	'KENDARAAN                     ',	'09.06.1463     ',	'HENDRY RAHMAN                                     '})			
	aadd(aData, {	'02.01.02.04',	'MEKANIKAL                     ',	'92.09.0013     ',	'BURHANUDIN                                        '})			
	aadd(aData, {	'02.01.02.04',	'MEKANIKAL                     ',	'08.11.1426     ',	'FERRI SULAIMAN                                    '})			
	aadd(aData, {	'02.01.02.04',	'MEKANIKAL                     ',	'09.06.1411     ',	'MAHPUDIN                                          '})			
	aadd(aData, {	'02.01.02.05',	'ELEKTRIKAL                    ',	'08.02.1289     ',	'PURWONO                                           '})			
	aadd(aData, {	'02.01.02.05',	'ELEKTRIKAL                    ',	'98.05.0167     ',	'SUYONO                                            '})			
	aadd(aData, {	'02.01.03.00',	'GA                            ',	'99.01.0188     ',	'EKAPUTRA JANGKARU                                 '})			
	aadd(aData, {	'02.01.03.01',	'DRIVER                        ',	'01.05.0407     ',	'BENNY DERITA MUKLIS                               '})			
	aadd(aData, {	'02.01.03.01',	'DRIVER                        ',	'81.02.0015     ',	'EENG TRIATNA                                      '})			
	aadd(aData, {	'02.01.03.01',	'DRIVER                        ',	'00.12.0328     ',	'MAMAN SUTARMAN                                    '})			
	aadd(aData, {	'02.01.03.02',	'UMUM                          ',	'96.09.0130     ',	'A SIHABUDIN NOOR                                  '})			
	aadd(aData, {	'02.01.03.02',	'UMUM                          ',	'92.08.0009     ',	'ABDUL RAHMAN,SE                                   '})			
	aadd(aData, {	'02.01.03.02',	'UMUM                          ',	'06.11.1090     ',	'AGUS SUTEJA                                       '})			
	aadd(aData, {	'02.01.03.02',	'UMUM                          ',	'01.09.0441     ',	'DADAN SUPARMAN                                    '})			
	aadd(aData, {	'02.01.03.02',	'UMUM                          ',	'10.08.0031     ',	'DITA RANA MAHESTI                                 '})			
	aadd(aData, {	'02.01.03.02',	'UMUM                          ',	'91.12.0019     ',	'HADI KUSWONDO                                     '})			
	aadd(aData, {	'02.01.03.02',	'UMUM                          ',	'02.03.0490     ',	'IDRUS                                             '})			
	aadd(aData, {	'02.01.03.02',	'UMUM                          ',	'99.06.0223     ',	'YETI                                              '})			
	aadd(aData, {	'02.01.04.01',	'RECRUITMENT                   ',	'14.10.1810     ',	'ANNISA HASIBUAN                                   '})			
	aadd(aData, {	'02.01.04.02',	'IR                            ',	'14.10.1811     ',	'ENENG NURLAILI FATIMAH                            '})			
	aadd(aData, {	'02.01.04.02',	'IR                            ',	'08.03.1295     ',	'NURYADI SH                                        '})			
	aadd(aData, {	'02.01.04.03',	'PAYROLL                       ',	'15.03.1825     ',	'REGI GUSTIANI                                     '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'99.05.0196     ',	'ABDUL RAUF                                        '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'13.02.1600     ',	'BUDI KUSMIYANTO                                   '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'96.10.0133     ',	'CECE HENDARSYAH                                   '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'00.02.0220     ',	'DEDI JUNAEDI                                      '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'94.05.0066     ',	'EDDY SUTRISNO                                     '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'96.09.0127     ',	'HARYONO                                           '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'12.09.1582     ',	'RAHMADI                                           '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'07.02.1149     ',	'SLAMET                                            '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'02.05.0509     ',	'SUGIANTO                                          '})			
	aadd(aData, {	'02.01.05.01',	'NON SHIFT                     ',	'99.05.0194     ',	'YAYA SUNARYA                                      '})			
	aadd(aData, {	'02.01.05.02',	'NAKULA                        ',	'07.11.1271     ',	'JOKO MULYONO                                      '})			
	aadd(aData, {	'02.01.05.02',	'NAKULA                        ',	'07.11.1272     ',	'SABARYANTO                                        '})			
	aadd(aData, {	'02.01.05.02',	'NAKULA                        ',	'02.09.0569     ',	'SUGIONO                                           '})			
	aadd(aData, {	'02.01.05.02',	'NAKULA                        ',	'03.05.0639     ',	'SUHENDAR                                          '})			
	aadd(aData, {	'02.01.05.03',	'KRESNA                        ',	'02.07.0536     ',	'DEDI BASUKI                                       '})			
	aadd(aData, {	'02.01.05.03',	'KRESNA                        ',	'02.07.0532     ',	'FAUZI                                             '})			
	aadd(aData, {	'02.01.05.03',	'KRESNA                        ',	'11.05.1096     ',	'IMAM SYAMSUL BAHRI                                '})			
	aadd(aData, {	'02.01.05.03',	'KRESNA                        ',	'01.07.0413     ',	'WIDODO                                            '})			
	aadd(aData, {	'02.01.05.04',	'BIMA                          ',	'01.11.0476     ',	'KUSNANTO                                          '})			
	aadd(aData, {	'02.01.05.04',	'BIMA                          ',	'08.04.1327     ',	'MULYANTO                                          '})			
	aadd(aData, {	'02.01.05.04',	'BIMA                          ',	'02.05.0512     ',	'PAISO                                             '})			
	aadd(aData, {	'02.01.05.04',	'BIMA                          ',	'03.05.0642     ',	'SUNARTO                                           '})			
	aadd(aData, {	'02.01.05.05',	'SADEWA                        ',	'02.11.0595     ',	'AGUS SURANTO                                      '})			
	aadd(aData, {	'02.01.05.05',	'SADEWA                        ',	'96.04.0118     ',	'ENDA SISWANTO                                     '})			
	aadd(aData, {	'02.01.05.05',	'SADEWA                        ',	'09.06.1467     ',	'IDRIS RAHMAN                                      '})			
	aadd(aData, {	'02.01.05.05',	'SADEWA                        ',	'03.05.0635     ',	'TOYIB PURNOMO                                     '})			
	aadd(aData, {	'02.01.06.00',	'SS                            ',	'92.11.0067     ',	'ETY SUPRIATI                                      '})			
	aadd(aData, {	'02.01.06.01',	'ADM SS                        ',	'01.11.0482     ',	'HERMAN                                            '})			
	aadd(aData, {	'02.01.06.01',	'ADM SS                        ',	'02.11.0587     ',	'LINA PARLINA                                      '})			
	aadd(aData, {	'02.01.06.01',	'ADM SS                        ',	'10.06.1478     ',	'TEGUH SAPUTRA                                     '})			
	aadd(aData, {	'02.01.06.02',	'POOL KENDARAAN                ',	'04.09.0847     ',	'SAMSUL BAHRI                                      '})			
	aadd(aData, {	'02.01.06.02',	'POOL KENDARAAN                ',	'91.11.0044     ',	'SUHENDRA                                          '})			
	aadd(aData, {	'02.01.06.02',	'POOL KENDARAAN                ',	'00.09.0307     ',	'TRI PURNAWAN                                      '})			
	aadd(aData, {	'02.01.07.01',	'ADM QMR                       ',	'02.08.0552     ',	'ADE TANJUNG SETA                                  '})			
	aadd(aData, {	'02.01.07.01',	'ADM QMR                       ',	'15.04.1834     ',	'DODDY YUSWANDY                                    '})			
	//aadd(aData, {	'',	'',	'',	''})			
	aadd(aData, {	'02.02.00.00',	'                              ',	'13.10.1773     ',	'AYU WIDYA NINGRUM                                 '})			
	aadd(aData, {	'02.02.00.00',	'                              ',	'12.12.1595     ',	'DHENY MEYKA YADISTYANI                            '})			
	aadd(aData, {	'02.02.00.00',	'                              ',	'03.10.1209     ',	'SUTANING A WULAN                                  '})			
	aadd(aData, {	'02.02.01.00',	'FINANCE                       ',	'12.03.1247     ',	'EVA SEPTIAWATI                                    '})			
	aadd(aData, {	'02.02.01.00',	'FINANCE                       ',	'11.05.1150     ',	'MARIA GORETI TRI WULANDARI IVA                    '})			
	aadd(aData, {	'02.02.01.00',	'FINANCE                       ',	'09.04.1446     ',	'MERIE                                             '})			
	aadd(aData, {	'02.02.01.00',	'FINANCE                       ',	'95.07.0090     ',	'NOVARI                                            '})			
	aadd(aData, {	'02.02.01.00',	'FINANCE                       ',	'01.07.0168     ',	'PUJI HARTATI                                      '})			
	aadd(aData, {	'02.02.01.00',	'FINANCE                       ',	'92.10.0038     ',	'SITI ROHANA                                       '})			
	aadd(aData, {	'02.02.01.00',	'FINANCE                       ',	'14.10.1808     ',	'SUMINARSIH                                        '})			
	aadd(aData, {	'02.02.01.00',	'FINANCE                       ',	'11.10.1122     ',	'VITA IMANUELLA PIETIRES                           '})			
	aadd(aData, {	'02.02.02.00',	'ACCOUNTING                    ',	'14.10.1809     ',	'ABDUL KHOLIED                                     '})			
	aadd(aData, {	'02.02.02.00',	'ACCOUNTING                    ',	'11.12.1402     ',	'ADHIYANTI WIDJAYA                                 '})			
	aadd(aData, {	'02.02.02.00',	'ACCOUNTING                    ',	'07.07.1169     ',	'ANASTASIA DEWI R                                  '})			
	aadd(aData, {	'02.02.02.00',	'ACCOUNTING                    ',	'01.01.0345     ',	'ASTRID CLAUDIA                                    '})			
	aadd(aData, {	'02.02.02.00',	'ACCOUNTING                    ',	'00.07.0289     ',	'BERNADET KRISTANTI SETIARINI                      '})			
	aadd(aData, {	'02.02.02.00',	'ACCOUNTING                    ',	'01.10.0483     ',	'TETY SUMARIYATI                                   '})			
	aadd(aData, {	'02.02.03.00',	'TAX                           ',	'93.09.0076     ',	'SETIATI                                           '})			
	aadd(aData, {	'02.02.03.00',	'TAX                           ',	'09.05.1487     ',	'YUNITHA SETIAWAN                                  '})			
	aadd(aData, {	'02.02.04.00',	'PURCHASING                    ',	'11.08.1246     ',	'ASTRI DWI ARIYANTI                                '})			
	aadd(aData, {	'02.02.04.00',	'PURCHASING                    ',	'96.11.0135     ',	'ERNI SUNDARI                                      '})			
	aadd(aData, {	'02.02.04.00',	'PURCHASING                    ',	'11.04.1291     ',	'HANA NOVIANTI                                     '})			
	aadd(aData, {	'02.02.04.00',	'PURCHASING                    ',	'11.10.0288     ',	'HERLIANA WIJAYA                                   '})			
	aadd(aData, {	'02.02.04.00',	'PURCHASING                    ',	'11.06.0900     ',	'SUHARTINI                                         '})			
	aadd(aData, {	'02.02.05.00',	'MIST                          ',	'96.09.0001     ',	'R. YUDHI IRAWAN KARYA                             '})			
	aadd(aData, {	'02.02.05.00',	'MIST                          ',	'01.02.0373     ',	'SUSENO                                            '})			
	aadd(aData, {	'02.02.05.00',	'MIST                          ',	'13.05.1711     ',	'TIKA KARTIKA                                      '})			
	aadd(aData, {	'02.02.06.00',	'GUDANG                        ',	'15.03.1831     ',	'ADE VIA IRAWAN                                    '})			
	aadd(aData, {	'02.02.06.00',	'GUDANG                        ',	'15.03.1832     ',	'DEYSI ARAZONA                                     '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'11.06.1284     ',	'ABDUL MALIK                                       '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'01.01.0343     ',	'ADE SUBARKAH                                      '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'02.06.0561     ',	'AHMAD GUFRONIL AZIS                               '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'11.10.1540     ',	'ANI MARYANA                                       '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'15.01.1819     ',	'DIDIK YUDIYANTO                                   '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'00.05.0265     ',	'ENDANG                                            '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'03.10.0702     ',	'FITRI YANTHI                                      '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'13.02.1665     ',	'HERU ANGGI SUSANTO                                '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'06.11.1088     ',	'IWAN                                              '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'97.01.0139     ',	'KOSIM                                             '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'01.06.0453     ',	'LYAN MAULANA HARAHAP                              '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'13.02.1666     ',	'M. KAMIL                                          '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'15.01.1818     ',	'MUHAMMAD HADIMULYA                                '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'06.11.1041     ',	'PIYATNA                                           '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'80.06.0084     ',	'UYEH                                              '})			
	aadd(aData, {	'02.02.06.01',	'GUDANG PUSAT                  ',	'13.05.1710     ',	'ZULKIFLI                                          '})			
	//aadd(aData, {	'',	'',	'',	''})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'01.06.0411     ',	'ANDRI PUSPADI                                     '})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'09.07.1501     ',	'BIMA SUCI DARMA                                   '})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'11.12.1387     ',	'CHRISTIAN ANUGRAH L                               '})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'14.04.1801     ',	'HENDRO WIBOWO                                     '})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'01.08.0421     ',	'IWAN SETIAWAN SE                                  '})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'02.12.0600     ',	'KRISTIN SUPRIADI                                  '})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'12.09.0249     ',	'LUTFI ADINATA                                     '})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'12.09.0882     ',	'MIKHAEL REFILELI                                  '})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'01.04.0397     ',	'RUDY SUPARDI                                      '})			
	aadd(aData, {	'02.03.01.01',	'SALES                         ',	'09.02.1433     ',	'SAMUEL FERNANDO SARAGI                            '})			
	aadd(aData, {	'02.03.01.02',	'MARKETING                     ',	'00.08.0301     ',	'CHRYSTIANTO SUTARDI                               '})			
	aadd(aData, {	'02.03.01.02',	'MARKETING                     ',	'02.09.0567     ',	'HARIS ARDIANYAH                                   '})			
	aadd(aData, {	'02.03.01.02',	'MARKETING                     ',	'05.07.0914     ',	'PURNOMO                                           '})			
	aadd(aData, {	'02.03.01.02',	'MARKETING                     ',	'00.06.0282     ',	'SANTIBI                                           '})			
	aadd(aData, {	'02.03.01.02',	'MARKETING                     ',	'09.07.1488     ',	'SUMARDIYANTO                                      '})			
	//aadd(aData, {	'',	'',	'',	''})			
	aadd(aData, {	'03.00.00.00',	'BOD                           ',	'80.01.0001     ',	'ARIFIN MULYADI                                    '})			
	aadd(aData, {	'03.00.00.00',	'BOD                           ',	'80.01.0002     ',	'HARIS MULYADI                                     '})			
	aadd(aData, {	'03.00.00.00',	'BOD                           ',	'80.01.0003     ',	'SUBAKTI BUDIMAN                                   '})			
	aadd(aData, {	'03.00.00.00',	'BOD                           ',	'80.01.0004     ',	'WIRAWATI BUDIMAN                                  '})			
	//aadd(aData, {	'',	'',	'',	''})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8007           ',	'AGUNG SANTOSO                                     '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8040           ',	'AHMAD HUDRI                                       '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8018           ',	'ARI BUDIAWAN                                      '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8035           ',	'ASEP HARYADI                                      '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8011           ',	'DEDI SUKMAWIJAYA                                  '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8010           ',	'FARIHAH                                           '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8034           ',	'IRMAINI NUR INDAH                                 '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8015           ',	'JAJANG                                            '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8017           ',	'JOKO PITARTO                                      '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8032           ',	'MARTINUS ADI S.                                   '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8033           ',	'NAUFAL ZAINAL RASYID                              '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8020           ',	'NURDIN B ROSID                                    '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8008           ',	'PAULUS INDRI YANTO                                '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8009           ',	'PRISWANTO                                         '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8041           ',	'RUDI SETIAWAN                                     '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8012           ',	'RUSKANDI SETIADI SAPUTRA                          '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8019           ',	'SAEPULOH                                          '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8036           ',	'SOPYAN                                            '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8014           ',	'WASIMAN                                           '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8021           ',	'WIJIANTO                                          '})			
	aadd(aData, {	'09.01.00.00',	'AUDIO                         ',	'8013           ',	'YOSKA IKSAN                                       '})			
	//aadd(aData, {	'',	'',	'',	''})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8054           ',	'ADI MULYADI                                       '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8046           ',	'AMIR SYARIFUDIN                                   '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8042           ',	'ANDI                                              '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8022           ',	'ANDREAS IMANUEL TIONO                             '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8052           ',	'APIP                                              '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8043           ',	'ARIF                                              '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8027           ',	'ASEP HARYADI                                      '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8055           ',	'BAYU FAHDIANSYAH                                  '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8023           ',	'BONIE FASIUS NANI                                 '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8045           ',	'DAHLAN                                            '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8057           ',	'DAHLAN                                            '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8044           ',	'DEDI RUSWANDI                                     '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8051           ',	'FAHRUL YAKIN                                      '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8006           ',	'FERRY WIBAWA LESMANA                              '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8050           ',	'IBNU MAJAH                                        '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8024           ',	'INDRA SUDRAJAT                                    '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8047           ',	'INDRI APRIANI                                     '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8053           ',	'IRVAN MUSTOPA                                     '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8026           ',	'KGS ARPAN ZAILANI                                 '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8016           ',	'MARDIAN                                           '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8048           ',	'NURROHMAN                                         '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8002           ',	'SANDY                                             '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8029           ',	'SATIYO                                            '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8028           ',	'SUWARDI                                           '})			
	aadd(aData, {	'09.02.00.00',	'EX                            ',	'8025           ',	'THEOFINUS W. T                                    '})			
	//aadd(aData, {	'',	'',	'',	''})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'95.06.0239     ',	'ACE                                               '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'12.02.1789     ',	'ANDREW TOBIAS BUDIMAN                             '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'15.03.1829     ',	'ARYANTO                                           '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'12.10.1584     ',	'BAYU ADJI DWI SURYANTO                            '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'09.07.1485     ',	'DWI YANTO                                         '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'96.09.0129     ',	'IHWAN NURFALAH                                    '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'08.05.1357     ',	'IWAN DARMAWAN                                     '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'01.01.0361     ',	'MAHPUDIN                                          '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'15.03.1827     ',	'MUHAMMAD SADUDIN                                  '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'97.06.0144     ',	'SHALA                                             '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'14.11.1816     ',	'TATI SUSANTI                                      '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'11.04.1243     ',	'TRI ELIN WIJIYANINGSIH S.                         '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'15.03.1826     ',	'YETDI SALIM                                       '})			
	aadd(aData, {	'09.03.00.00',	'KS                            ',	'15.03.1828     ',	'ZAENAL ABIDIN                                     '})			
	
	
	
	cLevel_1='XXX'
	cLevel_2='XXX'
	cLevel_3='XXX'
	cLevel_4='XXX'
	
	nLevel_1=0
	nLevel_2=0
	nLevel_3=0
	nLevel_4=0
	
	descLevel_1=''
	descLevel_2=''
	descLevel_3=''
	descLevel_4=''
	
	
	*ctkLevel_1=.f.
	*ctkLevel_2=.f.
	*ctkLevel_3=.f.
	*ctkLevel_4=.f.
	
	
	for nI := 1 to LEN(aData)
	
		aDataCell := aData[nI]
		
		cOrganizationCode:=aDataCell[1]
		cOrganizationDescription2:=aDataCell[2]	
		cEmployeeCode:=aDataCell[3]
		cEmployeeName:=aDataCell[4]
		
		
		IF nRow>=180 .OR. nPageNo=0
			nPageNo++
			IF nPageNo>1
				nRow += 3 //5
				@ nRow, 105 PRINT "Continue to Page "+LTRIM(STR(nPageNo)) CENTER
				END PRINTPAGE
				START PRINTPAGE
			ENDIF
			***************************************************************************
			//Header01(nPageNo)
			nRow:=37 //39
			***************************************************************************
		ENDIF
				
		if cLevel_1<>substr(cOrganizationCode,1,2)	//01	
			nRow:=Cetak_Level(1,nRow)
			
			*if nLevel_1<>0
			*	@ nRow,03 print RECTANGLE TO nRow,268 penwidth 0.5 COLOR {224,224,224} FILLED
			*	nRow += 3
			*	@ nRow, 12 PRINT 'TOTAL LEV-1'+descLevel_1+' : '+str(nLevel_1) FONT "Arial" SIZE 6 COLOR BLACK ITALIC
			*	nRow += 3			
			*	@ nRow,03 print RECTANGLE TO nRow,268 penwidth 0.5 COLOR {224,224,224} FILLED
			*	nRow += 3
			*	nLevel_1=0
			*endif		
			
			
			cLevel_1=substr(cOrganizationCode,1,2)
			descLevel_1=cOrganizationDescription2
					@ nRow, 12 PRINT '' FONT "Arial" SIZE 6 COLOR BLACK ITALIC
			nRow += 3
			@ nRow, 12 PRINT cOrganizationCode+' '+cOrganizationDescription2 FONT "Arial" SIZE 6 COLOR BLACK ITALIC
			nRow += 3
			nLevel_1=0
		endif
		if cLevel_2<>substr(cOrganizationCode,1,5)	//01.02
			nRow:=Cetak_Level(2,nRow)
			
			*if nLevel_2<>0
			*	@ nRow, 12 PRINT 'TOTAL LEV-2'+descLevel_2+' : '+str(nLevel_2) FONT "Arial" SIZE 6 COLOR BLACK ITALIC
			*	nRow += 3			
			*	nLevel_2=0
			*endif
			
			cLevel_2=substr(cOrganizationCode,1,5)
			descLevel_2=cOrganizationDescription2
			
			@ nRow, 12 PRINT '' FONT "Arial" SIZE 6 COLOR BLACK ITALIC
			nRow += 3
			@ nRow, 12 PRINT cOrganizationCode+' '+cOrganizationDescription2 FONT "Arial" SIZE 6 COLOR BLACK ITALIC
			nRow += 3
			nLevel_2=0
		endif		
		
			
		nNo++
		@ nRow, 04 PRINT Trans(nNo,'99999') FONT "Arial" SIZE 6 COLOR BLACK
		@ nRow, 12 PRINT cEmployeeCode FONT "Arial" SIZE 6 COLOR BLACK
		@ nRow, 24 PRINT cEmployeeName FONT "Arial" SIZE 6 COLOR BLACK
		nRow += 3 //5
		
		**************************************************************************************************************
		nLevel_1+=1
		nLevel_2+=1
		nLevel_3+=1
		nLevel_4+=1
		**************************************************************************************************************		
		
		DO EVENTS
	
	next
	
	
	
	if nLevel_1<>0
		@ nRow,03 print RECTANGLE TO nRow,268 penwidth 0.5 COLOR {224,224,224} FILLED
		nRow += 3
		@ nRow, 12 PRINT 'TOTAL '+descLevel_1+' : '+str(nLevel_1) FONT "Arial" SIZE 6 COLOR BLACK ITALIC
		nRow += 3			
		@ nRow,03 print RECTANGLE TO nRow,268 penwidth 0.5 COLOR {224,224,224} FILLED
		nRow += 3
		nLevel_1=0
	endif			
	
	END PRINTPAGE
	END PRINTDOC

return nil
*
*
*
function Cetak_Level(nLev,nRow)

	if nLev=2
		if nLevel_2<>0
			if nLevel_2<>0
				@ nRow, 12 PRINT 'TOTAL LEV-2'+descLevel_2+' : '+str(nLevel_2) FONT "Arial" SIZE 6 COLOR BLACK ITALIC
				nRow += 3			
				nLevel_2=0
			endif
		endif
	endif
	if nLev=1	
		if nLevel_1<>0
			@ nRow,03 print RECTANGLE TO nRow,268 penwidth 0.5 COLOR {224,224,224} FILLED
			nRow += 3
			@ nRow, 12 PRINT 'TOTAL LEV-1'+descLevel_1+' : '+str(nLevel_1) FONT "Arial" SIZE 6 COLOR BLACK ITALIC
			nRow += 3			
			@ nRow,03 print RECTANGLE TO nRow,268 penwidth 0.5 COLOR {224,224,224} FILLED
			nRow += 3
			nLevel_1=0
		endif
	endif

return nRow