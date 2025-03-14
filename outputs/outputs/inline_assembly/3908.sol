pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, sub(x, y))  }
  }
  function bar(uint x, uint y) public pure {
    assembly { revert(0, and(x, y)) }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent20 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, div(x, y)) }
  }
}
