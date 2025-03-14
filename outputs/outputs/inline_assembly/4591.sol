pragma solidity ^0.8.0;
contract emulator5 {
  uint z; uint x;
  function test() public returns(uint) { for (uint i = 50; i < 1500; i ++) { (x, z) = (x + 25, z * x); x = x - 1; } (x, z) = (x + 25, z * x); } }
