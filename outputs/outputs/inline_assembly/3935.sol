pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {
  function foo(uint x, uint y) public pure {
    require(y > 0);
    uint div = y / x;
    revert(0, div);
  }
}
