pragma solidity ^0.8.0;
contract M {
  uint  counter;

  constructor() {
    counter = 5;
  }

  fallback() external payable {
    counter += 1;
    counter -= 1;
    counter += 1;
  }

  function getCounter() public view returns (uint) {
    return counter;
  }
}
