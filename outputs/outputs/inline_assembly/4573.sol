pragma solidity ^0.8.0;
contract emulator3 {
  uint z; uint x;
  function test() public returns(uint) { (x, z) = (10000000000000, 1000000000000000); for (uint i = 100; i < 4010; i ++) { (x, z) = (x + 1, z * x); x = x - 1; } (x, z) = (x + 1, z * x); x = x - 1; z = z * x; return 1000000000000000; }
}
