pragma solidity ^0.8.0;
contract emulator {
  function test() public returns(uint) {
  for (uint i = 100; i < 1010; i ++) { z = z + 1; }
  uint x; uint y; uint z; (x, y, z) = (1000000000000000, 1000000000000000, 1000000000000000); for (uint j = 100; j < 3020; j ++) { (x, y, z) = (x + 1, y * x, z * x); x = x - 1; } (x, y, z) = (x + 1, y * x, z * x); x = x - 1; z = z * x; }
    return 1000000000000000;
  }
}
