pragma solidity ^0.8.0;

contract SemanticallyEquivalent20y {
  uint8 constant nonzero = 1;
  uint8 constant zero = 0;
  uint8 x = 0;
  uint8 y = 0;
  function foo() public pure {
    inlineAssembly();
  }
  function inlineAssembly() public pure {
    assembly { mstore(x, mload(y)) }
  }
}
