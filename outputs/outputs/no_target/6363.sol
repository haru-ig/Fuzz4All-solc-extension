pragma solidity ^0.8.0;
contract E is D {
  function g(uint256 a) public returns (uint8) {
    uint256 b = a/2;
    return b-byte(uint8(b));
  }
}
