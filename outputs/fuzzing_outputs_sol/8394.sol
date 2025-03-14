pragma solidity ^0.8.0;
contract SemanticSimilar385 {
  uint256 foo;
  uint256 bar;
  constructor() {
    foo = 5;
    bar = 5;
  }
  fallback() public {

    foo = foo + 1;
    bar = bar + 1;
  }
  function set() public {
    foo = foo + 2;
    bar = bar + 2;
  }
}
