pragma solidity ^0.8.0;
contract SemanticallyEquivalent08x {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 _x, uint8 _y) pure public {
    assembly { mstore(sub(0, _x), sub(_y, sub(_x, 128))) }
  }
}
