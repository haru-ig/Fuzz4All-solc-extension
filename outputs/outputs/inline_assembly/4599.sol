pragma solidity ^0.8.0;
contract emulator7 {
  uint z;
  function test1() public returns(uint) { z = 10000000000000000; for (uint i = 100; i < 4000; i ++) { z = z * 1000 + 100; }  z = z * 1000 + 100; }
  function test2() public returns(uint) {  for (uint i = 100; i < 4000; i ++) { z = z * 1000 + 100; }  z = z * 1000 + 100; } }
