pragma solidity ^0.8.0;
contract emulator {
  uint z;
  uint x;
  function test() public returns(uint) { z = 2; x = 10000000000000000; for (uint i = 1000000; i < 800001; i ++) { (z, x) = (x + 2, z * x); x = x - 2; } (z, x) = (x + 2, z * x); } }
