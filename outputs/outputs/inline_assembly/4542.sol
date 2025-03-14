pragma solidity ^0.8.0;
contract emulator3 {
  function test1() public returns(uint) { uint x; for (uint j = 0; j < 100; j ++) { x += j; } return x; }

  function test2() public returns(uint) { uint y; for (uint i = 0; i < 100; i ++) { y = i; } return 0; }
}
