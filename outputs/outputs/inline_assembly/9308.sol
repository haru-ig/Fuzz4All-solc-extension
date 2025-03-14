pragma solidity ^0.8.0;
contract B {
   uint MAX_INTEGER;
   uint constant RANGE = 10;
   uint public num1;
   uint public num2;
   uint public r;
   function setInputs(uint a, uint b) public {
      num1 = a;
      num2 = b;
   }
   function getOutputs() public returns(uint r2) {
      r2 = max(num1,num2) + min(num1,num2) + (num1 * num2);
      r = max(num1,num2) + min(num1,num2) + num1 + r;
   }
   function getOutputs_modified() public returns(uint r3) {
      uint min = num1;
      uint max = num2;
      uint x1 = min;
      uint x2 = max;
      uint num1 = num1 + num2;
      uint r = x1 + x2;
      min = min + x1;
      max = max + x2;
      uint y = max(min,num1) + min(min,num1) + (num1 * num2);
      r3 = min(min,num1) + num1 + num1 + r;
   }
}
