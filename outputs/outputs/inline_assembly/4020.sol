pragma solidity ^0.8.0;
contract SemanticallyEquivalent20x {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    inlineAssembly();
  }
  function inlineAssembly() public pure {
    assembly {
      mstore(0x20, mload(0x8))
      mstore(0x11, mload(0x7))
      mstore(0x5, mload(0x4))
    }
  }
}

```
