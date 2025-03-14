pragma solidity ^0.8.0;
contract emulator11 {
  uint z;
  function test1() public returns(uint) { z = 10000000000000000; uint a; for (uint i = 100; i < 40000000; i ++) { a = a * 1000 + 100; }  }
  function test2() public returns(uint) { uint a; for (uint i = 100; i < 40000000; i ++) { a = a * 1000 + 100; }  }
  function test3() public returns(uint) { uint a; for (uint i = 1000; i < 40000000000; i ++) { a = a * 1000 + 100; } }
  function test4() public returns(uint) { uint a; for (uint i = 1000; i < 40000000000; i ++) { a = a * 1000 + 100; } }
  function finalize() public view returns(uint)
  { if (z >= 10000000000000000) {z = z / 10000000000000000;} if (z >= 1000000000000000) { z = z / 1000000000000000;} if (z >= 100000000000000000) { return z / 10000000000000000; } return z; }   } }


pragma solidity ^0.8.0;
contract emulator12 {
  uint z;
