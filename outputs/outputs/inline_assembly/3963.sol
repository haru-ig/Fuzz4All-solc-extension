pragma solidity ^0.8.0;
contract SemanticallyEquivalent32 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(uint8 x, uint8 y) public pure {
    assembly { x := and(x, 0xCAFE), y := add(y, and(0xCAFE, -0xCAFE)) }
  }
}
