pragma solidity ^0.8.0;
contract SemanticallyEquivalent64 {
  uint16 constant x = 0;
  uint16 constant y = 0;
  function foo(uint16 y, uint16 x) public pure {
    assembly { revert("bar", sub(x, and(y, 11))) }
 }
}
