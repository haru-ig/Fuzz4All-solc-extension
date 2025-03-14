pragma solidity ^0.8.0;
contract SemanticallyEquivalent25x {
  uint8 constant x = 1;
  function foo() public pure {
    assembly { mstore(x, mload(x)) }
  }
}
