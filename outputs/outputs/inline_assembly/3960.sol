pragma solidity ^0.8.0;
contract SemanticallyEquivalent32 {
  uint8 constant x = 0;
  uint8 constant y = 0;
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert(0, sub(x, y), add(x, 1), and(y, 11)) }
  }
}





pragma solidity ^0.8.0;
