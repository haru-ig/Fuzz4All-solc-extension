pragma solidity ^0.8.0;
contract SemanticallyEquivalent9y {
  uint8 constant x = 2;
  uint8 constant y = 1;
  uint constant z = 127;
  bool constant f = false;
  bool constant g = false;
  bool constant h = true;
  function foo() public pure {
    assembly { mstore(add(y, sub(z, 128)), x) }
  }
}
