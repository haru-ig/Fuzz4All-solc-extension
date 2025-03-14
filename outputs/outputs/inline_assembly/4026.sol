pragma solidity ^0.8.0;
contract SemanticallyEquivalent10x {
  uint8 constant x = 5;

  function foo() public pure {
    assembly { mstore(x, mload(x)) }
  }
}
