pragma solidity ^0.8.0;
contract emulator8 {
  uint z;
  function test1() public returns(uint) {
    uint a;
    for (uint i = 100; i < 4000; i ++) {
      a = a + 100;
    }
    z = a * 10000;
    return uint(z);
  }
  function test2() public returns(uint) {
    uint a;
    for (uint i = 100; i < 4000; i++) {
      a = a + 100 - 2;
    }
    return uint(a * 2);
  }
  function test3() public returns(uint) {
    uint a;
    for (uint i = 100; i < 4000; i++)
      a = a / 2 + 1 * 3;
    return uint(a);
  }
  function test4() public returns(uint) {
    uint a;
    for (uint i = 100; i < 4000; i ++) {
      a = a / 2 + 1 * 3;
    }
    for (uint i = 100; i < 4000; i ++)
      a += 1 * 3;
    return uint(a / 2; }
  function test5() public returns(uint) {
    uint a;
    for (uint i = 100; i < 4000; i ++) {
      a = a / 2 + 1 * 3;
      if (a < 1) { return uint(a) + z; }
      else {  }
    }
    return uint(a % 2; } }
