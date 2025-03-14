pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
    uint x=4;
    function foo(uint x, uint y) public pure {
      assembly { revert(0, div(x, sub(x, y))) }
    }
    function bar(uint x) public pure returns (uint) {
      assembly { revert(0, div(x, x)) }
    }
    function baz(uint x) public pure returns (uint, uint) {
      assembly { revert(0, div(x, x), sub(x, x)) }
    }
}
