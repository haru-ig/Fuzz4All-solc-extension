pragma solidity ^0.8.0;
contract C {
  uint private counter = 0;
  constructor() public {}
  function modifiedCounter() public returns (uint) {
    counter += 10;
    counter += 10;
    uint c;
    return c;
  }
  function getCounter() public pure returns (uint) {
    return counter;
  }
}
