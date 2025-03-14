pragma solidity ^0.8.0;
contract E6H2 {
  uint256 x = 0xabcd;
  function f() public {
    uint28 x;
    x = x << 32 >> 32;
    x = x << 8 >> 8;
  }
}
