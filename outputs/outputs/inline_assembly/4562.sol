pragma solidity ^0.8.0;
contract emulator2 {
  uint y; uint x=10000000000000; uint z;
  function test() public returns(uint) { uint y = 10000000000000; x = 100000000000000; for (uint i = 0; i < 100; i ++) { y = y * x; x = x + 1; } z = y * x; return 0; }
}
