v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {-) Adjustable RF capacitor bank
-) If ctrl is 1, both capacitors are explicit single-ended to ground (on state)
-) If ctrl is 0, node of capacitors is high-ohmic and capacitors can be neglected off state)} 140 -150 0 0 0.4 0.4 {}
N 1060 -1090 1100 -1090 {lab=VSS}
N 1060 -1180 1060 -1090 {lab=VSS}
N 1290 -1090 1330 -1090 {lab=VSS}
N 1330 -1180 1330 -1090 {lab=VSS}
N 1290 -1210 1300 -1210 {lab=#net1}
N 1100 -1210 1170 -1210 {lab=#net2}
N 1200 -1170 1200 -1090 {lab=ctrlM[2]}
N 1140 -1090 1200 -1090 {lab=ctrlM[2]}
N 1200 -1090 1250 -1090 {lab=ctrlM[2]}
N 1100 -1060 1100 -1040 {lab=VSS}
N 1100 -1040 1290 -1040 {lab=VSS}
N 1290 -1060 1290 -1040 {lab=VSS}
N 1330 -1090 1330 -1040 {lab=VSS}
N 1290 -1040 1330 -1040 {lab=VSS}
N 1060 -1090 1060 -1040 {lab=VSS}
N 1060 -1040 1100 -1040 {lab=VSS}
N 940 -1210 1030 -1210 {lab=rf_p}
N 1360 -1210 1460 -1210 {lab=rf_n}
N 1060 -760 1100 -760 {lab=VSS}
N 1060 -850 1060 -760 {lab=VSS}
N 1290 -760 1330 -760 {lab=VSS}
N 1330 -850 1330 -760 {lab=VSS}
N 1290 -880 1300 -880 {lab=#net3}
N 1100 -880 1170 -880 {lab=#net4}
N 1200 -840 1200 -760 {lab=ctrlM[1]}
N 1140 -760 1200 -760 {lab=ctrlM[1]}
N 1200 -760 1250 -760 {lab=ctrlM[1]}
N 1100 -730 1100 -710 {lab=VSS}
N 1100 -710 1290 -710 {lab=VSS}
N 1290 -730 1290 -710 {lab=VSS}
N 1330 -760 1330 -710 {lab=VSS}
N 1290 -710 1330 -710 {lab=VSS}
N 1060 -760 1060 -710 {lab=VSS}
N 1060 -710 1100 -710 {lab=VSS}
N 940 -880 1030 -880 {lab=rf_p}
N 1360 -880 1460 -880 {lab=rf_n}
N 1050 -430 1090 -430 {lab=VSS}
N 1050 -520 1050 -430 {lab=VSS}
N 1280 -430 1320 -430 {lab=VSS}
N 1320 -520 1320 -430 {lab=VSS}
N 1280 -550 1290 -550 {lab=#net5}
N 1090 -550 1160 -550 {lab=#net6}
N 1190 -510 1190 -430 {lab=ctrlM[0]}
N 1130 -430 1190 -430 {lab=ctrlM[0]}
N 1190 -430 1240 -430 {lab=ctrlM[0]}
N 1090 -400 1090 -380 {lab=VSS}
N 1090 -380 1280 -380 {lab=VSS}
N 1280 -400 1280 -380 {lab=VSS}
N 1320 -430 1320 -380 {lab=VSS}
N 1280 -380 1320 -380 {lab=VSS}
N 1050 -430 1050 -380 {lab=VSS}
N 1050 -380 1090 -380 {lab=VSS}
N 940 -550 1020 -550 {lab=rf_p}
N 1350 -550 1460 -550 {lab=rf_n}
N 940 -880 940 -550 {lab=rf_p}
N 940 -1210 940 -880 {lab=rf_p}
N 1460 -880 1460 -550 {lab=rf_n}
N 1460 -1210 1460 -880 {lab=rf_n}
N 1090 -550 1090 -460 {lab=#net6}
N 1080 -550 1090 -550 {lab=#net6}
N 1280 -550 1280 -460 {lab=#net5}
N 1220 -550 1280 -550 {lab=#net5}
N 1290 -880 1290 -790 {lab=#net3}
N 1230 -880 1290 -880 {lab=#net3}
N 1100 -880 1100 -790 {lab=#net4}
N 1090 -880 1100 -880 {lab=#net4}
N 1100 -1210 1100 -1120 {lab=#net2}
N 1090 -1210 1100 -1210 {lab=#net2}
N 1290 -1210 1290 -1120 {lab=#net1}
N 1230 -1210 1290 -1210 {lab=#net1}
C {cap_rfcmim.sym} 1330 -1210 1 1 {name=C5[3:0] 
model=cap_rfcmim
lvs_model=rfcmim
w=7.0e-6
l=7.0e-6
wfeed=1.0e-6
spiceprefix=X}
C {sg13_lv_rf_nmos.sym} 1270 -1090 0 0 {name=M7
l=0.13u
w=10.0u
ng=1
m=4
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {sg13_lv_rf_nmos.sym} 1120 -1090 0 1 {name=M8
l=0.13u
w=10.0u
ng=1
m=4
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {sg13_lv_rf_nmos.sym} 1200 -1190 1 1 {name=M9
l=0.13u
w=10.0u
ng=1
m=8
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {cap_rfcmim.sym} 1060 -1210 3 0 {name=C6[3:0] 
model=cap_rfcmim
lvs_model=rfcmim
w=7.0e-6
l=7.0e-6
wfeed=1.0e-6
spiceprefix=X}
C {lab_wire.sym} 1200 -1210 3 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1180 -1040 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {cap_rfcmim.sym} 1330 -880 1 1 {name=C7[1:0]
model=cap_rfcmim
lvs_model=rfcmim
w=7.0e-6
l=7.0e-6
wfeed=1.0e-6
spiceprefix=X}
C {sg13_lv_rf_nmos.sym} 1270 -760 0 0 {name=M10
l=0.13u
w=10.0u
ng=1
m=2
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {sg13_lv_rf_nmos.sym} 1120 -760 0 1 {name=M11
l=0.13u
w=10.0u
ng=1
m=2
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {sg13_lv_rf_nmos.sym} 1200 -860 1 1 {name=M12
l=0.13u
w=10.0u
ng=1
m=4
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {cap_rfcmim.sym} 1060 -880 3 0 {name=C8[1:0]
model=cap_rfcmim
lvs_model=rfcmim
w=7.0e-6
l=7.0e-6
wfeed=1.0e-6
spiceprefix=X}
C {lab_wire.sym} 1200 -880 3 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1180 -710 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {cap_rfcmim.sym} 1320 -550 1 1 {name=C9 
model=cap_rfcmim
lvs_model=rfcmim
w=7.0e-6
l=7.0e-6
wfeed=1.0e-6
spiceprefix=X}
C {sg13_lv_rf_nmos.sym} 1260 -430 0 0 {name=M13
l=0.13u
w=10.0u
ng=1
m=1
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {sg13_lv_rf_nmos.sym} 1110 -430 0 1 {name=M14
l=0.13u
w=10.0u
ng=1
m=1
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {sg13_lv_rf_nmos.sym} 1190 -530 1 1 {name=M15
l=0.13u
w=10.0u
ng=1
m=2
rfmode=1
model=sg13_lv_nmos
lvs_model=rfnmos
spiceprefix=X
}
C {cap_rfcmim.sym} 1050 -550 3 0 {name=C10 
model=cap_rfcmim
lvs_model=rfcmim
w=7.0e-6
l=7.0e-6
wfeed=1.0e-6
spiceprefix=X}
C {lab_wire.sym} 1190 -550 3 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1170 -380 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1200 -1090 0 1 {name=p13 sig_type=std_logic lab=ctrlM[2]}
C {lab_wire.sym} 1200 -760 0 1 {name=p14 sig_type=std_logic lab=ctrlM[1]}
C {lab_wire.sym} 1190 -430 0 1 {name=p15 sig_type=std_logic lab=ctrlM[0]}
C {ipin.sym} 840 -1030 0 0 {name=p18 lab=ctrlM[2:0]}
C {iopin.sym} 840 -1000 2 0 {name=p16 lab=VSS}
C {iopin.sym} 940 -1210 3 0 {name=p17 lab=rf_p}
C {iopin.sym} 1460 -1210 3 0 {name=p19 lab=rf_n}
C {title-3.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7 GHz IR-UWB TX" rev=1.0 lock=false}
