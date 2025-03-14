pragma solidity ^0.8.0;
contract SemanticallyEquivalent11y {
  bytes32 public constant y;
  uint64 public x = 1;
  function foo() public pure {
    assembly { mstore(y, mload(x)) }
  }
}
