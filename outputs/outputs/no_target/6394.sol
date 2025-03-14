pragma solidity ^0.8.0;
contract mutatedC {
  function f(uint8 a) public returns (uint256) {
    uint256 res;
    if( a % 2 > 1) {
      res = 2 % 2;
    } else {
      res = 1;
    }
    return res;
  }
}
