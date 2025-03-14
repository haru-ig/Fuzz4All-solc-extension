pragma solidity ^0.8.0;
contract B {
    uint constant RANGE = 10;
    uint constant MAX_INTEGER = 100;
    uint num1;
    uint num2;
    uint r;
   function getOutputs(uint x) public returns (uint) {
      num1 += 2 * MAX_INTEGER;
      r = num1 + num1 + num2 + num2 + num2 + 2 * num2;
   }
}
