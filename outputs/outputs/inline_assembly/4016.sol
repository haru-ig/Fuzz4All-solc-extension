pragma solidity ^0.8.0;
contract SemanticallyEquivalent16y {
  uint8 constant x = 2;
  uint8 constant y = 2;
  function foo() public pure {
    assembly { mstore(x, mload(y)) }
  }
}
