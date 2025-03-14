pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint[] public counter;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter(uint id) public view returns (uint) {
    return counter[id];
  }
  function setCounter(uint id, uint x) public {
    counter[id] = x;
    emit CounterUpdated(id, x);
  }
  function mutatedCounter(uint id, uint x) public returns (uint) {
    counter[id] += x;
    uint c;
    return counter[0];
  }
  event CounterUpdated(uint indexed id, uint indexed updatedValue);
}
