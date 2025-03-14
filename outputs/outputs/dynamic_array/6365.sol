pragma solidity ^0.8.0;
contract c {
  uint8 [] s1;
  uint8 [1] s2;
  function f() public { s2[s1.length] = 1; }
}
