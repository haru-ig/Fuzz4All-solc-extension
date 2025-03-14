pragma solidity ^0.8.0;
contract emulator3 {
  uint internal x;
  modifier xIncr() { x += 1; _; }
  function test() public returns(uint) { for (uint i = 0; i < 100; i ++) { x = xIncr(); } return 0; }
}
