pragma solidity ^0.8.0;
contract SemanticallyEquivalent1025 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  uint8 z;


  function foo(uint8 y, uint8 x) public pure {
    z = x;
    assembly { revert("bar", x) }
  }
}
