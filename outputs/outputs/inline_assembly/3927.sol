pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, mul(x, y)) }
  }
}
