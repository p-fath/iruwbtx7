v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {-) Pulse generator to asymetrical kick differentiall oscillator for fast startup -> VB is delayed to VA by 1/(2*f_RF)~70ps
-) Amount of current for oscillator adjustable by ctrlI 
-) Length of pulse adjustable with ctrlBW -> adjustable BW
-) Boost enabled (BST): Current for oscillator (amount of current adjustable by ctrlBST) will be increased for a short time (time adjustable by ctrlBST_DEL). This enables faster or slower startup and therefore adjustment of UWB pulse shape
-) Sizing of inverter chains for minimum delay and maximum slew rate
-) if en_testmode = 1, then a continuous wave is sent outets} 60 -350 0 0 0.4 0.4 {}
T {Nominal:
ctrlBW=00101
ctrlI=00101
ctrlBST=11111
ctrlBST_DEL=001
en_testmode=0} 860 -600 0 0 0.4 0.4 {}
N 220 -1140 240 -1140 {lab=#net1}
N 220 -1060 240 -1060 {lab=#net2}
N 80 -1240 170 -1240 {lab=trig_in}
N 80 -1240 80 -1140 {lab=trig_in}
N 80 -1140 140 -1140 {lab=trig_in}
N 80 -1140 80 -1060 {lab=trig_in}
N 80 -1060 140 -1060 {lab=trig_in}
N 290 -1260 1500 -1260 {lab=#net3}
N 1320 -1140 1330 -1140 {lab=#net4}
N 1010 -910 1010 -830 {lab=VSS}
N 980 -880 980 -830 {lab=VSS}
N 980 -1060 980 -1020 {lab=#net5}
N 820 -1060 980 -1060 {lab=#net5}
N 980 -910 1010 -910 {lab=VSS}
N 980 -960 980 -940 {lab=#net6}
N 850 -910 850 -830 {lab=VSS}
N 820 -880 820 -830 {lab=VSS}
N 820 -1060 820 -1020 {lab=#net5}
N 820 -910 850 -910 {lab=VSS}
N 820 -830 850 -830 {lab=VSS}
N 820 -960 820 -940 {lab=#net7}
N 690 -910 690 -830 {lab=VSS}
N 660 -880 660 -830 {lab=VSS}
N 660 -1060 660 -1020 {lab=#net5}
N 660 -910 690 -910 {lab=VSS}
N 660 -830 690 -830 {lab=VSS}
N 660 -960 660 -940 {lab=#net8}
N 660 -1060 820 -1060 {lab=#net5}
N 530 -910 530 -830 {lab=VSS}
N 500 -880 500 -830 {lab=VSS}
N 500 -1060 500 -1020 {lab=#net5}
N 500 -910 530 -910 {lab=VSS}
N 500 -830 530 -830 {lab=VSS}
N 500 -960 500 -940 {lab=#net9}
N 370 -910 370 -830 {lab=VSS}
N 340 -880 340 -830 {lab=VSS}
N 340 -1060 340 -1020 {lab=#net5}
N 340 -910 370 -910 {lab=VSS}
N 340 -830 370 -830 {lab=VSS}
N 340 -960 340 -940 {lab=#net10}
N 340 -1060 500 -1060 {lab=#net5}
N 980 -830 1010 -830 {lab=VSS}
N 850 -830 980 -830 {lab=VSS}
N 690 -830 820 -830 {lab=VSS}
N 530 -830 660 -830 {lab=VSS}
N 370 -830 500 -830 {lab=VSS}
N 500 -1060 660 -1060 {lab=#net5}
N 320 -1060 340 -1060 {lab=#net5}
N 1190 -1060 1210 -1060 {lab=#net11}
N 1090 -1060 1110 -1060 {lab=#net12}
N 980 -1060 1010 -1060 {lab=#net5}
N 1470 -1100 1530 -1100 {lab=#net13}
N 1330 -1080 1350 -1080 {lab=#net14}
N 1330 -1080 1330 -1060 {lab=#net14}
N 1290 -1060 1330 -1060 {lab=#net14}
N 1330 -1120 1350 -1120 {lab=#net4}
N 1330 -1140 1330 -1120 {lab=#net4}
N 1500 -1140 1530 -1140 {lab=#net3}
N 1500 -1260 1500 -1140 {lab=#net3}
N 1650 -1120 1700 -1120 {lab=#net15}
N 220 -710 240 -710 {lab=#net16}
N 80 -710 140 -710 {lab=trig_in}
N 660 -710 660 -670 {lab=trig_in_3}
N 660 -610 660 -590 {lab=#net17}
N 500 -710 500 -670 {lab=trig_in_3}
N 500 -610 500 -590 {lab=#net18}
N 340 -710 340 -670 {lab=trig_in_3}
N 340 -610 340 -590 {lab=#net19}
N 340 -710 500 -710 {lab=trig_in_3}
N 500 -710 660 -710 {lab=trig_in_3}
N 320 -710 340 -710 {lab=trig_in_3}
N 1190 -710 1210 -710 {lab=#net20}
N 1090 -710 1110 -710 {lab=#net21}
N 1330 -730 1350 -730 {lab=#net22}
N 1330 -730 1330 -710 {lab=#net22}
N 1290 -710 1330 -710 {lab=#net22}
N 1320 -770 1350 -770 {lab=#net4}
N 320 -1140 1320 -1140 {lab=#net4}
N 1780 -1120 1820 -1120 {lab=#net23}
N 660 -710 1010 -710 {lab=trig_in_3}
N 660 -520 690 -520 {lab=VSS}
N 630 -550 630 -520 {lab=VSS}
N 660 -550 660 -520 {lab=VSS}
N 630 -520 660 -520 {lab=VSS}
N 690 -550 690 -520 {lab=VSS}
N 500 -520 530 -520 {lab=VSS}
N 470 -550 470 -520 {lab=VSS}
N 500 -550 500 -520 {lab=VSS}
N 470 -520 500 -520 {lab=VSS}
N 530 -550 530 -520 {lab=VSS}
N 340 -520 370 -520 {lab=VSS}
N 310 -550 310 -520 {lab=VSS}
N 340 -550 340 -520 {lab=VSS}
N 310 -520 340 -520 {lab=VSS}
N 370 -550 370 -520 {lab=VSS}
N 390 -520 470 -520 {lab=VSS}
N 550 -520 630 -520 {lab=VSS}
N 340 -640 390 -640 {lab=VSS}
N 390 -640 390 -520 {lab=VSS}
N 370 -520 390 -520 {lab=VSS}
N 500 -640 550 -640 {lab=VSS}
N 550 -640 550 -520 {lab=VSS}
N 530 -520 550 -520 {lab=VSS}
N 660 -640 720 -640 {lab=VSS}
N 720 -640 720 -520 {lab=VSS}
N 690 -520 720 -520 {lab=VSS}
N 1320 -1140 1320 -770 {lab=#net4}
N 1920 -1040 1940 -1040 {lab=#net24}
N 2120 -1040 2140 -1040 {lab=#net25}
N 2020 -1040 2040 -1040 {lab=#net26}
N 1820 -1040 1840 -1040 {lab=#net23}
N 1820 -1120 1820 -1040 {lab=#net23}
N 2440 -920 2460 -920 {lab=#net27}
N 2340 -920 2360 -920 {lab=#net28}
N 2440 -1040 2460 -1040 {lab=#net29}
N 2340 -1040 2360 -1040 {lab=#net30}
N 2440 -1130 2460 -1130 {lab=#net31}
N 2340 -1130 2360 -1130 {lab=#net32}
N 1820 -1130 1820 -1120 {lab=#net23}
N 2220 -1040 2260 -1040 {lab=#net33}
N 1820 -1040 1820 -920 {lab=#net23}
N 2540 -1130 2570 -1130 {lab=#net34}
N 2540 -1040 2570 -1040 {lab=#net35}
N 1920 -670 1940 -670 {lab=#net36}
N 2120 -670 2140 -670 {lab=#net37}
N 2020 -670 2040 -670 {lab=#net38}
N 1820 -670 1840 -670 {lab=#net39}
N 1820 -750 1820 -670 {lab=#net39}
N 2440 -670 2460 -670 {lab=#net40}
N 2340 -670 2360 -670 {lab=#net41}
N 2440 -760 2460 -760 {lab=#net42}
N 2340 -760 2360 -760 {lab=#net43}
N 1820 -760 1820 -750 {lab=#net39}
N 2220 -670 2260 -670 {lab=#net44}
N 1470 -750 1820 -750 {lab=#net39}
N 2690 -1150 2720 -1150 {lab=#net45}
N 2550 -1170 2570 -1170 {lab=ctrlI[4:0]}
N 2550 -1190 2550 -1170 {lab=ctrlI[4:0]}
N 2540 -1190 2550 -1190 {lab=ctrlI[4:0]}
N 2800 -1150 2870 -1150 {lab=#net46}
N 2690 -1020 2720 -1020 {lab=#net47}
N 2800 -1020 2870 -1020 {lab=#net48}
N 2550 -1000 2570 -1000 {lab=ctrlI[4:0]}
N 2550 -1000 2550 -980 {lab=ctrlI[4:0]}
N 2540 -980 2550 -980 {lab=ctrlI[4:0]}
N 2540 -760 2570 -760 {lab=#net49}
N 2540 -670 2570 -670 {lab=#net50}
N 2690 -780 2720 -780 {lab=#net51}
N 2550 -800 2570 -800 {lab=ctrlBST[4:0]}
N 2550 -820 2550 -800 {lab=ctrlBST[4:0]}
N 2540 -820 2550 -820 {lab=ctrlBST[4:0]}
N 2690 -650 2720 -650 {lab=#net52}
N 2550 -630 2570 -630 {lab=ctrlBST[4:0]}
N 2550 -630 2550 -610 {lab=ctrlBST[4:0]}
N 2540 -610 2550 -610 {lab=ctrlBST[4:0]}
N 2800 -780 2830 -780 {lab=#net53}
N 2830 -1190 2830 -780 {lab=#net53}
N 2830 -1190 2870 -1190 {lab=#net53}
N 2800 -650 2850 -650 {lab=#net54}
N 2850 -980 2850 -650 {lab=#net54}
N 2850 -980 2870 -980 {lab=#net54}
N 2990 -1170 3020 -1170 {lab=#net55}
N 3100 -1170 3120 -1170 {lab=#net56}
N 3200 -1170 3220 -1170 {lab=#net57}
N 3300 -1170 3330 -1170 {lab=VA[4:0]}
N 2990 -1000 3020 -1000 {lab=#net58}
N 3100 -1000 3120 -1000 {lab=#net59}
N 3200 -1000 3220 -1000 {lab=#net60}
N 3300 -1000 3330 -1000 {lab=VB[4:0]}
N 3200 -920 3220 -920 {lab=#net61}
N 3300 -920 3330 -920 {lab=en_PA}
N 2540 -920 3120 -920 {lab=#net62}
N 380 -1400 480 -1400 {lab=VDD}
N 80 -1060 80 -710 {lab=trig_in}
N 1820 -760 2260 -760 {lab=#net39}
N 1820 -920 2260 -920 {lab=#net23}
N 1820 -1130 2260 -1130 {lab=#net23}
C {sg13g2_nand2_1.sym} 230 -1260 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} 170 -1280 0 0 {name=p1 lab=en_testmode}
C {sg13g2_inv_1.sym} 180 -1140 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 280 -1140 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 180 -1060 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 280 -1060 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} 80 -1140 0 0 {name=p2 lab=trig_in}
C {cap_cmim.sym} 980 -990 0 0 {name=C5
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {sg13_lv_nmos.sym} 960 -910 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 250 -1460 0 0 {name=p5 lab=ctrlBW[4:0]}
C {lab_wire.sym} 940 -910 0 0 {name=p4 sig_type=std_logic lab=ctrlBW[0]}
C {cap_cmim.sym} 820 -990 0 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=2
spiceprefix=X}
C {sg13_lv_nmos.sym} 800 -910 0 0 {name=M2
l=0.13u
w=1u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 780 -910 0 0 {name=p7 sig_type=std_logic lab=ctrlBW[1]}
C {cap_cmim.sym} 660 -990 0 0 {name=C2
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=4
spiceprefix=X}
C {sg13_lv_nmos.sym} 640 -910 0 0 {name=M3
l=0.13u
w=1u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 600 -830 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -910 0 0 {name=p9 sig_type=std_logic lab=ctrlBW[2]}
C {cap_cmim.sym} 500 -990 0 0 {name=C3
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=8
spiceprefix=X}
C {sg13_lv_nmos.sym} 480 -910 0 0 {name=M4
l=0.13u
w=1u
ng=1
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 460 -910 0 0 {name=p11 sig_type=std_logic lab=ctrlBW[3]}
C {cap_cmim.sym} 340 -990 0 0 {name=C4
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=16
spiceprefix=X}
C {sg13_lv_nmos.sym} 320 -910 0 0 {name=M5
l=0.13u
w=1u
ng=1
m=16
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 300 -910 0 0 {name=p13 sig_type=std_logic lab=ctrlBW[4]}
C {sg13g2_inv_1.sym} 1050 -1060 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 1150 -1060 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 1250 -1060 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_nand2_2.sym} 1410 -1100 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_nand2_2.sym} 1590 -1120 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {iopin.sym} 380 -1400 2 0 {name=p3 lab=VDD}
C {iopin.sym} 380 -1370 2 0 {name=p6 lab=VSS}
C {sg13g2_inv_2.sym} 1740 -1120 0 0 {name=x11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 180 -710 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 280 -710 0 0 {name=x13 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_wire.sym} 620 -640 0 0 {name=p15 sig_type=std_logic lab=ctrlBST_DEL[0]}
C {sg13g2_inv_1.sym} 1050 -710 0 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 1150 -710 0 0 {name=x15 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 1250 -710 0 0 {name=x16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_nand2_2.sym} 1410 -750 0 0 {name=x17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13_lv_nmos.sym} 640 -640 0 0 {name=M6
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 480 -640 0 0 {name=M7
l=0.13u
w=1u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 320 -640 0 0 {name=M11
l=0.13u
w=1u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 460 -640 0 0 {name=p10 sig_type=std_logic lab=ctrlBST_DEL[1]}
C {lab_wire.sym} 300 -640 0 0 {name=p12 sig_type=std_logic lab=ctrlBST_DEL[2]}
C {ipin.sym} 250 -1430 0 0 {name=p16 lab=ctrlBST_DEL[2:0]}
C {lab_wire.sym} 570 -520 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {sg13_lv_nmos.sym} 660 -570 1 0 {name=M8
l=1.0u
w=0.6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 500 -570 1 0 {name=M9
l=1.0u
w=0.6u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 340 -570 1 0 {name=M10
l=1.0u
w=0.6u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_inv_1.sym} 1880 -1040 0 0 {name=x18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 1980 -1040 0 0 {name=x19 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2080 -1040 0 0 {name=x20 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2180 -1040 0 0 {name=x21 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2300 -920 0 0 {name=x22 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2400 -920 0 0 {name=x23 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_4.sym} 2500 -920 0 0 {name=x24 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2300 -1040 0 0 {name=x25 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2400 -1040 0 0 {name=x26 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_4.sym} 2500 -1040 0 0 {name=x27 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2300 -1130 0 0 {name=x28 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2400 -1130 0 0 {name=x29 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_4.sym} 2500 -1130 0 0 {name=x30 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 1880 -670 0 0 {name=x31 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 1980 -670 0 0 {name=x32 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2080 -670 0 0 {name=x33 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2180 -670 0 0 {name=x34 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2300 -670 0 0 {name=x35 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2400 -670 0 0 {name=x36 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_4.sym} 2500 -670 0 0 {name=x37 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2300 -760 0 0 {name=x38 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 2400 -760 0 0 {name=x39 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_4.sym} 2500 -760 0 0 {name=x40 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_nand2_2.sym} 2630 -1150 0 0 {name=x41[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 2760 -1150 0 0 {name=x1[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} 250 -1400 0 0 {name=p17 lab=ctrlI[4:0]}
C {ipin.sym} 250 -1370 0 0 {name=p18 lab=ctrlBST[4:0]}
C {lab_wire.sym} 2540 -1190 0 0 {name=p19 sig_type=std_logic lab=ctrlI[4:0]}
C {sg13g2_nand2_2.sym} 2630 -1020 0 0 {name=x2[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 2760 -1020 0 0 {name=x3[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_wire.sym} 2540 -980 0 0 {name=p20 sig_type=std_logic lab=ctrlI[4:0]}
C {sg13g2_nand2_2.sym} 2630 -780 0 0 {name=x4[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 2760 -780 0 0 {name=x5[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_wire.sym} 2540 -820 0 0 {name=p21 sig_type=std_logic lab=ctrlBST[4:0]}
C {sg13g2_nand2_2.sym} 2630 -650 0 0 {name=x6[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 2760 -650 0 0 {name=x7[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_wire.sym} 2540 -610 0 0 {name=p22 sig_type=std_logic lab=ctrlBST[4:0]}
C {sg13g2_nor2_2.sym} 2930 -1170 0 0 {name=x8[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_nor2_2.sym} 2930 -1000 0 0 {name=x42[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_4.sym} 3060 -1170 0 0 {name=x9[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_8.sym} 3160 -1170 0 0 {name=x10[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_16.sym} 3260 -1170 0 0 {name=x11[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_4.sym} 3060 -1000 0 0 {name=x12[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_8.sym} 3160 -1000 0 0 {name=x13[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_16.sym} 3260 -1000 0 0 {name=x14[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_8.sym} 3160 -920 0 0 {name=x15[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_16.sym} 3260 -920 0 0 {name=x16[4:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {opin.sym} 3330 -1170 0 0 {name=p23 lab=VA[4:0]}
C {opin.sym} 3330 -1000 0 0 {name=p24 lab=VB[4:0]}
C {opin.sym} 3330 -920 0 0 {name=p25 lab=en_PA}
C {noconn.sym} 480 -1400 2 0 {name=l1}
C {title-2.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7GHz IR-UWB TX" rev=1.0 lock=false}
