pragma solidity ^0.8.0;
contract mutatedF {
  function f(uint8 a) public returns (uint256) {
    if( a > 1) {
      return uint256(2) % 2;
    }
    return uint256(1);
  }
}
