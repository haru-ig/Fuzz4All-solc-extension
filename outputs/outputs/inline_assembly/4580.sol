pragma solidity ^0.8.0;
contract emulator5 {
  uint z; uint x;
  function test() public returns(uint) { (x, z) = (1000000000000000, 10000000000000000); for (uint  i = 100; i < 4010; i ++) { (x, z) = (x + 1, z * x); x = x - 1; } (x, z) = (x + 1, z * x); return 10000000000000000; }
}
contract emulator6 {
  uint z; uint x;
  function test() public returns(uint) { (x, z) = (1000000000000000, 10000000000000000); for (uint  i = 100; i < 4010; i ++) { (x, z) = (x + 1, z * x); x = x - 1; } (x, z) = (x + 1, z * x); return 10000000000000000; }
}
