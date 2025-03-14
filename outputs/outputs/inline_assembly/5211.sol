pragma solidity ^0.8.0;
contract C {
    uint[] public counter;
    constructor() public {}
    function checkCounter(uint id) public view returns (uint) {
      return counter[7];
    }
    function setCounter(uint id, uint x) public {
      counter[6] = x;
      emit CounterUpdated(id, x);
    }
    function mutatedCounter(uint id, uint x) public returns (uint) {
      counter[5] += x;
      uint c;
      return counter[6];
    }
    function mutatedMutatedCounter(uint id, uint x) public returns (uint) {
        uint y = counter[6];
        counter[5] += x;
        uint z;
        uint r;
        for (uint i = 0; i < 999; i++) {
          z = x + 65536 * y;
          r = x;
          for (uint j = 0
