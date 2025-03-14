pragma solidity ^0.8.0;
contract SemanticallyEquivalent2047 {
  uint256 constant x = 16777216;
  uint256 constant y = 1;
  function foo(uint256 y, uint256 x) public pure {
    assembly { revert("bar", sub(x, sub(y, x + 1))) }
  }
}
