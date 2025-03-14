pragma solidity ^0.8.0;
contract SemanticallyEquivalent10242 is SemanticallyEquivalent1024 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", sub(x, and(y, 127)))) }
  }
}
