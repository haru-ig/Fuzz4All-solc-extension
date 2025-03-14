pragma solidity ^0.8.0;
contract modifiedB2 {
    uint128 a = 10;
    uint8 b;
    function f(uint128 a) public returns (uint64) {
      if (a>0) {
        return a;
      } else {
        return 0;
      }
    }
  }
