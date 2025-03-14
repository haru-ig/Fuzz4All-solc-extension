pragma solidity ^0.8.0;
contract SemanticallyEquivalent31 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", div(x, and(y, 11))) }
  }
}
contract SemanticallyEquivalent33 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", mod(x, and(y, 11))) }
  }
}
