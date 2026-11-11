** Generated for: hspiceD
** Generated on: Nov 10 17:35:00 2026
** Design library name: ece555_team_lib
** Design cell name: neuron
** Design view name: schematic


.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0

** Library name: ece555_team_lib
** Cell name: NOR3
** View name: schematic
.subckt NOR3 a b c vdd vss y
xm2 y a vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
xm1 y b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
xm0 y c vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
xm5 net19 a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
xm4 net15 b net19 vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
xm3 y c net15 vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
.ends NOR3
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: NAND
** View name: schematic
.subckt NAND a b vdd vss y
xm1 net1 b vss vss nmos_rvt w=108e-9 l=20e-9 nfin=4
xm0 y a net1 vss nmos_rvt w=108e-9 l=20e-9 nfin=4
xm3 y b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
xm2 y a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
.ends NAND
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: NAND3
** View name: schematic
.subckt NAND3 a b c u vdd vss
xm2 u c vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
xm1 u b vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
xm0 u a vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
xm5 net19 c vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm4 net15 b net19 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm3 u a net15 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
.ends NAND3
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: OAI33
** View name: schematic
.subckt OAI33 a b c d e f vdd vss y
xi4 net4 net10 vdd vss y NAND
xi1 d e f net10 vdd vss NAND3
xi0 a b c net4 vdd vss NAND3
.ends OAI33
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: INV
** View name: schematic
.subckt INV in out vdd vss
xm0 out in vss vss nmos_rvt w=81e-9 l=20e-9 nfin=3
xm1 out in vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
.ends INV
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: AOI21
** View name: schematic
.subckt AOI21 j m q__ u vdd vss
xm2 net7 m vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
xm1 q__ u net7 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
xm0 q__ j vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm5 net2 m vdd vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
xm4 net2 u vdd vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
xm3 q__ j net2 vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
.ends AOI21
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: NOR
** View name: schematic
.subckt NOR a b vdd vss y
xm1 y a vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm0 y b vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm3 net11 b vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
xm2 y a net11 vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends NOR
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: MAJ_0
** View name: schematic
.subckt MAJ_0 c d e h vdd vss
xm2 net7 e vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm1 h d net7 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm0 h c vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm5 net15 c vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
xm4 h e net15 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
xm3 h d net15 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
.ends MAJ_0
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: NAND2_2_2
** View name: schematic
.subckt NAND2_2_2 g h vdd vss x
xm1 x h vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
xm0 x g vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
xm3 net11 h vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
xm2 x g net11 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
.ends NAND2_2_2
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: NOR2_2_1
** View name: schematic
.subckt NOR2_2_1 a b g vdd vss
xm1 g b vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm0 g a vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
xm3 net11 a vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
xm2 g b net11 vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends NOR2_2_1
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: MAJ
** View name: schematic
.subckt MAJ a b c d e vdd vss x
xi2 c d e net9 vdd vss MAJ_0
xi3 net3 net9 vdd vss x NAND2_2_2
xi1 a b net3 vdd vss NOR2_2_1
.ends MAJ
** End of subcircuit definition.

** Library name: ece555_team_lib
** Cell name: neuron
** View name: schematic
xi7 net27 net36 bs vdd vss net114 NOR3
xi6 net35 ws1 net12 xs1 net31 net7 vdd vss net36 OAI33
xi5 net11 ws0 net1 xs0 net22 net2 vdd vss net27 OAI33
xi40 ws1 net31 vdd vss INV
xi39 xs1 net35 vdd vss INV
xi38 ws0 net22 vdd vss INV
xi37 xs0 net11 vdd vss INV
xi41 bl net6 vdd vss INV
xi33 net124 net130 vdd vss INV
xi31 net119 net97 vdd vss INV
xi30 net118 net92 vdd vss INV
xi28 net102 net106 vdd vss INV
xi27 net20 net101 vdd vss INV
xi26 net15 net100 vdd vss INV
xi19 wl1 net12 vdd vss INV
xi18 xl1 net7 vdd vss INV
xi17 wl0 net1 vdd vss INV
xi16 xl0 net2 vdd vss INV
xi11 net64 z1 vdd vss INV
xi8 net114 net41 net5 net39 vdd vss AOI21
xi32 net103 bl vdd vss net124 NAND
xi29 net53 net6 vdd vss net102 NAND
xi24 net19 net8 vdd vss net119 NAND
xi23 net3 net18 vdd vss net118 NAND
xi21 net19 net18 vdd vss net20 NAND
xi20 net3 net8 vdd vss net15 NAND
xi10 net114 net41 vdd vss net64 NAND
xi3 xl1 wl1 vdd vss net18 NAND
xi2 xl0 wl0 vdd vss net19 NAND
xi34 net106 net130 vdd vss net49 NOR
xi25 net92 net97 vdd vss net103 NOR
xi22 net100 net101 vdd vss net53 NOR
xi9 net49 net5 vdd vss z0 NOR
xi1 net7 net12 vdd vss net8 NOR
xi0 net2 net1 vdd vss net3 NOR
xi42 net19 net18 net6 net19 net18 vdd vss net41 MAJ
xi43 net27 net36 bs net27 net36 vdd vss net39 MAJ
.END
