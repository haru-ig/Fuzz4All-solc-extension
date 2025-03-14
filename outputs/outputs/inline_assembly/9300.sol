pragma solidity ^0.8.0;
contract C is B {
   constructor(uint a, uint b) public B(a, b) {}
   function setInputs(uint a, uint b) public {
      num1 = num2;
      num2 = a;
      num1 = a;
      num1 = a;
      num1 = a;
      num1 = a;
      num1 = a;
      num2 = b;
      num1 = a;
      num2 = b;
      num1 = a;
      num2 = a;
      num1 = a;
      num2 = b;
      num1 = a;
      num2 = a;
      num1 = b;
      num2 = a;
   }
   function getOutputs() public returns(uint r2) {
      r2 = num1 + num2 + (num1 * num2);
      r = num1 + num2;
   }
   function getOutputs_modified() public returns(uint r3) {
      uint dumbnum1 = num1;
      uint dumbnum2 = num2;
      uint temp1 = dumbnum1;
      uint temp2 = dumbnum2;
      uint dumbnum2_1 = temp1 + temp2 + (temp1 * temp2);
      uint dumbnum2_2 = num1 + num2;
      uint dumbnum2_3 = dumbnum1 + dumbnum2_2;
      dumbnum1 = dumbnum1 + dumbnum2_3;
      dumbnum1 = dumbnum1 + dumbnum2_3;
      dumbnum1 = dumbnum1 + dumbnum2_3;
      dumbnum1 = dumbnum1 + dumbnum2_
