** Design library name: ECE555
** Cell name: AOI22
** View name: schematic
.subckt AOI22 vss vdd a b c d z
mn3 net11 d vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn2 z c net11 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn1 net3 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn0 z a net3 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mp5 net19 b vdd vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
mp4 net19 a vdd vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
mp7 z d net19 vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
mp6 z c net19 vdd pmos_rvt w=108e-9 l=20e-9 nfin=4
.ends AOI22
