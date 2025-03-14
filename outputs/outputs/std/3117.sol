pragma solidity ^0.8.0;
contract Multiprecision {
  function _mul(
  uint a, uint b) public pure returns (uint z) {
    return (a * b) / 1000000000;
  }
}
