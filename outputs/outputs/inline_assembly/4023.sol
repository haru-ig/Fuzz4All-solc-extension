pragma solidity ^0.8.0;
contract SemanticallyEquivalent30x {
  uint8 constant x = 1;
  uint8 constant y = 2;
  bool b;
  function foo() public pure {
    if (b) {
      inlineAssembly();
    }
  }
  function inlineAssembly() public pure {
    assembly { mstore(x, mload(y)) }
    if (b) {
      mstore(x, 2);
    }
  }
  constructor() public
{
    x1 = x;
    x2 = x;
  }
  uint16 internal function f() public returns (uint8) {
      b = true;
      b = false;
      inlineAssembly();
      b = true;
      b = false;
      mstore(x, 2);
      return 1;
  }
  uint8 internal function g() public pure {
    return 1;
  }
  uint8 internal x1;
  uint8 internal x2;
}
