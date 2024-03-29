pragma circom 2.0.0;

template Multiplier2 () {

   signal input a;
   signal input b;
   signal output Q;

   component andGate = AND();
   component notGate = NOT();
   component orGate = OR();

   // Logic of circuits
   andGate.a <== a;
   andGate.b <== b;

   notGate.in <== b;

   orGate.a <== andGate.out;
   orGate.b <== notGate.out;
   Q <== orGate.out;

}

template OR(){
   signal input a;
   signal input b;
   signal output out;
   out <== a+b-a*b;
}

template NOT(){
   signal input in;
   signal output out;
   out <== 1+in-2*in;
}

template AND(){
   signal input a;
   signal input b;
   signal output out;
   out <== a*b;
}

component main = Multiplier2();
