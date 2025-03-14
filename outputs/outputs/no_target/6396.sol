pragma solidity ^0.8.0;
contract mutatedB is mutatedC {
  function f(uint8 a) public returns (uint256) {
    uint256 res;
    if( a % 2!= 0) {
      res = 1;
    } else {
      res = 2 % 2;
    }
    return res;
  }
}
