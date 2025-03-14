pragma solidity ^0.8.0;
contract emulator21 {
  uint z = 1000000000000000000;
  uint  a;
  function test1() public { a = 100; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a; }
  function test2() public { a = a * 1000 + 100; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a; } }
