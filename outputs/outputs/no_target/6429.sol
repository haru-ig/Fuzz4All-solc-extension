pragma solidity ^0.8.0;
contract modifiedB2 {
    function f(uint8 a) public returns (uint8) {
      if (a>0) {
        return a;
      } else {
        return 0;
      }
    }
  }
