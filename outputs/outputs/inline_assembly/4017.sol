pragma solidity ^0.8.0;
contract SemanticallyEquivalent100y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    assembly { mstore(0x50, mload(0x0a58)) }
  }
}
