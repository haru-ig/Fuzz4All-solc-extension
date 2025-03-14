pragma solidity ^0.8.0;
contract C {
  uint public x;
  constructor() public {
    x = 2 ** 32;
  }
  fallback() external {
    C storage c = C(address(0x12));
    c.x = x + x >> 1;
  }
}
