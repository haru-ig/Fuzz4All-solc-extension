pragma solidity ^0.8.0;
contract c {
  uint8 [18] s1;
  uint8 [20] s2;
  function f() public { s2[1] = 1; s2[19] = 1; }
}
