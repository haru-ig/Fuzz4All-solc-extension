pragma solidity ^0.8.0;
contract CallMutablility {
  uint public value;
  constructor ( ) {
    value = 1;
  }
  fallback() external {
    if (msg.sender == address(new CallMutablility())) {
      value = 2;
    }
  }
  receive() external { }
}
