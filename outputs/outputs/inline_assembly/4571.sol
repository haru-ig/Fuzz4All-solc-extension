pragma solidity ^0.8.0;
contract emulator3 {
  uint z;
  uint x;
  function test() public returns(uint) { for (uint i = 0; i < 100; i ++) { for (uint j = 0; j < 100; j ++) { x = x + 1; z = z * x; x = x - 1; } x = x - 1; z = z * x; } x = x - 1; z = z * x; return 100000000000000; }
}
