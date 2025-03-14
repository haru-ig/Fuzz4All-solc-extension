pragma solidity ^0.8.0;
contract E7H {
  uint8 x;
  function f() public {
    uint64 x;
    x = x << 50 >> 50;
    x = x << 5 >> 5;
  }
}
contract E8H{
  uint256 x;
  function f() public {
    uint132 x;
    x = x << 57 >> 57;
    x = x << 7 >> 7;
  }
}
