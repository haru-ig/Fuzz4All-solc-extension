pragma solidity ^0.8.0;
contract mutatedC {
  function f(uint8 a) public returns (uint256) {
    uint256 b = 1/(a+2);
    b = b+2;
    uint256 d = b-1;
    return b;
  }
}
