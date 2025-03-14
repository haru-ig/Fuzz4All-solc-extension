pragma solidity ^0.8.0;
contract SemanticallyEquivalent1x {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 x, uint8 y) public pure {
    require(x > y || y > x, "x must be greater than y");
    assembly { mstore(0, sub(sub(y, x), zext(mload(0)))) }
  }
}
