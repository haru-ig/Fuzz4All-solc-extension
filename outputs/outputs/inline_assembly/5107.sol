pragma solidity ^0.8.0;
contract C {
  address payable payee;
  uint public counter = 0;
  constructor(address payable payee_) public {
    payee = payee_;
  }
  function mutatedCounter() external returns (uint) {
    counter = 10;
    return counter;
  }
  function checkCounter() external returns (uint) {
    return counter;
  }
}
