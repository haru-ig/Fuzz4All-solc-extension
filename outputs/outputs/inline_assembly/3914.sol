pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalent19 {
  uint public _x;
  function foo(uint x, uint y) public pure {
    _x = add(x, y);
  }
  function bar() public pure {
    x = add(x, y)
  }
  function quux() public pure {
    this.foo(x, y);
  }
  function revert() public pure {
    revert(0, _x);
  }
}
