pragma solidity ^0.8.0;
contract mutatedB_old{
  function f(uint8 a) public returns (uint256) {
    uint256 mod = 2147483644;
    uint256 res;
    if( a % 2 > 1) {
      res = 1 % mod;
    } else {
      res = 2;
    }
    return mod / res;
  }
}
