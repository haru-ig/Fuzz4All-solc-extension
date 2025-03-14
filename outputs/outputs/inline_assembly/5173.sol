pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 0;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter(uint x) public view returns (uint) {
    return counter;
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter += x;
    uint c;
    return c = counter;
  }
}
