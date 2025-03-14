pragma solidity ^0.8.0;
contract SemanticallyEquivalent17 {
  function foo(uint x, uint y, uint z) public pure {
    assembly { revert(0, div(sub(mul(mul(x, y), z), mul(add(x, y), z)), add(mul(x, y), z)))) }
  }
}
