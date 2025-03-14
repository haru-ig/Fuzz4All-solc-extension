pragma solidity ^0.8.0;
contract c {
  uint8256 p[0];
  function g() public { p[0] = 1; }
  constructor() public { g(); }
}
