create schema noxdbdemo; 
drop table noxdbdemo.icproduct;
CREATE or REPLACE TABLE noxdbdemo.icproduct ( 
	PRODKEY DECIMAL(11, 0) NOT NULL DEFAULT 0 primary key, 
	PRODID CHAR(30)  NOT NULL DEFAULT '' , 
	DESCRIPTION  CHAR(256)  NOT NULL DEFAULT '' , 
	MANUID CHAR(30)  NOT NULL DEFAULT '' , 
	PRICE DECIMAL(11, 2) NOT NULL DEFAULT 0 , 
	STOCKCNT DECIMAL(11, 0) NOT NULL DEFAULT 0 , 
	STOCKDATE DATE NOT NULL DEFAULT CURRENT_DATE )   
	  
	RCDFMT PRODUCTR   ; 
  
LABEL ON TABLE noxdbdemo.icproduct 
	IS 'noxDb demo: Product master' ; 
  
LABEL ON COLUMN noxdbdemo.icproduct 
( PRODKEY IS 'Product             Key' , 
	PRODID IS 'Product             ID' , 
	DESCRIPTION  IS 'Description' , 
	MANUID IS 'Manufacturer        ID' , 
	PRICE IS 'Price' , 
	STOCKCNT IS 'Stock               Count' , 
	STOCKDATE IS 'Stock               Date' ) ; 
  
LABEL ON COLUMN noxdbdemo.icproduct 
( PRODKEY TEXT IS 'Product Key' , 
	PRODID TEXT IS 'Product ID' , 
	DESCRIPTION  TEXT IS 'Description' , 
	MANUID TEXT IS 'Manufacturer ID' , 
	PRICE TEXT IS 'Price' , 
	STOCKCNT TEXT IS 'Stock Count' , 
	STOCKDATE TEXT IS 'Stock Date' ) ; 
  
GRANT DELETE , INSERT , SELECT , UPDATE   
ON noxdbdemo.icproduct TO PUBLIC ; 
  
GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   
ON noxdbdemo.icproduct TO QPGMR WITH GRANT OPTION ; 

insert into noxdbdemo.icproduct 
(prodkey,prodid,description,manuid,price,stockcnt,stockdate)
values 
('10','µDIGITAL 600 ax''','Camera Plus','CASIO','-1.43','9',now()),
('20','µDIGITAL 600 ex','Super flex XL plus','OLYMPUS','3005.80','234',now()),
('30','µ-mini DIGITAL','Digitalkamera - 50 Mpix - optisk zoom: 2 x - understøttet hukommelse: xD-Picture Card','OLYMPUS','2667.12','200',now()),
('40','µ-mini DIGITAL S','Digitalkamera - 50 Mpix - optisk zoom: 2 x - understøttet hukommelse: xD-Picture Card - blank beige','OLYMPUS','3094.06','212',now()),
('50','µmini DIGITAL S','Digitalkamera - 50 Mpix - optisk zoom: 2 x - understøtet hukommelse: xD-Picture Card - emaljesort','OLYMPUS','2579.47','15',now()),
('60','µmini DIGITAL S','Digitalkamera - 50 Mpix - optisk zoom: 2 x - understøtet hukommelse: xD-Picture Card - laguneblåure Card - emaljesort','OLYMPUS','2281.85','13',now()),
('70','µmini DIGITAL S','Digitalkamera - 50 Mpix - optisk zoom: 2 x - understøtet hukommelse: xD-Picture Card - guld','OLYMPUS','1378.86','30',now()),
('80','µ[MJU:] DIGITAL 800','Digitalkamera - 80 Mpix - optisk zoom: 3 x - understøtet hukommelse: xD-Picture Card - møkeblåCard - møkeblå','OLYMPUS','3095.73','9',now()),
('90','µ[MJU:] DIGITAL 800','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøtet hukommelse: xD-Picture Card','OLYMPUS','3069.59','2',now()),
('100','µ[MJU:] mini DIGITAL','x--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xx--------xyyyyyy','OLYMPUS','2828.08','122',now()),
('110','µ[MJU:] mini DIGITAL','Digitalkamera - 40 Mpix - optisk zoom: 2 x - understøttet hukommelse: xD-Picture Card - kosmisk sort','OLYMPUS','2461.64','3',now()),
('120','µ[MJU:] mini DIGITAL','Digitalkamera - 40 Mpix - optisk zoom: 2 x - understøttet hukommelse: xD-Picture Card - ren hvid','SAMSUNG','1234.00','22',now()),
('130','CAMEDIA AZ-2 Zoom','Digitalkamera - 40 Mpix - optisk zoom: 28 x - understøttet hukommelse: xD-Picture Card','SAMSUNG','1234.00','22',now()),
('2222','Flexi-mate','Cool Flexi','SONY','2730.93','34',now()),
('150','CAMEDIA C-370 Zoom','Digitalkamera - 32 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','OLYMPUS','2363.70','3',now()),
('160','   CAMEDIA C-480 ZOOM','Digitalkamera - 40 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','OLYMPUS','2064.35','5',now()),
('170','CAMEDIA C-500 Zoom','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','OLYMPUS','1421.10','0',now()),
('180','CAMEDIA C-55ZOOM','Digitalkamera - 51 Mpix - optisk zoom: 5 x - understøttet hukommelse: xD-Picture Card','OLYMPUS','2871.63','0',now()),
('190','CAMEDIA C-70ZOOM','Digitalkamera - 71 Mpix - optisk zoom: 5 x - understøttet hukommelse: xD-Picture Card - titan','OLYMPUS','3053.44','233',now()),
('200','CAMEDIA C-770 Ultra Zo','Digitalkamera - 40 Mpix / 77 Mpix (interpoleret) - optisk zoom: 10 x - understøttet hukommelse: xD-Picture Card','OLYMPUS','1894.20','0',now()),
('210','CAMEDIA FE-5500','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','OLYMPUS','2497.57','3',now()),
('220','CE-5330','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - Guld','ACER','1300.41','5',now()),
('2323','Grande SXL','Megapix','SONY','2437.11','4',now()),
('99999','','Test','SAMSUNG','456.78','12',now()),
('250','ØI-6330','Digitalkamera - 60 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','ACER','1557.55','0',now()),
('260','Coolpix P1','Digitalkamera - 80 Mpix - optisk zoom: 35 x - understøttet hukommelse: SD - sort','NIKON','2342.55','0',now()),
('270','Coolpix P2','Digitalkamera - 51 Mpix - optisk zoom: 35 x - understøttet hukommelse: SD - sølv','NIKON','2916.21','123',now()),
('280','Coolpix S1','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - elfenbenshvid','NIKON','3009.65','0',now()),
('290','Coolpix S1','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - ibenholtsort','NIKON','3009.65','0',now()),
('300','Coolpix S1','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - pure silver','NIKON','3034.94','0',now()),
('310','Coolpix S3','Digitalkamera - 60 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - platinsølv','NIKON','2951.10','0',now()),
('320','Coolpix S4','Digitalkamera - 60 Mpix - optisk zoom: 10 x - understøttet hukommelse: SD','NIKON','2342.55','0',now()),
('330','Coolpix 2500','Digitalkamera - 20 Mpix - optisk zoom: 3 x - understøttet hukommelse: CF - blå, sølv','NIKON','1878.29','0',now()),
('340','Coolpix 4600','Digitalkamera - 40 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','NIKON','2355.76','0',now()),
('350','Coolpix 5600','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','NIKON','2107.67','0',now()),
('360','Coolpix 5900','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','NIKON','1747.94','0',now()),
('370','Coolpix 7600','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sort','NIKON','1979.98','0',now()),
('380','Coolpix 7600','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','NIKON','2571.48','0',now()),
('390','Coolpix 7900','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sort','NIKON','2178.09','0',now()),
('400','Coolpix 7900','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','NIKON','2202.68','0',now()),
('410','Coolpix 8400','Digitalkamera - 80 Mpix - optisk zoom: 35 x - understøttet hukommelse: CF, Microdrive','NIKON','2566.56','10',now()),
('420','CR-8530CR','Digitalkamera - 80 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sort','ACER','2922.35','0',now()),
('430','CR-8530','Digitalkamera - 80 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sort','ACER','2922.35','0',now()),
('440','CS-5530','Digitalkamera - 52 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','ACER','1386.14','0',now()),
('450','CS-5530','Digitalkamera - 52 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','ACER','1403.89','0',now()),
('12345','','Demo','','0.00','0',now()),
('470','Cyber-shot DSC-F88/S','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick Duo, Memory Stick PRO, Memory Stick PRO Duo - sølv','SONY','2448.43','0',now()),
('480','Cyber-shot DSC-H1','Digitalkamera - 51 Mpix - optisk zoom: 12 x - understøttet hukommelse: Memory Stick, Memory Stick PRO','SONY','2256.37','0',now()),
('490','Cyber-shot DSC-H1','Digitalkamera - SLR-type - 51 Mpix - optisk zoom: 12 x - understøttet hukommelse: Memory Stick, Memory Stick PRO','SONY','2392.60','3',now()),
('500','Cyber-shot DSC-L1/B','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sort','SONY','1558.49','0',now()),
('510','Cyber-shot DSC-L1/B','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sort','SONY','2571.98','33',now()),
('520','Cyber-shot DSC-L1/L','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - blå','SONY','3033.42','30',now()),
('530','Cyber-shot DSC-L1/LJ','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - blå','SONY','2116.52','0',now()),
('540','Cyber-shot DSC-L1/S','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sølv','SONY','2794.86','0',now()),
('550','Cyber-shot DSC-L1/S','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sølv','SONY','2965.83','20',now()),
('560','Cyber-shot DSC-P100R','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick Duo, Memory Stick PRO, Memory Stick PRO Duo - rød','SONY','2383.28','0',now()),
('570','Cyber-shot DSC-P120','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick Duo, Memory Stick PRO, Memory Stick PRO Duo - sort','SONY','2366.89','22',now()),
('580','Cyber-shot DSC-P200/B','Digitalkamera - 72 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO - sort','SONY','2743.50','222',now()),
('590','Cyber-shot DSC-P200/S','Digitalkamera - 72 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO - sølv','SONY','1456.28','0',now()),
('600','Cyber-shot DSC-S40','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO','SONY','1789.08','0',now()),
('610','Cyber-shot DSC-S40','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO','SONY','2347.07','0',now()),
('620','Cyber-shot DSC-S60','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO','SONY','1772.51','0',now()),
('630','Cyber-shot DSC-S60','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO','SONY','1626.83','123',now()),
('640','Cyber-shot DSC-S80','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO','SONY','2973.93','0',now()),
('650','Cyber-shot DSC-S80','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO','SONY','1721.06','0',now()),
('660','Cyber-shot DSC-S90','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO','SONY','2630.96','0',now()),
('670','Cyber-shot DSC-S90S','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO - sølv','SONY','1679.25','0',now()),
('680','Cyber-shot DSC-S90S','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO - sølv','SONY','2682.26','0',now()),
('690','Cyber-shot DSC-T1','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo','SONY','1835.29','10',now()),
('700','Cyber-shot DSC-T3/B','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sort','SONY','1448.36','0',now()),
('710','Cyber-shot DSC-T3/S','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sølv','SONY','1912.97','0',now()),
('720','Cyber-shot DSC-T33','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo','SONY','1320.31','0',now()),
('730','Cyber-shot DSC-T33/N','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo - guld','SONY','1294.48','0',now()),
('740','Cyber-shot DSC-T5','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sort','SONY','2357.38','0',now()),
('750','Cyber-shot DSC-T5','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sølv','SONY','2357.38','0',now()),
('760','Cyber-shot DSC-T7/B','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sort','SONY','2839.04','0',now()),
('770','Cyber-shot DSC-T7/B','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sort','SONY','2461.46','0',now()),
('780','Cyber-shot DSC-T7/S','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sølv','SONY','1328.57','0',now()),
('790','Cyber-shot DSC-T7/S','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - sølv','SONY','1430.67','0',now()),
('800','Cyber-shot DSC-V3','Digitalkamera - 72 Mpix - optisk zoom: 4 x - understøttet hukommelse: CF, Memory Stick, Memory Stick PRO','SONY','3217.06','0',now()),
('810','Cyber-shot DSC-W15','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO - sort','SONY','2133.45','15',now()),
('820','Cyber-shot DSC-W17','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','SAMSUNG','2500.89','0',now()),
('830','Cyber-shot DSC-W5','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO - sølv','SONY','1987.75','0',now()),
('840','Cyber-shot DSC-W5','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO - sølv','SONY','1603.38','0',now()),
('850','Cyber-shot DSC-W7','Digitalkamera - 72 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick, Memory Stick PRO - sølv','SONY','2794.86','0',now()),
('860','Cyber-shot U DSC-U50S','Digitalkamera - 20 Mpix - understøttet hukommelse: Memory Stick Duo - sølv','SONY','2493.85','0',now()),
('870','Digimax A4','Digitalkamera - 40 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','SAMSUNG','2381.16','0',now()),
('880','Digimax A5','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','SAMSUNG','2501.62','0',now()),
('890','Digimax A6','Digitalkamera - 60 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','SAMSUNG','2108.44','0',now()),
('900','Digimax L50','Digitalkamera - 50 Mpix - optisk zoom: 28 x - understøttet hukommelse: MMC, SD','SAMSUNG','2425.28','0',now()),
('910','Digimax U-CA 3','Digitalkamera - 32 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick PRO Duo','SAMSUNG','2074.41','0',now()),
('920','Digimax U-CA 4','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, Memory Stick PRO Duo - titan','SAMSUNG','1532.51','0',now()),
('930','Digimax U-CA 505','Digitalkamera - 50 Mpix - understøttet hukommelse: MMC, SD','SAMSUNG','3195.89','0',now()),
('940','Digimax u-ca5','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - blå','SAMSUNG','1780.86','0',now()),
('950','Digimax u-ca5','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - rød','SAMSUNG','1815.96','0',now()),
('960','Digimax u-ca5','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','SAMSUNG','2115.50','0',now()),
('970','Digimax V50','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick Duo, MMC, SD, Memory Stick PRO Duo','SAMSUNG','1979.22','0',now()),
('980','Digimax V70','Digitalkamera - 70 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','SAMSUNG','1329.33','0',now()),
('990','Digimax V700','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - blå','SAMSUNG','1671.21','0',now()),
('1000','Digimax V700','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - rød','SAMSUNG','3129.38','0',now()),
('1010','Digimax V700','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','SAMSUNG','3129.38','0',now()),
('1020','Digital IXUS i Zoom','Digitalkamera - 50 Mpix - optisk zoom: 24 x - understøttet hukommelse: MMC, SD - jet','CANON','2984.16','123',now()),
('1030','Digital IXUS i Zoom','Digitalkamera - 50 Mpix - optisk zoom: 24 x - understøttet hukommelse: MMC, SD - sahara','CANON','1619.76','0',now()),
('1040','Digital IXUS i Zoom','Digitalkamera - 50 Mpix - optisk zoom: 24 x - understøttet hukommelse: MMC, SD - tyttebær','CANON','1619.76','0',now()),
('1050','Digital IXUS i Zoom','Digitalkamera - 50 Mpix - optisk zoom: 24 x - understøttet hukommelse: MMC, SD - ultraviolet','CANON','1619.76','0',now()),
('1060','Digital IXUS i 5','Digitalkamera - 50 Mpix - understøttet hukommelse: SD - bordeauxrød','CANON','1790.86','0',now()),
('1070','Digital IXUS i 5','Digitalkamera - 50 Mpix - understøttet hukommelse: SD - bordeauxrød','CANON','1790.86','0',now()),
('1080','Digital IXUS i 5','Digitalkamera - 50 Mpix - understøttet hukommelse: SD - midnatsblå','CANON','2048.17','0',now()),
('1090','Digital IXUS i 5','Digitalkamera - 50 Mpix - understøttet hukommelse: SD - stormgrå','CANON','2048.17','0',now()),
('1100','Digital IXUS 40','Digitalkamera - 40 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','CANON','1636.20','0',now()),
('1110','Digital IXUS 40','Digitalkamera - 40 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','CANON','1636.20','0',now()),
('1120','Digital IXUS 50','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','CANON','2817.15','0',now()),
('1130','Digital IXUS 50','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','CANON','2803.52','0',now()),
('1140','Digital IXUS 55','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','CANON','2691.89','0',now()),
('1150','Digital IXUS 55','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','CANON','2691.89','0',now()),
('1160','Digital IXUS 700','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','CANON','1329.76','0',now()),
('1170','Digital IXUS 700','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','CANON','1329.76','0',now()),
('1180','Digital IXUS 750','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','CANON','2024.28','0',now()),
('1190','Digital IXUS 750','Digitalkamera - 71 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','CANON','2024.28','0',now()),
('1200','D100','Digitalkamera - SLR - 61 Mpix - kun kamerahus - understøttet hukommelse: CF - sort','NIKON','3175.70','0',now()),
('1210','D2HS','Digitalkamera - SLR - 41 Mpix - kun kamerahus - understøttet hukommelse: CF, Microdrive','NIKON','2616.72','0',now()),
('1220','D50','Digitalkamera - SLR - 61 Mpix - kun kamerahus - understøttet hukommelse: SD - sort','NIKON','1915.03','0',now()),
('1230','D50','Digitalkamera - SLR - 61 Mpix - kun kamerahus - understøttet hukommelse: SD - sølv','NIKON','3210.33','0',now()),
('1240','D50','Digitalkamera - SLR - 61 Mpix - Nikon AF-S DX 18-55 mm objektiv - optisk zoom: 3 x - understøttet hukommelse: SD - sort','NIKON','2583.95','0',now()),
('1250','D50','Digitalkamera - SLR - 61 Mpix - Nikon AF-S DX 18-55 mm objektiv - optisk zoom: 3 x - understøttet hukommelse: SD - sølv','NIKON','1992.85','0',now()),
('1260','D70s','Digitalkamera - SLR - 61 Mpix - kun kamerahus - understøttet hukommelse: CF, Microdrive','NIKON','1350.65','0',now()),
('1270','D70s','Digitalkamera - SLR - 61 Mpix - Nikon AF-S DX 18-70mm lens - optisk zoom: 38 x - understøttet hukommelse: CF, Microdrive','NIKON','3257.94','0',now()),
('23456','','Next Demo','','0.00','0',now()),
('1290','E-1','Digitalkamera - SLR - 50 Mpix - Olympus Zuiko Digital 14-45 mm objektiv - optisk zoom: 32 x - understøttet hukommelse: CF, Microdrive','OLYMPUS','2542.56','0',now()),
('1300','E-1','Digitalkamera - SLR - 50 Mpix - Olympus Zuiko digital 14-54 mm objektiv - optisk zoom: 39 x','OLYMPUS','3219.89','0',now()),
('1310','E-300','Digitalkamera - SLR - 80 Mpix - kun kamerahus - understøttet hukommelse: CF, Microdrive','OLYMPUS','2326.53','0',now()),
('1320','E-300','Digitalkamera - SLR - 80 Mpix - Olympus Zuiko Digital 14-4 5 mm og 40-150 objektiver - optisk zoom: 32 x - understøttet hukommelse: CF, Microdrive','OLYMPUS','2740.27','0',now()),
('1330','E-300','Digitalkamera - SLR - 80 Mpix - Olympus Zuiko Digital 14-45 mm objektiv - optisk zoom: 32 x - understøttet hukommelse: CF, Microdrive','OLYMPUS','2970.76','0',now()),
('1340','EasyShare C300','Digitalkamera - 32 Mpix - understøttet hukommelse: MMC, SD','KODAK','2492.28','0',now()),
('1350','EasyShare C310','Digitalkamera - 40 Mpix - understøttet hukommelse: MMC, SD','KODAK','2638.79','33',now()),
('1360','EasyShare C330','Digitalkamera - 40 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','KODAK','2441.06','4',now()),
('1370','EasyShare C340','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','KODAK','1687.14','0',now()),
('1380','EasyShare C360','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','KODAK','1309.91','0',now()),
('1390','EasyShare LS755','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','KODAK','2116.76','0',now()),
('1400','EasyShare V530','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - midnat sort','KODAK','1491.15','0',now()),
('1410','EasyShare V530','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølvessens','KODAK','2922.64','0',now()),
('1420','EasyShare V550','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sort','KODAK','1774.04','0',now()),
('1430','EasyShare V550','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','KODAK','3163.52','0',now()),
('1440','EasyShare Z700','Digitalkamera - 40 Mpix - optisk zoom: 5 x - understøttet hukommelse: MMC, SD','KODAK','1652.74','0',now()),
('1450','EasyShare Z700 with Prin','Digitalkamera - 40 Mpix - optisk zoom: 5 x - understøttet hukommelse: MMC, SD','KODAK','2237.56','0',now()),
('1460','EasyShare Z730','Digitalkamera - 50 Mpix - optisk zoom: 4 x - understøttet hukommelse: MMC, SD','KODAK','1678.71','0',now()),
('1470','EasyShare Z740','Digitalkamera - 50 Mpix - optisk zoom: 10 x - understøttet hukommelse: MMC, SD','KODAK','1627.40','0',now()),
('1480','EasyShare Z7590','Digitalkamera - 50 Mpix - optisk zoom: 10 x - understøttet hukommelse: MMC, SD','KODAK','1663.32','0',now()),
('1490','EOS 1D Mark II','Digitalkamera - SLR - 82 Mpix - kun kamerahus - understøttet hukommelse: CF, SD, Microdrive - sort','CANON','2457.16','0',now()),
('1500','EOS 1D Mark II N','Digitalkamera - SLR - 82 Mpix - kun kamerahus - understøttet hukommelse: CF, SD, Microdrive','CANON','3223.24','0',now()),
('1510','EOS 1Ds Mark II','Digitalkamera - SLR - 167 Mpix - kun kamerahus - understøttet hukommelse: CF, SD, Microdrive','CANON','1730.75','2',now()),
('1520','EOS 1Ds Mark II','Digitalkamera - SLR - 167 Mpix - kun kamerahus - understøttet hukommelse: CF, SD, Microdrive','CANON','2000.93','0',now()),
('1530','EOS 20D','Digitalkamera - SLR - 82 Mpix - Canon EF-S 17-85 mm IS linse - optisk zoom: 5 x - understøttet hukommelse: CF, Microdrive','CANON','2914.42','0',now()),
('1540','EOS 20D','Digitalkamera - SLR - 82 Mpix - Canon EF-S-objektiv, 18-55 mm - optisk zoom: 3 x - understøttet hukommelse: CF, Microdrive','CANON','3167.22','0',now()),
('1550','EOS 20D','Digitalkamera - SLR - 82 Mpix - Canon EF-S-objektiv, 18-55 mm - optisk zoom: 3 x - understøttet hukommelse: CF, Microdrive','CANON','2174.41','0',now()),
('1560','EOS 20D','Digitalkamera - SLR - 82 Mpix - kun kamerahus - understøttet hukommelse: CF, Microdrive','CANON','2763.51','0',now()),
('1570','EOS 20D','Digitalkamera - SLR - 82 Mpix - kun kamerahus - understøttet hukommelse: CF, Microdrive','CANON','2442.33','0',now()),
('1580','EOS 350D','Digitalkamera - SLR - 80 Mpix - Canon EF-S 17-85 mm IS linse - optisk zoom: 5 x - understøttet hukommelse: CF, Microdrive - sort','CANON','2008.45','0',now()),
('1590','EOS 350D','Digitalkamera - SLR - 80 Mpix - Canon EF-S 18-55 mm og EF 55-200 objektiver - optisk zoom: 3 x - understøttet hukommelse: CF, Microdrive','CANON','2862.52','0',now()),
('1600','EOS 350D','Digitalkamera - SLR - 80 Mpix - Canon EF-S-objektiv, 18-55 mm - optisk zoom: 3 x - understøttet hukommelse: CF, Microdrive','CANON','3187.68','0',now()),
('1610','EOS 350D','Digitalkamera - SLR - 80 Mpix - Canon EF-S-objektiv, 18-55 mm - optisk zoom: 3 x - understøttet hukommelse: CF, Microdrive','CANON','2116.64','0',now()),
('1620','EOS 350D','Digitalkamera - SLR - 80 Mpix - kun kamerahus - understøttet hukommelse: CF, Microdrive','CANON','2242.18','0',now()),
('1630','EOS 5D','Digitalkamera - SLR - 128 Mpix - kun kamerahus - understøttet hukommelse: CF, Microdrive','CANON','2907.24','0',now()),
('1640','EXILIM EX-Z3','Digitalkamera - 32 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','CASIO','1757.29','0',now()),
('1650','EXILIM EX-Z30','Digitalkamera - 32 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','CASIO','2761.43','0',now()),
('1660','EXILIM Pro EX-P505','Digitalkamera - 50 Mpix - optisk zoom: 5 x - understøttet hukommelse: MMC, SD','CASIO','3113.47','0',now()),
('1670','EXILIM Pro EX-P600','Digitalkamera - 60 Mpix - optisk zoom: 4 x - understøttet hukommelse: MMC, SD','CASIO','1958.44','0',now()),
('1680','EXILIM ZOOM EX-Z57','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','CASIO','2828.31','0',now()),
('1690','EXILIM ZOOM EX-Z750','Digitalkamera - 72 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','CASIO','2049.47','0',now()),
('1700','Ferrari DIGITAL MODEL','Digitalkamera - 32 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card - Ferrari rød','OLYMPUS','2712.17','0',now()),
('1710','FinePix A345','Digitalkamera - 41 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','FUJIFILM','1935.23','0',now()),
('1720','FinePix A350','Digitalkamera - 52 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','FUJIFILM','2647.47','0',now()),
('1730','FinePix E550 Zoom','Digitalkamera - 63 Mpix - optisk zoom: 4 x - understøttet hukommelse: xD-Picture Card','FUJIFILM','3274.03','0',now()),
('1740','FinePix F10','Digitalkamera - 63 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','FUJIFILM','2657.85','0',now()),
('1750','FinePix F810 Zoom','Digitalkamera - 63 Mpix / 123 Mpix (interpoleret) - optisk zoom: 4 x - understøttet hukommelse: xD-Picture Card','FUJIFILM','2957.86','0',now()),
('1760','FinePix S3 Pro','Digitalkamera - SLR - 123 Mpix - kun kamerahus - understøttet hukommelse: CF, xD-Picture Card, Microdrive','FUJIFILM','2601.70','0',now()),
('1770','FinePix Z1','Digitalkamera - 51 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','FUJIFILM','3215.59','0',now()),
('1780','IR-300','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: xD-Picture Card','OLYMPUS','1396.18','0',now()),
('1800','Lumix DMC-FX2','Digitalkamera - 40 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','PANASONIC','1440.31','77',now()),
('1810','Lumix DMC-FX8EG-P','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - rosa','PANASONIC','1791.43','0',now()),
('1820','Lumix DMC-FX8EG-S','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','PANASONIC','1611.04','0',now()),
('1830','Lumix DMC-FX8EGM-A','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - blå','PANASONIC','1885.93','0',now()),
('1840','Lumix DMC-FX8EGM-K','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sort','PANASONIC','3146.20','0',now()),
('1850','Lumix DMC-FX9EG-K','Digitalkamera - 60 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sort','PANASONIC','2958.89','0',now()),
('1860','Lumix DMC-FX9EG-S','Digitalkamera - 60 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','PANASONIC','1362.82','0',now()),
('1870','Lumix DMC-FZ20EG-K','Digitalkamera - 50 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD - sort','PANASONIC','2428.61','0',now()),
('1880','Lumix DMC-FZ20EGMS','Digitalkamera - 50 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD - sølv','PANASONIC','2497.60','0',now()),
('1890','Lumix DMC-FZ5EGM-K','Digitalkamera - 50 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD - sort','PANASONIC','2254.54','0',now()),
('1900','Lumix DMC-FZ5EGM-S','Digitalkamera - 50 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD - sølv','PANASONIC','3232.59','0',now()),
('1910','Lumix DMC-LC1E-K','Digitalkamera - 50 Mpix - optisk zoom: 32 x - understøttet hukommelse: MMC, SD','PANASONIC','3241.91','0',now()),
('1920','Lumix DMC-LC80EGM-S','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','PANASONIC','2495.77','0',now()),
('1930','Lumix DMC-LS1EGM-S','Digitalkamera - 40 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','PANASONIC','2407.09','0',now()),
('1940','Lumix DMC-LZ1EGM-S','Digitalkamera - 40 Mpix - optisk zoom: 6 x - understøttet hukommelse: MMC, SD - sølv','PANASONIC','2717.43','0',now()),
('1950','Lumix DMC-LZ2EG-K','Digitalkamera - 50 Mpix - optisk zoom: 6 x - understøttet hukommelse: MMC, SD - sort','PANASONIC','1645.37','0',now()),
('1960','Lumix DMC-LZ2EGM-S','Digitalkamera - 50 Mpix - optisk zoom: 6 x - understøttet hukommelse: MMC, SD - sølv','PANASONIC','3077.15','66',now()),
('1970','Mavica MVC-FD200','Digitalkamera - 20 Mpix - optisk zoom: 3 x - understøttet hukommelse: Memory Stick - sort, metalsølv','SONY','1327.73','0',now()),
('1980','Minolta DiMAGE A200','Digitalkamera - SLR-type - 80 Mpix - optisk zoom: 7 x - understøttet hukommelse: CF, Microdrive','KONICA','2308.69','0',now()),
('1990','Minolta DiMAGE E500','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: SD','KONICA','1377.36','0',now()),
('2000','Minolta DiMAGE X1','Digitalkamera - 80 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - rød','KONICA','2931.94','0',now()),
('2010','Minolta DiMAGE X1','Digitalkamera - 80 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sort','KONICA','2931.94','0',now()),
('2020','Minolta DiMAGE X1','Digitalkamera - 80 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','KONICA','1980.87','0',now()),
('2030','Minolta DiMAGE X60','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - blå','KONICA','3179.60','0',now()),
('2040','Minolta DiMAGE X60','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD - sølv','KONICA','3179.60','0',now()),
('2050','Minolta DiMAGE Z3','Digitalkamera - SLR-type - 40 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD','KONICA','3180.62','0',now()),
('2060','Minolta DiMAGE Z3','Digitalkamera - SLR-type - 40 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD - sort','KONICA','2665.88','0',now()),
('2070','Minolta DiMAGE Z5','Digitalkamera - SLR-type - 50 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD - sort','KONICA','1680.01','0',now()),
('2080','Minolta DiMAGE Z5','Digitalkamera - SLR-type - 50 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD - sølv','KONICA','1911.38','0',now()),
('2090','Minolta DiMAGE Z6','Digitalkamera - SLR-type - 60 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD - sort','KONICA','3095.74','0',now()),
('2100','Minolta DiMAGE Z6','Digitalkamera - SLR-type - 60 Mpix - optisk zoom: 12 x - understøttet hukommelse: MMC, SD - sølv','KONICA','1663.32','0',now()),
('2110','Minolta Dynax 5D','Digitalkamera - SLR - 61 Mpix - Konica Minolta AF DT 18-70 mm objektiv - optisk zoom: 39 x - understøttet hukommelse: CF, Microdrive','KONICA','2319.28','0',now()),
('2120','Minolta Dynax 7D','Digitalkamera - SLR - 61 Mpix - kun kamerahus - understøttet hukommelse: CF, Microdrive','KONICA','2098.82','0',now()),
('2130','PhotoSmart E317','Digitalkamera - 50 Mpix - understøttet hukommelse: MMC, SD','HP','2303.82','0',now()),
('2140','PhotoSmart M22','Digitalkamera - 41 Mpix - understøttet hukommelse: MMC, SD','HP','2715.70','0',now()),
('2150','PhotoSmart R817','Digitalkamera - 51 Mpix - optisk zoom: 5 x - understøttet hukommelse: MMC, SD','HP','2366.03','0',now()),
('2160','PhotoSmart R817','Digitalkamera - 51 Mpix - optisk zoom: 5 x - understøttet hukommelse: MMC, SD','HP','2348.47','0',now()),
('2170','PowerShot A400','Digitalkamera - 32 Mpix - optisk zoom: 22 x - understøttet hukommelse: SD - forårsgrøn','CANON','1532.11','0',now()),
('2180','PowerShot A400','Digitalkamera - 32 Mpix - optisk zoom: 22 x - understøttet hukommelse: SD - gul solnedgang','CANON','1532.11','0',now()),
('2190','PowerShot A410','Digitalkamera - 32 Mpix - optisk zoom: 32 x - understøttet hukommelse: MMC, SD','CANON','1943.63','0',now()),
('2200','PowerShot A520','Digitalkamera - 40 Mpix - optisk zoom: 4 x - understøttet hukommelse: MMC, SD','CANON','1935.23','0',now()),
('2210','PowerShot A610','Digitalkamera - 50 Mpix - optisk zoom: 4 x - understøttet hukommelse: MMC, SD','CANON','3274.85','0',now()),
('2220','PowerShot A620','Digitalkamera - 71 Mpix - optisk zoom: 4 x - understøttet hukommelse: MMC, SD','CANON','3018.17','0',now()),
('2230','PowerShot G6','Digitalkamera - 71 Mpix - optisk zoom: 4 x - understøttet hukommelse: CF, Microdrive','CANON','3140.14','0',now()),
('2240','PowerShot Pro1','Digitalkamera - 80 Mpix - optisk zoom: 7 x - understøttet hukommelse: CF, Microdrive','CANON','1664.66','0',now()),
('2250','PowerShot S1 IS','Digitalkamera - 32 Mpix - optisk zoom: 10 x - understøttet hukommelse: CF, Microdrive','CANON','3181.14','0',now()),
('2260','PowerShot S2 IS','Digitalkamera - 50 Mpix - optisk zoom: 12 x - understøttet hukommelse: SD','CANON','1853.26','0',now()),
('2270','PowerShot S60','Digitalkamera - 50 Mpix - optisk zoom: 36 x - understøttet hukommelse: CF, Microdrive','CANON','1628.86','0',now()),
('2280','PowerShot S70','Digitalkamera - 71 Mpix - optisk zoom: 36 x - understøttet hukommelse: CF, Microdrive - sort','CANON','1371.64','0',now()),
('2290','PowerShot S80','Digitalkamera - 80 Mpix - optisk zoom: 36 x - understøttet hukommelse: MMC, SD','CANON','2684.96','0',now()),
('2300','QV-R41','Digitalkamera - 40 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','CASIO','2743.95','0',now()),
('2310','QV-R51','Digitalkamera - 50 Mpix - optisk zoom: 3 x - understøttet hukommelse: MMC, SD','CASIO','2615.52','0',now()),
('2320','SP-500 UltraZoom','Digitalkamera - 60 Mpix - optisk zoom: 10 x - understøttet hukommelse: xD-Picture Card','OLYMPUS','2846.15','0',now()),
('233','µDIGITAL 600 ex','Super flex OL TWO2','OLYMPUS','2498.70','233',now())