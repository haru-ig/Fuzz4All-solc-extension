pragma solidity ^0.8.0;
contract C {
    uint constant RANGE = 10;
    uint constant MAX_INTEGER = 100;
    uint num1;
    uint num2;
    uint r;
    function getOutputs(uint x) public returns (uint) {
      r = (num1 + num2) +  max(num1, num2) + (x - (min(num1, num2)));
   }
   uint max(uint x, uint x2) internal pure returns (uint) {
     return uint(x) > uint(x2)? x : x2;
   }
   uint min(uint x, uint x2) internal pure returns (uint) {
     return uint(x) > uint(x2)? x2 : x;
   }
}
