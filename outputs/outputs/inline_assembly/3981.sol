pragma solidity ^0.8.0;
contract SemanticallyEquivalent08x {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 x, uint8 y) public pure {
    assembly { mstore(0, sub(y, sub(x, 128))) }
  }
}
