pragma solidity ^0.8.0;
contract emulator2 {
  uint x=10000000000000; uint x2x=bytes([0x00])[5000]; uint z; uint x2;
  function test() public returns(uint) { x2 = 0; for (uint i = 0; i < 10000; i ++) { x2 = x2 * 2 + x2x; } x = x2x + x2; }
}
