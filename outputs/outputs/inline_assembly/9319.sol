pragma solidity ^0.8.0;
contract A {
   function getNum1() public returns(uint) {
      num1 += 2;
      return num1;
   }
   function getNum2() public returns(uint) {
      return num2;
   }
   uint constant RANGE = 10;
   uint constant MAX_INTEGER = 100;
   uint num1;
   uint num2;
   uint r;
   function getOutputs(uint x) public returns(uint) {
      num1 = MAX_INTEGER / 1000;
      r = num1 + num2 + 2 * num1 + (num1 * num2) +1;
   }
}
