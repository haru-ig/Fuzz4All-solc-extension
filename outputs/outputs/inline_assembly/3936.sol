pragma solidity ^0.8.0;
contract SemanticallyEquivalent22 {
  function foo(uint x, uint y) public pure {
    memory a := 2;
    assembly { a := a * x }
    require(a == 2);
    assembly { a := a * y }
    require(a == 0);
  }
}
