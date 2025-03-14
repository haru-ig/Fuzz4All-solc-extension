pragma solidity ^0.8.0;
contract C {
  function f(uint[10] memory in) public pure returns (uint p) {
   for (uint i = 0; i < 10; ++i) {
   p += in[i];
   }
  }
}
