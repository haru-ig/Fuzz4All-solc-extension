pragma solidity ^0.8.0;
contract emulator13 {
  uint z = 1;
  function test1() public returns(uint) { z = 1 + (z * 701); }
  function test2() public returns(uint) { z = z + 1; }
  function test3() public returns(uint) { z = 701; } }
