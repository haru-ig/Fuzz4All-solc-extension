pragma solidity ^0.8.0;
contract emulator4 {
  uint y; uint x; uint z;
  function test() public returns(uint) { y = 4; x = 10000000000000; for (uint i = 0; i < 100; i ++) { y = y * x; x = x + 1; } z = y * x; return 0; }
}
