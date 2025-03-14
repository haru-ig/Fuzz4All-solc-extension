pragma solidity ^0.8.0;
contract C {
  uint public x = 0x30;
  constructor() public {
    x = 2 ** 32 + 3;
  }
  fallback() external {





    if (msg.value <= x) {
        x = 16;
    }
  }
}
