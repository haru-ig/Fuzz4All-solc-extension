pragma solidity ^0.8.0;
contract SemanticallyEquivalent20y {
  uint8 constant x = 3;
  uint8 constant y = 0;
  function foo() public pure {
    assembly { mstore(y, mload(x)) }
  }
}
