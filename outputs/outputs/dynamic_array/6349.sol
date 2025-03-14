pragma solidity ^0.8.0;
contract c {
  uint8 s1;
  uint8 [10] s2;
  function f() public { s2[1] = 3; }
}
