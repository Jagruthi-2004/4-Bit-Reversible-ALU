OPENQASM 2.0;
include "qelib1.inc";

qreg q[27];
creg c[8];

x q[16];
x q[17];
x q[18];
ccx q[16], q[17], q[21];
ccx q[18], q[19], q[22];
ccx q[21], q[22], q[20];
x q[0];
x q[1];
x q[2];
x q[3];
x q[4];
x q[5];
x q[6];
x q[7];
ccx q[0], q[4], q[23];
ccx q[1], q[5], q[24];
ccx q[2], q[6], q[25];
ccx q[3], q[7], q[26];
ccx q[23], q[16], q[8];
ccx q[24], q[16], q[9];
ccx q[25], q[16], q[10];
ccx q[26], q[16], q[11];
ccx q[3], q[7], q[26];
ccx q[2], q[6], q[25];
ccx q[1], q[5], q[24];
ccx q[0], q[4], q[23];
ccx q[16], q[17], q[21];
ccx q[18], q[19], q[22];
ccx q[21], q[22], q[20];
measure q[8] -> c[0];
measure q[9] -> c[1];
measure q[10] -> c[2];
measure q[11] -> c[3];


// col (0,0,0,1,2,3,4,4,4,4,4,4,4,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,23,24)
