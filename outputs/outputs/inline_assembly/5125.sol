pragma solidity ^0.8.0;
contract C {
  uint public counter = 10;
  constructor() public {
    counter++;
  }
  function mutatedCounter() internal returns (uint) {
    return counter;
  }
  function checkCounter() internal view returns (uint) {
    return counter;
  }
}
