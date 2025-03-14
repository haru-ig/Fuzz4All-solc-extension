pragma solidity ^0.8.0;
contract emulator12 {
  uint z = 1000000000000000000;

  uint  a;
  uint b;
  function test1() public returns(uint) { for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  for (uint ii = a; ii < i + b; ii ++) { b = 1; }
  b = b * a + 1;
  z = z * 1000 + b; }
  function test2() public returns(uint) { for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; } }
  function test3() public returns(uint) { for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  b = a * 1000 + 100;
  for (uint ii = b - 1; ii < b; ii --) { a = 1; }
  z = z * 1000 + a; }
  function test4() public returns(uint) { for (uint ii = 1; ii < 3; ii ++) { for (uint i = 1; i < 6; i ++) { a = i; } }
  z = z * 1000 + a; } }
