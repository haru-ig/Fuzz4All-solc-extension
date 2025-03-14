pragma solidity ^0.8.0;
contract C {
    uint[] public counter;
    constructor(uint size) {
      counter = new uint[](size);
    }
    function get(uint i) public view returns (uint) {
      return counter[i];
    }
    function mutated(uint i) public {
      counter[i] = i * 2;
    }
    function mutatedMutated(uint i) public {

      uint x;
      uint y = 1;

      for (uint j = 0; j < 1000; j++) {

        for (uint k = x; x < y; k += 10) {
          x *= 2;
          y *= 2;
        }
        if (x == y) {
          counter[(i+x)-1] = i*10 + j+10;
          x = y = 1;
          break;
        }
      }

    }
    event CounterSet(
