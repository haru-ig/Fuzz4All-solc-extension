pragma solidity ^0.8.0;
contract emulator11 {
  uint z = 10000000000000000;
  function test1() public returns(uint) { for (uint i = 100; i < 4000; i ++) { z = z * 1000 + 1000; }
  z = z * 2000 + 5000; }
  function test2() public returns(uint) { for (uint i = 100; i < 4000; i ++) { z = z * 1000 + 1000; }
  z = z * 2000 + 5000;  } }
