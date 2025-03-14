pragma solidity ^0.8.0;
contract MutatedContract {
  uint256 x;
  constructor() {
    x += 1;
    x *= 1000;
  }
}
