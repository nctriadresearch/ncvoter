## code to prepare `county_codes` dataset goes here


raw_text <-
"000 ALAMANCE
010 ALEXANDER
020 ALLEGHANY
030 ANSON
040 ASHE
050 AVERY
060 BEAUFORT
070 BERTIE
080 BLADEN
090 BRUNSWICK
100 BUNCOMBE
110 BURKE
120 CABARRUS
130 CALDWELL
140 CAMDEN
150 CARTERET
160 CASWELL
170 CATAWBA
180 CHATHAM
190 CHEROKEE
200 CHOWAN
210 CLAY
220 CLEVELAND
230 COLUMBUS
240 CRAVEN
250 CUMBERLAND
260 CURRITUCK
270 DARE
280 DAVIDSON
290 DAVIE
300 DUPLIN
310 DURHAM
320 EDGECOMBE
330 FORSYTH
340 FRANKLIN
350 GASTON
360 GATES
370 GRAHAM
380 GRANVILLE
390 GREENE
400 GUILFORD
410 HALIFAX
420 HARNETT
430 HAYWOOD
440 HENDERSON
450 HERTFORD
460 HOKE
470 HYDE
480 IREDELL
490 JACKSON
500 JOHNSTON
510 JONES
520 LEE
530 LENOIR
540 LINCOLN
550 MACON
560 MADISON
570 MARTIN
580 MCDOWELL
590 MECKLENBURG
600 MITCHELL
610 MONTGOMERY
620 MOORE
630 NASH
640 NEW HANOVER
650 NORTHAMPTON
660 ONSLOW
670 ORANGE
680 PAMLICO
690 PASQUOTANK
700 PENDER
710 PERQUIMANS
720 PERSON
730 PITT
740 POLK
750 RANDOLPH
760 RICHMOND
770 ROBESON
780 ROCKINGHAM
790 ROWAN
800 RUTHERFORD
810 SAMPSON
820 SCOTLAND
830 STANLY
840 STOKES
850 SURRY
860 SWAIN
870 TRANSYLVANIA
880 TYRRELL
890 UNION
900 VANCE
910 WAKE
920 WARREN
930 WASHINGTON
940 WATAUGA
950 WAYNE
960 WILKES
970 WILSON
980 YADKIN
990 YANCEY"

county_codes <- read.delim(file = raw_text, header = FALSE, sep = "\n")

usethis::use_data("county_codes")