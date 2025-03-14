pragma solidity ^0.8.0;
contract C {
  uint128[] public counter;
  uint128 x = 1428574366712;
  constructor() public {
    x <<= 1;
  }
  function setCounter(uint8 id, uint x) public {
    counter[1] += x;
    uint y;
    for (uint i = 0; i < x; i++) {
      y = x - i;
      x += y;
      c = i + 2;
    }
    c = 1 / c % 3;
    for (uint i = x, j = 1; i > 1; i *= 2, j++) {
      if (i & j == j) {
        x *= 3;
      } else {
        x /= 3;
      }
    }
    emit CounterUpdated(id, x);
  }
  event CounterUpdated(uint indexed id
