pragma solidity ^0.8.0;
address payable to;
uint public counter = 1;
contract C {
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter *= x;
    uint c;
    return counter;
  }
}
