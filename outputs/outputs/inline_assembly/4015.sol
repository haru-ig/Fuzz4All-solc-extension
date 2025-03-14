pragma solidity ^0.8.0;
contract SemanticallyEquivalent20x {
  uint8 constant x = 0;
  uint8 constant y = 1;
  function foo() public pure {
    assembly { mstore(x, mload(y)) }
  }
}
