pragma solidity ^0.8.0;
contract C {
  uint public counter;
  constructor(uint initialCounter) public {
    counter = initialCounter;
  }
  function mutatedCounter() external returns (uint) {
    counter = 0;
    return counter;
  }
  function checkCounter() external returns (uint) {
    return counter;
  }
}
