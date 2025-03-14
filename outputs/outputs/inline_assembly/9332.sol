pragma solidity ^0.8.0;
contract C {
    uint constant RANGE = 10;
    uint constant MAX_INTEGER = 100;
    uint num1;
    uint num2;
    uint r;
   function getOutputs(uint x) public returns (uint) {
      num1 = 10 * MAX_INTEGER / 1000000000;
      r = num1 + num2 + (num1 * num2) +num1 +(1 + (num2 * r)));
   }
}
