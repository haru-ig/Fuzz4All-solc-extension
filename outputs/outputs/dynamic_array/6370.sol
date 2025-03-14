pragma solidity ^0.8.0;
contract c {
  uint8 [32] s1;
  uint8 [0] s2;
  function f() public { s2[s1.length] = 1; }
}
contract c
{
  uint8 [] s1;
  uint8 [0] s2;
  function f() public { s2[s1.length] = 1; }
}
