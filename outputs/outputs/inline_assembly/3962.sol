pragma solidity ^0.8.0;
contract SemanticallyEquivalent33 {
  uint8 constant x = 0;
   uint8 constant y = 3;
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", calldataload(sub(x, and(y, 3)) + 1)) }
  }
}
