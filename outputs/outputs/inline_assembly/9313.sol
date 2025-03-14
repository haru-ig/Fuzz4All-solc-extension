pragma solidity ^0.8.0;
contract B {
   function getNum1() public view returns(uint) {
      return num1;
   }
   function getNum2() public view returns(uint) {
      return num2;
   }
   uint constant RANGE = 10;
   uint constant MAX_INTEGER = 100;
   uint num1;
   uint num2;
   uint r;
   function getOutputs(uint x) public returns(uint) {
      num1 = x;
      num2 = 2 * x + 3;
      r = num1 + num2 + (num1 * num2) + (3 * x);
   }
   function getOutputs_modified(uint x) public returns(uint) {
      num1 = x;
      num2 = 2 * x + 3;
      r = num1 + num2 + num1 + RANGE + (RANGE * num2 + (2 * x + 5 * RANGE));
   }
}
