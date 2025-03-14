pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, mul(x, y)) }
  }
}
contract SemanticallyEquivalent22 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, sub(x, div(y, x))) }
  }
}
contract SemanticallyEquivalent23 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, mul(x, mul(y, 5))) }
  }
}<jupyter_output><empty_output>
