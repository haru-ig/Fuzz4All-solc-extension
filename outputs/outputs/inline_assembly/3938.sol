pragma solidity ^0.8.0;
contract SemanticallyEquivalent22 {
  function foo(uint x, uint y) public pure returns (uint z) {
    assembly { revert(0, mul(x, y)) }
  }
}
