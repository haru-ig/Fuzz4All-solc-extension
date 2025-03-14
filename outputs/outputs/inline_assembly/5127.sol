pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 4;
  constructor(address payable payee) public {
    to = payee;
  }
  function mutatedCounter() internal returns (uint) {
    counter = 10;
    return counter;
  }
  function checkCounter() external view returns (uint) {
    return counter;
  }
}
