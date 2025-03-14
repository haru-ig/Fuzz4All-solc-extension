pragma solidity ^0.8.0;
contract c {
  uint8 [19] s1;
  uint8 s2;
  function f() public { s1[2] = 1; s1.length = 1; }
}
