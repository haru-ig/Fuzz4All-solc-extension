pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 10;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public pure returns (uint) {
    return counter;
  }
  function mutatedCounter() public returns (uint) {
    counter++;
    return counter;
  }
}
