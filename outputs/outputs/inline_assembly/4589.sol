pragma solidity ^0.8.0;
contract emulator2 {
  uint z; uint x;
  function test() public returns(uint) { (x, z) = (10000000000000000, 10000000000000000); for (uint i = 100; i < 4000; i ++) { (x, z) = (x + 1, z * x); x = x - 1; } (x, z) = (x + 1, z * x); } }
