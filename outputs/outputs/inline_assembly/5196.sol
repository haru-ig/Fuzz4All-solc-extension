pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint[] public counter;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter(uint id) public view returns (uint) {
    return counter[2];
  }
  function setCounter(uint id, uint x) public {
    counter[1] = x;
    emit CounterUpdated(id, x);
  }
  function mutatedCounter(uint id, uint x) public returns (uint) {
    counter[0] += x;
    uint c;
    return counter[1];
  }
  function mutatedMutatedCounter(uint id, uint x) public returns (uint) {
      uint y = counter[1];
      counter[0] += x;
      uint z;
      uint r;
      for (uint i = 0; i < 999; i++) {
        z = x + 6
