OPENQASM 2.0;
include "qelib1.inc";

qreg q[23];
creg c[8];

x q[16];
x q[17];
x q[18];
x q[19];
ccx q[16], q[17], q[21];
ccx q[18], q[19], q[22];
ccx q[21], q[22], q[20];
cx q[0], q[8];
cx q[1], q[9];
cx q[2], q[10];
cx q[3], q[11];
cx q[16], q[8];
cx q[16], q[9];
cx q[16], q[10];
cx q[16], q[11];
ccx q[16], q[17], q[21];
ccx q[18], q[19], q[22];
ccx q[21], q[22], q[20];
measure q[8] -> c[0];
measure q[9] -> c[1];
measure q[10] -> c[2];
measure q[11] -> c[3];
