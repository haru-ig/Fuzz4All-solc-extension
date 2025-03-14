pragma solidity ^0.8.0;
contract B {
    uint constant RANGE = 10;
    uint num1;
    uint num2;
    uint r;
   uint constant MAX_INTEGER = 100;
   uint constant MIN_INTEGER = -100;
    function getOutputs(uint x) public returns (uint) {
      num1 = MIN_INTEGER;
      num2 = MIN_INTEGER;
      r = num1 + num2 + 2 * num1 + (num1 * num2) +1;
   }
}
