pragma solidity ^0.8.0;
contract E8 {
  uint256 x;
  function f() public {
    uint128 y = 0xabcd;
    uint256 x = y << 16 >> 32;
     x = x << 1 >> 32;
  }
}
