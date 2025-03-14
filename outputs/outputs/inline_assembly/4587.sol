pragma solidity ^0.8.0;
contract emulator6 {
  uint z;
  function test() public returns(uint) { (z, z) = (0, 1); for (uint i = 0; i < 400; i++) { (z, z) = (z * z + 1, z); } (z, z) = (z * z + 1, z); } }
