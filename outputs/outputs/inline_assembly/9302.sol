pragma solidity ^0.8.0;
contract B {
   uint public MIN_SAFE_INT;
   uint constant RANGE = 10;
   uint public num1;
   uint public num2;
   uint public r;
   function setInputs(uint a, uint b) public {
      num1 = a;
      num2 = b;
   }
   function getOutputs() public returns(uint r2) {
      r2 = num1 + num2 + (num1 * num2);
      r = num1 + num2;
   }
}
