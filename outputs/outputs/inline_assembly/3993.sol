pragma solidity ^0.8.0;
contract SemanticallyEquivalent08y {
  bytes32 constant x = bytes32(0);
  bytes32 x;
  function foo() public pure {
    assembly { mstore(x, 0x00) }
  }
}
