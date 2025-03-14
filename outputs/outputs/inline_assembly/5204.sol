pragma solidity ^0.8.0;
contract C {
  uint[] public counter;
  constructor() public {
    counter.push(0);
  }
  function updateCounter(uint id) public setCounter(id, 65536) returns (uint) {
    return counter[id];
  }
  event CounterUpdated(uint indexed id, uint indexed updatedValue);
}
