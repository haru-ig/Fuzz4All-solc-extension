pragma solidity ^0.8.0;
contract emulator2 {
  uint y; uint x=10000000000000; uint z;
  function test() public returns(uint) { uint x_i = 0; uint y_i = 10000000000000; for (uint i = 0; i < 100; i ++) { x_i = i; y_i = y_i * x_i; } z = y_i * x_i; return 0; }
}
