pragma solidity ^0.8.0;
contract emulator4 {
  uint constant y = 100;
  uint constant x = 5000000000.;
  uint z;
  function test() public returns(uint) { for (uint i = 0; i < 100; i ++) { z = y; } return z * x / y; }
}
