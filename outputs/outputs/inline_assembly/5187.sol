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
        z = x + 65536 * y;
        r = x;
        for (uint j = 0; j < x; j++) {
            r *= 65536 + 1;
        }
        for (uint j = 0; j < 999; j++) {
          r += x;
          y = x + 65536 * y;
        }
        if (r == z) {
          break;
        }
        x += 65536;
      }
      uint count = 999;
      for (uint i = 999; i > 0; i--) {
        x *= 2;
        if (x == r) {
          count--;
          for (uint j = 0; j < i; j++) {
            y *= 2;
          }
          break;
        }
      }
      uint sum = 1;
      for (uint i = x; i <= r; i += x) {
        sum *= 65536;
      }
      return count * sum;
    }
    event CounterUpdated(uint indexed id, uint indexed updatedValue);
}
