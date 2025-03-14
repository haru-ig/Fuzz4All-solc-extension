pragma solidity ^0.8.0;
contract c {
  uint8 memory s1;
  uint8 s2 = 99;
  function f() public { s1 = new uint8[](991)[1]; }
}
