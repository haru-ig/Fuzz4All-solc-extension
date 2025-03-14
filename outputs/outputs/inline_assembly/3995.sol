pragma solidity ^0.8.0;
contract SemanticallyEquivalent27y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    assembly { x := 16(x) }
    y := y + 1;
    x := x + 128;
  }
}
