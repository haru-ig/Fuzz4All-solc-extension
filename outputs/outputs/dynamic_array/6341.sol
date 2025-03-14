pragma solidity ^0.8.0;
contract c2 {
  uint8 s3;
  uint8 memory s1;
  uint8 memory s2;
  uint8 memory s3;
  function f2() public {
    s2 = 3; s1 = 2; }

  function f1() public { s1 = s2; }
}
