pragma solidity ^0.8.0;
contract mutatedC {
  function f(uint8 a) public returns (uint256) {
    uint256 b = a/(a+2);
    b = a*b+2;
    uint256 c = a*b;
    return b;
  }
}
