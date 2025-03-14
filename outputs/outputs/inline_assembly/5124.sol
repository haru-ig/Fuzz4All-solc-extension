pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 10;
  constructor(address payable payee) public {
    to = payee;
  }
  function mutatedCounter() internal returns (uint) {
    counter++;
    return counter;
  }
  function checkCounter() external view returns (uint) {
    return counter;
  }
}
