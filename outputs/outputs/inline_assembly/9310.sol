pragma solidity ^0.8.0;
contract C {
   uint MAX_INTEGER;
   uint constant RANGE = 10;
   uint num1;
   uint num2;
   uint r;
   function getOutputs() public returns(uint r2) {
      r = num1 + RANGE;
      r2 = num1 + num2;
   }
   function getOutputs_modified() public returns(uint r3) {
      r = num1 + RANGE;
      r3 = num1 + num2 + num1 + r;
   }
}
