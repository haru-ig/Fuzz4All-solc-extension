pragma solidity ^0.8.0;
contract SemanticallyEquivalent18y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    assembly { mstore(add(y, sub(x, 128)), x) }
  }
}
