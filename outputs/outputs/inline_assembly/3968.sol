pragma solidity ^0.8.0;
contract SemanticallyEquivalent1024 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly { revert("bar", sub(x, and(y, 127))) }
  }
}
