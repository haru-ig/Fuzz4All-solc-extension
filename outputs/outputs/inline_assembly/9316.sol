pragma solidity ^0.8.0;
contract B {
   function getNum1() public view returns(uint) {
      return num1;
   }
   function getNum5() public view returns(uint) {
      return num5;
   }
   uint constant RANGE = 10;
   uint constant MAX_INTEGER = 100;
   uint num1;
   uint num5;
   uint modified;
   uint r;
   function getOutputs(uint x) public returns(uint) {
      num5 = (10000000000 * NUM1 + 10100000000);
      num1 = num1 + x + (x * x) + (3 * x);
      modified = num5 + (num1 + 8) + (num5 + (8 * num5 + 3 * num1 + RANGE) + num5);
      r = modified + x + (x * x) + (3 * x);
   }
}
