pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 10;
  Contract(address payable payee) public {
    to = payee;
  }
  function checkCounter(uint a) public view returns (uint) {
    return counter;
  }
  function mutatedCounter(uint b) public returns (uint) {
    return counter + b;
  }
}
