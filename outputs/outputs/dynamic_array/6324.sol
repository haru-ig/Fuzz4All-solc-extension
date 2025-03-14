pragma solidity ^0.8.0;
contract c {
  uint8 s;
  function get() public { s = 1; }
  constructor() public { get(); }
}
