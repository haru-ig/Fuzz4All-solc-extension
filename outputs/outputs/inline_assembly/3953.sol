pragma solidity ^0.8.0;
contract SemanticallyEquivalent28 {
  function foo(uint8 x, uint8 y) public pure {
    assembly {
      let one = 112072255
      eq(add(x, and(y, one)), sub(x, mul(y, one)))
    }
  }
}
