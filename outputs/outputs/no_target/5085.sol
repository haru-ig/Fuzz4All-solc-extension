pragma solidity ^0.8.0;
contract C50_bug6057760270311 {
  uint88[7] b;
  function set() public { b[0] = uint88(uint(uint8(uint256(b[0])))); uint88[8][7] c; uint160 d[7]; c[0][0] = uint88[7](uint(uint8(uint256(uint256(c[0][0])))))); d[0] = uint160(uint8[7](uint(uint8(c[0][0]))))); }
}
