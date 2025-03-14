pragma solidity ^0.8.0;
contract C2 {
  address payable non_payable;
  uint public counter = 0;
  constructor(address payable payee) public {
    counter = 10;
    non_payable = payee;
  }
  function mutatedCounter() external returns (uint) {
    pure {
      counter = 10;
      return counter;
    }
  }
  function checkCounter() external returns (uint) {
    pure {
      return counter;
    }
  }
}
