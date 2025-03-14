pragma solidity ^0.8.0;
contract emulator10 {
  uint z = 10000000000000000;
  function test1() public returns(uint) { z = 10000000000000000; uint a; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a; }
  function test2() public returns(uint) { uint a; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a; } }
