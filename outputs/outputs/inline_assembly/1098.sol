pragma solidity ^0.8.0;
contract MutatedContract {
  uint256 x;
  constructor(uint256 y) {
    x += 1;
    x += y;
  }
    uint256 update() public pure {

    return x;
  }
}
