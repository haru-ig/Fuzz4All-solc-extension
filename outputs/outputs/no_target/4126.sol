pragma solidity ^0.8.0;
contract P4{
  uint160 public p4;
  function w(uint x) public { p4 = uint160(0.5 * x); }
  function h(uint x) public returns (uint256) { return p4; }
}
