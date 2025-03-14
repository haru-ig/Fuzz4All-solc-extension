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
      x += 2;
      num1 += 1;
      num2 = x + 1;
      r = num1 + num2;
   }
  function getOutputs_bad(uint x) public returns(uint) {
      num1 += 1;
      num2 = x + 1;
      r = r + (num1 + num2) + (1 + num1) +(1 + 1) + 1;
   }
}
