pragma solidity ^0.8.0;
contract c {
  uint8 s1;
  uint8 s2;
  uint8 s3;
  function f() public { s3 = 1; }
  constructor() public { f(); }
}
