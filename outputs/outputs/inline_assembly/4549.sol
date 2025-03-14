pragma solidity ^0.8.0;
contract emulator1 {
  uint y; uint x; uint z;
  function test() public returns(uint) { uint y = 10000000000000; for (uint i = 0; i < 100; i ++) { y = y * i; } x = y * i; z = x * i; return 0; }
}
