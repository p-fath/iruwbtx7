v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1160 -910 1180 -910 {lab=#net1}
N 1260 -910 1280 -910 {lab=#net2}
N 1360 -910 1380 -910 {lab=en_out[3:0]}
N 1060 -910 1080 -910 {lab=#net3}
N 920 -930 940 -930 {lab=ctrlG[3:0]}
N 920 -890 940 -890 {lab=en_in}
C {sg13g2_nand2_2.sym} 1000 -910 0 0 {name=x10[3:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 1120 -910 0 0 {name=x9[3:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_8.sym} 1220 -910 0 0 {name=x1[3:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_16.sym} 1320 -910 0 0 {name=x11[3:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} 920 -930 0 0 {name=p6 lab=ctrlG[3:0]}
C {ipin.sym} 920 -890 0 0 {name=p1 lab=en_in}
C {opin.sym} 1380 -910 0 0 {name=p2 lab=en_out[3:0]}
C {title-3.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7GHz IR-UWB TX" rev=1.0 lock=false}
C {iopin.sym} 1010 -1070 2 0 {name=p16 lab=VDD}
C {iopin.sym} 1090 -1070 2 0 {name=p3 lab=VSS}
