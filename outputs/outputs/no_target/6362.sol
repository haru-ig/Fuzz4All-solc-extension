pragma solidity ^0.8.0;
contract mutatedD {
  function f(uint8 a) public returns (uint256) {
    uint256 b = a/2;
    b = b*2;
    uint256 d = b+1;
    return b+b*2;
  }
}
