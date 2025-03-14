pragma solidity ^0.8.0;
library mutated1 {
  uint constant private value = 12;
  function add(uint x) internal pure returns (uint) {
    return value + x;
  }
}
