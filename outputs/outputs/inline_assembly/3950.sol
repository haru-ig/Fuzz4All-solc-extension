pragma solidity ^0.8.0;
contract SemanticallyEquivalent28 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", xor(x, xor(y, 11))) }
  }
}
contract SemanticallyEquivalent29 {
    function foo(uint8 x, uint8 y) public pure {
        assembly { revert("bar", xor(and(x, y), not(and(x, 11)))) }
    }
}
