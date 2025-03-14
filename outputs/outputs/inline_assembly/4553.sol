pragma solidity ^0.8.0;
contract emulator3 {
  uint y; uint x; uint z;
  function test() public returns (uint) { uint y; uint x; for (i; < 100; i = i << 5) { x = i; y := y * x; } z := y * x; return 0; }
}
