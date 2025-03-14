pragma solidity ^0.8.0;
contract mutatedA is modifiedB {
  constructor() public {
    log0(modifiedB.f(1));
  }
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
    return 32767 % 2;
  }
}
