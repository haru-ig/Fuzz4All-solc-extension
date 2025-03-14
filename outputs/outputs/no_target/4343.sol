pragma solidity ^0.8.0;
uint f;
contract K {
  constructor() public {}
  modifier ff() {
    f++;
    _;
  }
  function f() public pure {
    uint256 i = f + 1;
  }
}
