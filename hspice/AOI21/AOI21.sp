** Library name: ECE555
** Cell name: AOI21
** View name: schematic
.subckt AOI21 j m u q__ vss vdd
mn2 net7 m vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn1 q__ u net7 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn0 q__ j vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mp5 net2 m vdd vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
mp4 net2 u vdd vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
mp3 q__ j net2 vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
.ends AOI21
