pragma solidity ^0.8.0;
contract B {
  function f(uint8 a) external returns (uint256) {
    uint256 res;
    if( a % 2 > 1) {
      uint256 b = 1 % 2;
      if( b is bool) {
        if( b) {
          res = 1 % 2;
        } else {
          res = 2;
        }
        return res;
      }
      return a;
    }
    return a;
  }
}
