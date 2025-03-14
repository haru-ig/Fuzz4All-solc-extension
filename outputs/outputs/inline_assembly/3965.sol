pragma solidity ^0.8.0;
contract SemanticallyEquivalent64 {
  uint256 constant x = 0;
  uint256 constant y = 0;
  function foo(uint256 y, uint256 x) public pure {
    assembly { revert("bar", sub(x, and(y, 11))) }
  }
}
