pragma solidity ^0.8.0;
contract SemanticallyEquivalent08 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly { mstore(0, sub(x, sub(y, 128))) }
  }
}
