pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 0;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function setCounter(uint x) public {
    counter = x;
    emit CounterUpdated(counter);
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter += x;
    uint c;
    return counter;
  }
  event CounterUpdated(uint indexed updatedValue);
}
