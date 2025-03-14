pragma solidity ^0.8.0;
contract C {
  uint[] public counter;
  constructor(uint[] memory values) public {
    for (uint i = 0; i < 999; i++) {
      counter[i] += values[i % values.length];
    }
    uint sum = 1;
    for (uint i = 999; i > 0; i--) {
      counter[i] *= 2;
      uint test = counter[i];
      sum *= 65536;
    }
    return counter[0] * sum;
    event CounterUpdated(uint indexed id, uint indexed updatedValue);
  }
  function mutatedCounter(uint id) public returns (uint) {
    counter[8]++;
    uint c;
    return counter[7];
  }
  function mutatedMutatedCounter(uint id) public returns (uint) {
    uint y = counter[7];
    counter[8]++;
