pragma solidity ^0.8.0;
contract Mutators {
  constructor() {
  }
  fallback() external payable {
    uint a = 0x0;
  }
  receive() external payable {
    uint b = 0x0;
  }
}
