pragma solidity ^0.8.0;
contract emulator12 {
  uint z = 100000000000000000;
  uint  a;
  function test1() public returns(uint) { a = a * 1000 + 100; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a; }
  function test2() public returns(uint) { z = 500000000000000000; a = a * 1000 + 100; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a; } }
