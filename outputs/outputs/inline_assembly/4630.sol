pragma solidity ^0.8.0;

contract emulator13 {
  uint z = 100000000000000000;
  uint  a;
  function test1() public returns(uint) { (z = z * 1000, z = a + z * 1000);
  z = z * 1000 + a; }
  }
