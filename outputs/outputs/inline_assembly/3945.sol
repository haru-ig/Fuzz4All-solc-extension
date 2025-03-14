pragma solidity ^0.8.0;
contract SemanticallyEquivalent26 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", not(and(x, and(y, 11)))) }
  }
}
contract SemanticallyEquivalent27 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", not(div(x, and(y, 11)))) }
  }
}
contract SemanticallyEquivalent28 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", not(sub(x, and(y, 11)))) }
  }
}
