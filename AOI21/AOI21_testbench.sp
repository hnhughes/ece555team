** AOI21 testbench (ASAP7, 0.9V, FO4 load)
** Q' = (J + M*U)'
.GLOBAL vss! vdd!
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear
+ INGOLD=2 POST=1

.include "/srv/auto/apps/asap7pdk/2022-fixed/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"
.include "AOI21.sp"

** ---------- unit inverter for FO4 load (N nfin=1, P nfin=2) ----------
.subckt INV_UNIT in out
mn out in vss! vss! nmos_rvt w=27e-9 l=20e-9 nfin=1
mp out in vdd! vdd! pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends INV_UNIT

** ---------- supplies ----------
v1 vdd! 0 0.9v
v2 vss! 0 0v

** ---------- DUT (port order: j m u q__ vss vdd) ----------
X1 j m u out vss! vdd! AOI21

** ---------- FO4 load ----------
XL1 out ld1 INV_UNIT
XL2 out ld2 INV_UNIT
XL3 out ld3 INV_UNIT
XL4 out ld4 INV_UNIT

** ---------- Case 1: worst case series path (J=0, M=1, U switches) ----------
vj j 0 0v
vm m 0 0.9v
vu u 0 pulse(0 0.9 100p 25p 25p 475p 1n)

.TRAN 1p 2n

.MEASURE TRAN tHL   TRIG v(u)   VAL=0.45 RISE=1 TARG v(out) VAL=0.45 FALL=1
.MEASURE TRAN tLH   TRIG v(u)   VAL=0.45 FALL=1 TARG v(out) VAL=0.45 RISE=1
.MEASURE TRAN tfall TRIG v(out) VAL=0.81 FALL=1 TARG v(out) VAL=0.09 FALL=1
.MEASURE TRAN trise TRIG v(out) VAL=0.09 RISE=1 TARG v(out) VAL=0.81 RISE=1

** ---------- Case 2: J switches (M=0, U=0) ----------
.ALTER case2_J_switch
vj j 0 pulse(0 0.9 100p 25p 25p 475p 1n)
vm m 0 0v
vu u 0 0v
.MEASURE TRAN tHL   TRIG v(j)   VAL=0.45 RISE=1 TARG v(out) VAL=0.45 FALL=1
.MEASURE TRAN tLH   TRIG v(j)   VAL=0.45 FALL=1 TARG v(out) VAL=0.45 RISE=1
.MEASURE TRAN tfall TRIG v(out) VAL=0.81 FALL=1 TARG v(out) VAL=0.09 FALL=1
.MEASURE TRAN trise TRIG v(out) VAL=0.09 RISE=1 TARG v(out) VAL=0.81 RISE=1

** ---------- Case 3: functional test, all 8 combinations ----------
.ALTER case3_truth_table
vj j 0 pulse(0 0.9 2n   25p 25p 1975p 4n)
vm m 0 pulse(0 0.9 1n   25p 25p 975p  2n)
vu u 0 pulse(0 0.9 500p 25p 25p 475p  1n)
.TRAN 1p 4n

.end
