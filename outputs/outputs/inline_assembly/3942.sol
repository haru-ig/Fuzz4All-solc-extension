pragma solidity ^0.8.0;
contract SemanticallyEquivalent22 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", add(x, and(y, 11))) }
  }
}
contract SemanticallyEquivalent23 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", and(x, and(y, 11))) }
  }
}
contract SemanticallyEquivalent24 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", sub(x, and(y, 11))) }
  }
}
contract SemanticallyEquivalent25 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", div(x, and(y, 11))) }
  }
}
