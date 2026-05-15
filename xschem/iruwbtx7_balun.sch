v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {L1=823pH
Q1=8.3
fR1=19GHz

L2=967pH
Q2=5.9
fR2=19GHz

k=0.74} 1100 -1170 0 0 0.4 0.4 {}
N 820 -1010 840 -1010 {lab=LC}
N 820 -1050 820 -1010 {lab=LC}
N 800 -1010 820 -1010 {lab=LC}
N 900 -1010 920 -1010 {lab=#net1}
N 720 -1010 740 -1010 {lab=#net2}
N 640 -1010 660 -1010 {lab=LA}
N 640 -1010 640 -940 {lab=LA}
N 980 -1010 1000 -1010 {lab=LB}
N 1000 -1010 1000 -940 {lab=LB}
N 800 -1130 840 -1130 {lab=#net3}
N 900 -1130 920 -1130 {lab=#net4}
N 720 -1130 740 -1130 {lab=#net5}
N 640 -1130 660 -1130 {lab=LD}
N 980 -1130 1000 -1130 {lab=LE}
N 1000 -1160 1000 -1130 {lab=LE}
N 640 -1160 640 -1130 {lab=LD}
C {ind.sym} 770 -1010 1 0 {name=L1
m=1
value=411p
footprint=1206
device=inductor}
C {ind.sym} 870 -1010 1 0 {name=L2
m=1
value=411p
footprint=1206
device=inductor}
C {iopin.sym} 820 -1050 3 0 {name=p16 lab=LC}
C {res.sym} 690 -1010 1 0 {name=R1
value=2.18
footprint=1206
device=resistor
m=1}
C {res.sym} 950 -1010 1 0 {name=R2
value=2.18
footprint=1206
device=resistor
m=1}
C {iopin.sym} 640 -940 1 0 {name=p1 lab=LA}
C {iopin.sym} 1000 -940 1 0 {name=p2 lab=LB}
C {iopin.sym} 640 -1160 1 1 {name=p3 lab=LD}
C {iopin.sym} 1000 -1160 1 1 {name=p4 lab=LE}
C {ind.sym} 770 -1130 1 0 {name=L3
m=1
value=483p
footprint=1206
device=inductor}
C {ind.sym} 870 -1130 1 0 {name=L4
m=1
value=483p
footprint=1206
device=inductor}
C {res.sym} 690 -1130 1 0 {name=R3
value=3.6
footprint=1206
device=resistor
m=1}
C {res.sym} 950 -1130 1 0 {name=R4
value=3.6
footprint=1206
device=resistor
m=1}
C {k.sym} 760 -1060 1 1 {name=K1 K=0.74 L1=L1 L2=L3}
C {k.sym} 880 -1060 3 0 {name=K2 K=0.74 L1=L2 L2=L4}
C {title-3.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7GHz IR-UWB TX" rev=1.0 lock=false}
