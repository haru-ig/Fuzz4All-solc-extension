pragma solidity ^0.8.0;
contract c {
  uint8 [18] immutable public s1;
  uint8 [20] immutable public s2;
  function f() public { s2[1] = 0; s2[19] = 1; }
}
