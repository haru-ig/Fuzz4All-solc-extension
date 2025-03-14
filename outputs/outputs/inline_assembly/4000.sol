pragma solidity ^0.8.0;
contract SemanticallyEquivalent20y {
  uint8 constant x = 1;
  uint8 constant y = x;
  function foo() public pure {
    assembly { mstore(y, mload(x)) }
  }
}
