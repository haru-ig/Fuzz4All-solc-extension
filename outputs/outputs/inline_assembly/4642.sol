pragma solidity ^0.8.0;
contract emulator12 {
  uint z = 1;
  function test1() public returns(uint) { z = 1 + (z * 701); }
  function test2() public returns(uint) { for (uint i = 0; i < 10000; i ++) { z = 32 + (z * 701); }
  for (uint i = 0; i < 10000; i ++) { z = 3 * z; } } }
