pragma solidity ^0.8.0;
contract modifiedB {
  function f(uint8 a) public returns (uint256) {
    uint8 i = (a -1) & 1;
    uint256 res;
    if( i % 2 > 1) {
      uint256 test;
      if( a < 0) {
        if( a % 2 > 1) {
          test = 1 % 1;
          if( test >= 2) {
            res = 2;
          }
        } else {
          test = 1;
          if( test <= 1) {
            res = 1;
          }
        }
      }
      else {
        test = 1 % 2;
        if( test >= 2) {
          res = 2;
        }
      }
    } else {
      test = a % 2;
      uint256 b;
      if( a < 0) {
        if( a % 2 > 1) {
          test = 2;
          if( test < 2) {
            b = a % 4 / 4 > 1;
          }
        } else {
          test = 0;
          if( test > 0) {
            b = a % 4 / 4 > 1;
          }
        }
      }
      else {
        test = 1 % 2;
        if( test >= 1) {
          b = a % 4 > 1;
        }
      }
    }
    b = a & 1;
    return (b + test + 3) % 2;
  }
}

pragma solidity ^0.8.0;
contract modifiedB {
  type MyUint = uint256;
  function f(MyUint a) public returns (uint256) {
  }
  function g(uint56 a) public returns (uint256) {
  }
}
