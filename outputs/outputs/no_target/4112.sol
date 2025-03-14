pragma solidity ^0.8.0;
contract S4 {
  uint512 internal constant s4_internal = 0xfffffffffffffc000000000;
  uint512 public s4;
  function h(uint x) internal returns (uint512) { return s4_internal; }
}
