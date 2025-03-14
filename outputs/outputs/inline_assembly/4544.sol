pragma solidity ^0.8.0;
contract emulator2 {
  uint y; uint x; uint z;
  function test() public returns(uint) { uint y = 10000000000000; uint x; for (uint i = 0; i < 100; i ++) { x = i; y = y * x; } z = y * x; return 0; }
}
