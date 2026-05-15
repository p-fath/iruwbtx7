v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Nominal:
en_testmode=0
ctrlF=01010
ctrlBW=00101
ctrlI=00101
ctrlBST=11111
ctrlBST_DEL=001
ctrlG=0101
ctrlM=011
en_testmode=0

Specs:
f_RF=7.06GHz
DC Power=34.2mW (while sending of 2.6ns pulse)
RF Power=4 dBm (@50 Ohm load)
S11 = -21.1dB (single-ended; looking into PA; with bondwire and matching series capacitor)} 1440 -710 0 0 0.4 0.4 {}
T {-) Supply voltage limited to ~1.5V due to digital parts (nmos_lv used!), but output voltage swing could be higher due to nmos_hv.
-) Balun designed as tradeof with min. L (due to min. C of capbank), max. Q and reasonable area and resonance frequency} 170 -260 0 0 0.4 0.4 {}
T {Power ~3.5mW} 660 -510 0 0 0.4 0.4 {}
T {Power ~13.5mW} 1100 -470 0 0 0.4 0.4 {}
T {Power ~17.2mW} 1520 -750 0 0 0.4 0.4 {}
N 980 -910 980 -840 {lab=rf_osci_p}
N 1120 -970 1120 -940 {lab=rf_osci_p}
N 1320 -880 1320 -840 {lab=rf_osci_n}
N 1160 -940 1320 -940 {lab=rf_osci_n}
N 1160 -970 1160 -940 {lab=rf_osci_n}
N 1300 -840 1320 -840 {lab=rf_osci_n}
N 980 -940 1120 -940 {lab=rf_osci_p}
N 980 -840 1000 -840 {lab=rf_osci_p}
N 980 -710 1100 -710 {lab=rf_osci_p}
N 1210 -710 1320 -710 {lab=rf_osci_n}
N 890 -660 1000 -660 {lab=VA[4:0]}
N 890 -640 1000 -640 {lab=VB[4:0]}
N 890 -620 970 -620 {lab=en_PA}
N 970 -620 970 -510 {lab=en_PA}
N 970 -510 1390 -510 {lab=en_PA}
N 1390 -780 1390 -510 {lab=en_PA}
N 1390 -780 1450 -780 {lab=en_PA}
N 1390 -860 1450 -860 {lab=rf_osci_p}
N 1390 -910 1390 -860 {lab=rf_osci_p}
N 980 -910 1390 -910 {lab=rf_osci_p}
N 980 -940 980 -910 {lab=rf_osci_p}
N 1360 -840 1450 -840 {lab=rf_osci_n}
N 1360 -880 1360 -840 {lab=rf_osci_n}
N 1320 -880 1360 -880 {lab=rf_osci_n}
N 1320 -940 1320 -880 {lab=rf_osci_n}
N 980 -840 980 -710 {lab=rf_osci_p}
N 1100 -710 1100 -690 {lab=rf_osci_p}
N 1320 -840 1320 -710 {lab=rf_osci_n}
N 1210 -710 1210 -690 {lab=rf_osci_n}
C {iruwbtx7_osci_capBank.sym} 1150 -820 0 0 {name=xosci_capBank}
C {iruwbtx7_osci_core.sym} 1150 -640 0 0 {name=xosci_core}
C {iruwbtx7_osci_decoder.sym} 740 -610 0 0 {name=xosci_decoder}
C {iruwbtx7_tank_inductor.sym} 1140 -1120 1 0 {name=xtank_inductor}
C {lab_wire.sym} 1150 -770 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1010 -940 0 0 {name=p3 sig_type=std_logic lab=rf_osci_p}
C {lab_wire.sym} 1320 -940 0 0 {name=p4 sig_type=std_logic lab=rf_osci_n}
C {ipin.sym} 1000 -820 0 0 {name=p18 lab=ctrlF[4:0]}
C {iopin.sym} 1140 -970 1 0 {name=p16 lab=VDD}
C {lab_wire.sym} 730 -690 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 750 -690 1 0 {name=p7 sig_type=std_logic lab=VSS}
C {ipin.sym} 590 -660 0 0 {name=p8 lab=trig_in}
C {ipin.sym} 590 -640 0 0 {name=p9 lab=en_testmode}
C {ipin.sym} 590 -620 0 0 {name=p10 lab=ctrlBW[4:0]}
C {ipin.sym} 590 -600 0 0 {name=p11 lab=ctrlBST_DEL[2:0]}
C {ipin.sym} 590 -580 0 0 {name=p12 lab=ctrlI[4:0]}
C {ipin.sym} 590 -560 0 0 {name=p13 lab=ctrlBST[4:0]}
C {iopin.sym} 1150 -590 1 0 {name=p5 lab=VSS}
C {iruwbtx7_PA.sym} 1600 -820 0 0 {name=xPA}
C {lab_wire.sym} 1590 -890 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1610 -890 1 0 {name=p14 sig_type=std_logic lab=VSS}
C {opin.sym} 1750 -860 0 0 {name=p15 lab=outp}
C {opin.sym} 1750 -840 0 0 {name=p17 lab=outn}
C {ipin.sym} 1450 -820 0 0 {name=p19 lab=ctrlG[3:0]}
C {ipin.sym} 1450 -800 0 0 {name=p20 lab=ctrlM[2:0]}
C {title-3.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7 GHz IR-UWB TX" rev=1.0 lock=false}
C {lab_wire.sym} 1070 -510 0 0 {name=p21 sig_type=std_logic lab=en_PA}
C {lab_wire.sym} 970 -660 0 0 {name=p22 sig_type=std_logic lab=VA[4:0]}
C {lab_wire.sym} 970 -640 0 0 {name=p23 sig_type=std_logic lab=VB[4:0]}
