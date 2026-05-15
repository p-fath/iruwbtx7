v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {-) HV transistors used in differential pair to increase voltage swing with reasonable gm
-) Differential caps (primary side of balun) with single-ended caps (secondary side of balun) used for adjustment of matching
-) Balun designed as a tradeoff with max. L, max. k, and max. Q with reasonable area and resonance frequency} 970 -460 0 0 0.4 0.4 {}
N 1450 -1620 1510 -1620 {lab=outn}
N 1510 -1620 1510 -1580 {lab=outn}
N 1550 -1620 1550 -1580 {lab=outp}
N 1550 -1620 1600 -1620 {lab=outp}
N 1510 -1670 1510 -1620 {lab=outn}
N 1550 -1670 1550 -1620 {lab=outp}
N 1370 -1620 1390 -1620 {lab=VSS}
N 1370 -1620 1370 -1590 {lab=VSS}
N 1370 -1590 1420 -1590 {lab=VSS}
N 1660 -1620 1680 -1620 {lab=VSS}
N 1680 -1620 1680 -1590 {lab=VSS}
N 1630 -1590 1680 -1590 {lab=VSS}
N 1460 -1190 1460 -1110 {lab=rf_n}
N 1460 -1190 1510 -1190 {lab=rf_n}
N 1510 -1280 1510 -1190 {lab=rf_n}
N 1590 -1190 1590 -1110 {lab=rf_p}
N 1550 -1190 1590 -1190 {lab=rf_p}
N 1550 -1280 1550 -1190 {lab=rf_p}
N 1290 -1190 1290 -960 {lab=rf_n}
N 1290 -1190 1460 -1190 {lab=rf_n}
N 1820 -1190 1820 -960 {lab=rf_p}
N 1590 -1190 1820 -1190 {lab=rf_p}
N 1290 -900 1290 -830 {lab=#net1}
N 1590 -830 1820 -830 {lab=#net1}
N 1820 -900 1820 -830 {lab=#net1}
N 1290 -930 1820 -930 {lab=VSS}
N 1590 -830 1590 -740 {lab=#net1}
N 1290 -830 1590 -830 {lab=#net1}
N 1280 -710 1350 -710 {lab=#net2}
N 960 -690 980 -690 {lab=en_PA}
N 960 -690 960 -630 {lab=en_PA}
N 960 -630 1300 -630 {lab=en_PA}
N 950 -690 960 -690 {lab=en_PA}
N 1300 -690 1300 -630 {lab=en_PA}
N 1300 -690 1350 -690 {lab=en_PA}
C {iruwbtx7_balun.sym} 1530 -1430 1 0 {name=xbalun}
C {cap_rfcmim.sym} 1420 -1620 1 1 {name=C2 
model=cap_rfcmim
lvs_model=rfcmim
w=25.105e-6
l=25.105e-6
wfeed=3.0e-6
spiceprefix=X}
C {lab_wire.sym} 1680 -1590 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1370 -1590 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {cap_rfcmim.sym} 1630 -1620 3 0 {name=C1 
model=cap_rfcmim
lvs_model=rfcmim
w=25.105e-6
l=25.105e-6
wfeed=3.0e-6
spiceprefix=X}
C {iopin.sym} 1530 -1280 1 0 {name=p16 lab=VDD}
C {opin.sym} 1510 -1670 3 0 {name=p2 lab=outn}
C {opin.sym} 1550 -1670 3 0 {name=p3 lab=outp}
C {iruwbtx7_PA_capBank.sym} 1530 -1060 0 1 {name=xPA_capBank}
C {ipin.sym} 1680 -1080 0 1 {name=p18 lab=ctrlM[2:0]}
C {lab_wire.sym} 1530 -1010 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {sg13_hv_rf_nmos.sym} 1840 -930 0 1 {name=M2
l=0.45u
w=100.0u
ng=10
m=3
rfmode=1
model=sg13_hv_nmos
lvs_model=rfnmoshv
spiceprefix=X
}
C {ipin.sym} 1250 -930 0 0 {name=p6 lab=inp}
C {ipin.sym} 1860 -930 0 1 {name=p8 lab=inn}
C {sg13_hv_rf_nmos.sym} 1270 -930 0 0 {name=M1
l=0.45u
w=100.0u
ng=10
m=3
rfmode=1
model=sg13_hv_nmos
lvs_model=rfnmoshv
spiceprefix=X
}
C {iopin.sym} 1610 -930 2 0 {name=p9 lab=VSS}
C {iruwbtx7_PA_currentMirror.sym} 1500 -690 0 0 {name=xPA_currentMirror}
C {lab_wire.sym} 1500 -740 1 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1480 -740 1 0 {name=p10 sig_type=std_logic lab=VDD}
C {iruwbtx7_PA_decoder.sym} 1130 -690 0 0 {name=xPA_decoder}
C {lab_wire.sym} 1140 -740 1 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1120 -740 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {ipin.sym} 980 -710 0 0 {name=p14 lab=ctrlG[3:0]}
C {ipin.sym} 950 -690 0 0 {name=p15 lab=en_PA}
C {title-2.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7GHz IR-UWB TX" rev=1.0 lock=false}
C {lab_wire.sym} 1330 -1190 0 0 {name=p11 sig_type=std_logic lab=rf_n}
C {lab_wire.sym} 1720 -1190 0 0 {name=p17 sig_type=std_logic lab=rf_p}
