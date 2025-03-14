pragma solidity ^0.8.0;
contract SemanticallyEquivalent08y {
  uint8 constant x = 3;
  address x_0;
  uint8 constant y = 0;
  function foo() public pure {
    assembly { mstore(0, add(x_0, x)) }
  }
}
