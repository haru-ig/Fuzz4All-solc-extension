pragma solidity ^0.8.0;
contract modifiedB3 {
    function f(uint8 a) public returns (uint8) {
      if (a>0) {
        assert(a>1);
        return 0;
      } else {
        assert (a>2);
      }
    }
  }
