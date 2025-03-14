pragma solidity ^0.8.0;
contract emulator11 {
  uint z;
  function test1() public returns(uint) { z = 10000000000000000; uint a; for (uint i = 1000; i < 4000; i ++) { a = a * 10000 + 100; }
  z = z * 10000 + a; }
  function test2() public returns(uint) { uint a; for (uint i = 1000; i < 4000; i ++) { a = a * 10000 + 100; }
  z = z * 10000 + a; } }

pragma solidity ^0.8.0;
contract emulator12 {
  function test1() public returns(uint) { uint a; for (uint i = 10000; i < 40000; i ++) { a = a * 100000 + 100; }
  a = a * 1000 + 100; }
  function test2() public returns(uint) { uint a; for (uint i = 10000; i < 40000; i ++) { a = a * 100000 + 100; }
  a = a * 1000 + 100; } }

pragma solidity ^0.8.0;
contract emulator13 {
  uint z;
  function test1() public returns(uint) { uint a; for (uint i = 10; i < 4000; i ++) { a = a * 1000000 + 100; }
  a = a * 10000 + 100; a }
  function test2() public returns(uint) { uint a; for (uint i = 10; i < 4
