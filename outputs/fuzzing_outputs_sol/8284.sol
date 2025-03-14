pragma solidity ^0.8.0;
contract SemanticSimilar16 {
  function f() public {
    uint x;
    assembly {
      let i := 42
      x := i
    } x = x + 4;
    revert(x);
  }
}
