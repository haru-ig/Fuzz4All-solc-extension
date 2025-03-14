pragma solidity ^0.8.0;
contract modifiedB {
  function f(uint8 a) public returns (uint256) {
    if( a % 2 > 1) {
      uint256 res;
      if( a < 0) {


        if( a % 2 > 1) {
          res = 1 % 2;
        } else {
          res = 2;
        }
        return res;
      }
    }
    return 1 % 2;
  }
}
