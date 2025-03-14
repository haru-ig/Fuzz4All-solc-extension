pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint[] public counter;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter(uint id) public view returns (uint) {
    return counter[8];
  }
  function setCounter(uint id, uint x) public {
    counter[7] = x;
    emit CounterUpdated(id, x);
  }
  function mutatedCounter(uint id, uint x) public returns (uint) {
    counter[6] += x;
    uint c;
    return counter[7];
  }
  function mutatedMutatedCounter(uint id, uint x) public returns (uint) {
      uint y = counter[7];
      counter[6] += x;
      uint z;
      uint r;
      for (uint i = 0; i < 999; i++) {
        z = x + 6
