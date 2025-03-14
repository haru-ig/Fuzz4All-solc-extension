pragma solidity ^0.8.0;
contract B {
   uint MAX_INTEGER;
   uint constant RANGE = 10;
   uint num1;
   uint num2;
   uint r;
   function getOutputs() public returns(uint r2) {
      r = num1 + num2 + MAX_INTEGER;
      r2 = num1 * num2;
   }
   function getOutputs_modified() public returns(uint r3) {
      r = num1 + num2 + RANGE * MAX_INTEGER;
      r3 = num1 + RANGE * MAX_INTEGER;
   }
}
contract C is B {
   uint constant RANGE = 10;
   uint num3;
   function getOutputs() public returns(uint r2) {
      r = num1 + num2 + MAX_INTEGER;
      num3 ^= RANGE;
      r2 = num1 * num2;
   }
   function getOutputs_modified() public returns(uint r3) {
      r = num1 + num2 + RANGE * MAX_INTEGER;
      r3 = num1 + RANGE * MAX_INTEGER + RANGE;
   }
}
