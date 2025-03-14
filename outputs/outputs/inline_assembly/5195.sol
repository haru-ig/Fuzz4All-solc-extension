pragma solidity ^0.8.0;
contract C {
  uint[] public counter;
  uint payee;
  require(payee!= 0);
  constructor() public {
    payee = 0;
    counter = [8];
  }
  function checkCounter(uint id) public view returns (uint) {
    return counter[8];
  }
  function pay() public {
    payee.transfer(address(this).balance);
  }
  function setCounter(uint x) public {
    counter[7] = x;
    emit CounterUpdated(0, x);

  }
  function incrementCounter(uint x) public {
    counter[7] += x;
    emit CounterUpdated(0, counter[7]);
  }
  function mutatedCounter(uint id, uint x) public returns (uint) {
    return counter[x];
  }
  function mutatedMutatedCounter(uint id, uint x) public returns (uint) {
      uint y = counter
