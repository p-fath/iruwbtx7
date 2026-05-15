v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {L=393pH
Q=7.5
fR=94GHz} 980 -690 0 0 0.4 0.4 {}
N 1010 -850 1030 -850 {lab=LC}
N 1010 -890 1010 -850 {lab=LC}
N 990 -850 1010 -850 {lab=LC}
N 1090 -850 1110 -850 {lab=#net1}
N 910 -850 930 -850 {lab=#net2}
N 830 -850 850 -850 {lab=LA}
N 830 -850 830 -780 {lab=LA}
N 1170 -850 1190 -850 {lab=LB}
N 1190 -850 1190 -780 {lab=LB}
C {ind.sym} 960 -850 1 0 {name=L1
m=1
value=200p
footprint=1206
device=inductor}
C {ind.sym} 1060 -850 1 0 {name=L2
m=1
value=200p
footprint=1206
device=inductor}
C {iopin.sym} 1010 -890 3 0 {name=p16 lab=LC}
C {res.sym} 880 -850 1 0 {name=R1
value=1.65
footprint=1206
device=resistor
m=1}
C {res.sym} 1140 -850 1 0 {name=R2
value=1.65
footprint=1206
device=resistor
m=1}
C {iopin.sym} 830 -780 1 0 {name=p1 lab=LA}
C {iopin.sym} 1190 -780 1 0 {name=p2 lab=LB}
C {title-3.sym} 0 0 0 0 {name=l41 author="Patrick Fath" page=1 pages=1 title="7 GHz IR-UWB TX" rev=1.0 lock=false}
