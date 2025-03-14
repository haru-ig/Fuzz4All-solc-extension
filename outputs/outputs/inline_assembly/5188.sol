pragma solidity ^0.8.0;
contract C {
  uint[] public counter;
  mapping(uint => uint) public mutatedCounter;
  constructor(uint[] memory values) public {
    counter = values;
    mutatedCounter[0] = values[0];
  }
  function checkCounter(uint id) public returns (uint) {
    return counter[id];
  }
  function setCounter(uint id, uint x) public {
    counter[id] = x;
    mutatedCounter[id] = 0;
  }
  function mutatedCounter(uint id, uint x) public returns (uint) {
    counter[id] += x;
    mutatedCounter[id] += x;
    uint c;
    return mutatedCounter[0];
  }
  event CounterUpdated(uint indexed id, uint indexed updatedValue);
}
