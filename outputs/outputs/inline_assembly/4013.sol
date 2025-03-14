pragma solidity ^0.8.0;
contract SemanticallyEquivalent21y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  constructor() {}
  function foo() public pure {
    x := mload(y)
  }
}
