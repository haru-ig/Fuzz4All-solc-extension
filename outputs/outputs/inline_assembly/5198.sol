pragma solidity ^0.8.0;
contract C {
  uint[] public counter;
  constructor(uint x) public {
    int x2 = 64n;
    counter[7] = x + x2;
  }
  function checkCounter(uint id) public view returns (uint) {
    return counter[7];
  }
  function setCounter(uint id, uint x) public {
    counter[6] += x;
    emit CounterUpdated(id, x);
  }

  function mutatedCounter(uint id, uint x) public returns (uint) {
    counter[7] += x;
    return counter[6];
  }

  function mutatedMutatedCounter(uint id, uint x) public returns (uint
