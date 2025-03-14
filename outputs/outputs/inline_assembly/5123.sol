pragma solidity ^0.8.0;
contract C {
  uint public counter = 10;
  constructor() external {
  }
  function mutatedCounter() internal returns (uint) {
    counter++;
    return counter;
  }
  function checkCounter() external returns (uint) {
    return counter;
  }
}
pragma solidity ^0.8.7;
contract C {
  uint public counter = 10;
  constructor() external {
  }
  function mutatedCounter() internal returns (uint) {
    counter++;
    return counter;
  }
  function checkCounter() external returns (uint) {
    return counter;
  }
}
