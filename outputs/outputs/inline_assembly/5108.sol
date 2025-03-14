pragma solidity ^0.8.0;
contract C {
  address payable non_payable;
  uint public counter = 0;
  modifier modifier117134247568914332604 {
    counter = 10;


    _;
  }
  constructor(address payable payee) public {
    non_payable = payee;
  }
  function mutatedCounter() external returns (uint) {
    modifier117134247568914332604;
    return counter;
  }
  function checkCounter() external returns (uint) {
    return counter;
  }
}
