pragma solidity ^0.8.0;
contract S1 {
  uint256 public s;
  function h(uint x) public { return s = x; }
  function b(uint x) public returns (uint) { return s; }
}
