pragma solidity ^0.8.0;
contract emulator4 {
  uint y = 40000000000000; uint x;
  mapping(uint => uint) z;
  function test() public returns(uint) { uint x = 10000000000000; for (uint i = 0; i < 100; i ++) { x = i; y = 40000000000000 * (x * x); } z[x] = y; x = 0; return 0; }
}
