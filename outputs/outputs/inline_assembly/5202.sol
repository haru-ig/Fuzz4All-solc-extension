pragma solidity ^0.8.0;
contract C {
    address payable to;
    uint[] payable public counter;
    constructor(address payable payee) public {
      to = payee;
    }
    function setCounter(uint i, uint x) public {
      counter[i] += x;
      emit CounterUpdated(i, x);

    }
    function mutatedCounter(uint i, uint x) public returns (uint) {
      uint y = counter[i];
      counter[i] += x;
      uint sum;

      for (uint j = 0; j < 999; j++) {
        sum = x;
        for (uint j2 = 0; j < x; j++) {
            x *= 65536 + 1;
        }
        for (uint j2 = 0; j < 999; j++) {
          x += 65536 * x;
          y =
