pragma solidity ^0.8.0;
contract modifiedB2 {
    function f(uint8 a) public view returns (uint8) {
      if (a>0) {
        assert(a>1);
        return a;
      } else {
        assert (a>2);
        return 0;
      }
    }
  }
