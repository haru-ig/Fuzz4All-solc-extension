pragma solidity ^0.8.0;
contract emulator5 {
  uint public x = 0;
  uint public z = 0;
  function test() public returns(uint) { for (uint i = 0; i < 10000000000000000000; i ++) { (x, z) = (0, x + x); x = x + x; z = x + z; }  return z; } }

pragma solidity ^0.8.0;
contract emulator5 {
  function test() public returns(uint) { uint x = 0; uint z = 0; uint w; for (uint i = 1; i <= 10; i ++) { (x, z) = (x + z, z + x); w = x + w; z = z + z; } return z; } }
