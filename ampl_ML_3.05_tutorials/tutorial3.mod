param n;
param m;
set J := {1..n};  #set of decision variables
set I := {1..m};  #set of constraints

param C {J} ;  #objective function coefficients
param A {I,J} ;  #constraint coefficients matrix
param B {I} ;  #rhs of the constraints

var X {J} >=0;  #decision variables

maximize z:  sum {j in J} C[j] * X[j];

s.t. Constraint {i in I}:
	sum {j in J} A[i,j] * X[j] <= B[i];