v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {2mA} 1240 -800 0 0 0.4 0.4 {}
T {4mA} 1120 -800 0 0 0.4 0.4 {}
T {8mA} 990 -800 0 0 0.4 0.4 {}
T {16mA} 860 -800 0 0 0.4 0.4 {}
T {1mA} 720 -800 0 0 0.4 0.4 {}
N 1270 -970 1300 -970 {lab=VSS}
N 1300 -970 1300 -890 {lab=VSS}
N 1270 -890 1300 -890 {lab=VSS}
N 1300 -890 1300 -820 {lab=VSS}
N 1270 -820 1300 -820 {lab=VSS}
N 1270 -860 1270 -820 {lab=VSS}
N 1270 -940 1270 -920 {lab=#net1}
N 1220 -890 1230 -890 {lab=en_G[0]}
N 1220 -890 1220 -830 {lab=en_G[0]}
N 1210 -970 1230 -970 {lab=#net2}
N 1270 -1050 1270 -1000 {lab=ibias}
N 1140 -970 1170 -970 {lab=VSS}
N 1170 -970 1170 -890 {lab=VSS}
N 1140 -890 1170 -890 {lab=VSS}
N 1170 -890 1170 -820 {lab=VSS}
N 1140 -820 1170 -820 {lab=VSS}
N 1140 -860 1140 -820 {lab=VSS}
N 1140 -940 1140 -920 {lab=#net3}
N 1090 -890 1100 -890 {lab=en_G[1]}
N 1090 -890 1090 -830 {lab=en_G[1]}
N 1080 -970 1100 -970 {lab=#net2}
N 1140 -1050 1140 -1000 {lab=ibias}
N 1010 -970 1040 -970 {lab=VSS}
N 1040 -970 1040 -890 {lab=VSS}
N 1010 -890 1040 -890 {lab=VSS}
N 1040 -890 1040 -820 {lab=VSS}
N 1010 -820 1040 -820 {lab=VSS}
N 1010 -860 1010 -820 {lab=VSS}
N 1010 -940 1010 -920 {lab=#net4}
N 960 -890 970 -890 {lab=en_G[2]}
N 960 -890 960 -830 {lab=en_G[2]}
N 950 -970 970 -970 {lab=#net2}
N 1010 -1050 1010 -1000 {lab=ibias}
N 890 -970 920 -970 {lab=VSS}
N 920 -970 920 -890 {lab=VSS}
N 890 -890 920 -890 {lab=VSS}
N 920 -890 920 -820 {lab=VSS}
N 890 -820 920 -820 {lab=VSS}
N 890 -860 890 -820 {lab=VSS}
N 890 -940 890 -920 {lab=#net5}
N 840 -890 850 -890 {lab=en_G[3]}
N 840 -890 840 -830 {lab=en_G[3]}
N 830 -970 850 -970 {lab=#net2}
N 890 -1050 890 -1000 {lab=ibias}
N 1210 -970 1210 -930 {lab=#net2}
N 1080 -930 1210 -930 {lab=#net2}
N 830 -970 830 -930 {lab=#net2}
N 950 -970 950 -930 {lab=#net2}
N 830 -930 950 -930 {lab=#net2}
N 1080 -970 1080 -930 {lab=#net2}
N 950 -930 1080 -930 {lab=#net2}
N 1170 -820 1270 -820 {lab=VSS}
N 1040 -820 1140 -820 {lab=VSS}
N 920 -820 1010 -820 {lab=VSS}
N 760 -820 890 -820 {lab=VSS}
N 1140 -1050 1270 -1050 {lab=ibias}
N 1010 -1050 1140 -1050 {lab=ibias}
N 890 -1050 1010 -1050 {lab=ibias}
N 890 -1090 890 -1050 {lab=ibias}
N 800 -970 830 -970 {lab=#net2}
N 830 -1020 830 -970 {lab=#net2}
N 760 -1020 830 -1020 {lab=#net2}
N 760 -1020 760 -1000 {lab=#net2}
N 760 -1040 760 -1020 {lab=#net2}
N 760 -940 760 -920 {lab=#net6}
N 760 -860 760 -820 {lab=VSS}
N 740 -970 760 -970 {lab=VSS}
N 740 -890 740 -820 {lab=VSS}
N 740 -820 760 -820 {lab=VSS}
N 740 -890 760 -890 {lab=VSS}
N 740 -970 740 -890 {lab=VSS}
N 800 -890 810 -890 {lab=en_ref}
N 760 -1120 760 -1100 {lab=VDD}
C {sg13_lv_nmos.sym} 1250 -970 0 0 {name=M1
l=0.5u
w=80.0u
ng=10
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 1250 -890 0 0 {name=M2
l=0.13u
w=30.0u
ng=10
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1220 -890 3 0 {name=p5 sig_type=std_logic lab=en_G[0]}
C {sg13_lv_nmos.sym} 1120 -970 0 0 {name=M3
l=0.5u
w=80.0u
ng=10
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 1120 -890 0 0 {name=M4
l=0.13u
w=30.0u
ng=10
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1090 -890 3 0 {name=p1 sig_type=std_logic lab=en_G[1]}
C {sg13_lv_nmos.sym} 990 -970 0 0 {name=M5
l=0.5u
w=80.0u
ng=10
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 990 -890 0 0 {name=M6
l=0.13u
w=30.0u
ng=10
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 960 -890 3 0 {name=p2 sig_type=std_logic lab=en_G[2]}
C {sg13_lv_nmos.sym} 870 -970 0 0 {name=M7
l=0.5u
w=80.0u
ng=10
m=16
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 870 -890 0 0 {name=M8
l=0.13u
w=30.0u
ng=10
m=16
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 840 -890 3 0 {name=p3 sig_type=std_logic lab=en_G[3]}
C {iopin.sym} 890 -1090 3 0 {name=p16 lab=ibias}
C {sg13_lv_nmos.sym} 780 -970 0 1 {name=M9
l=0.5u
w=80.0u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} 780 -890 0 1 {name=M10
l=0.13u
w=30.0u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 810 -890 3 0 {name=p6 lab=en_ref}
C {iopin.sym} 740 -820 2 0 {name=p9 lab=VSS}
C {rppd.sym} 760 -1070 0 0 {name=R1
w=1.7e-6
l=6.3e-6
model=rppd
body=VSS
spiceprefix=X
b=0
m=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {iopin.sym} 760 -1120 3 0 {name=p4 lab=VDD}
C {ipin.sym} 1060 -1100 0 0 {name=p7 lab=en_G[3:0]}
C {title-3.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7 GHz IR-UWB TX" rev=1.0 lock=false}
