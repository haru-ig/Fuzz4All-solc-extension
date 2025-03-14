pragma solidity ^0.8.0;
contract emulator3 {
  uint z;
  function test1() public { z = 100000000000000000; for(uint i = 100; i < 4000; i ++) { z = z * 1000 + 100; } z = z * 1000 + 100;}
  function test2() public { for(uint i = 100; i < 4000; i ++) { z = z * 1000 + 100; } z = z * 1000 + 100;} }
