pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  function f(uint x, uint y) public pure {
    assembly { assert(div(div(x, y), 0) == 0) }
  }
}
