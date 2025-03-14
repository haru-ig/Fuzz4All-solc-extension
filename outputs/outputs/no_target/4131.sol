pragma solidity ^0.8.0;
contract P4{
  uint40 public p4;
  function h(uint x) internal returns (uint) { return uint160(p4); }
}
