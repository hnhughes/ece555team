** Library name: ECE555
** Cell name: INV1
** View name: schematic
.subckt INV1 in out
mn0 out in vss vss nmos_rvt w=81e-9 l=20e-9 nfin=3
mp1 out in vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
.ends INV1

