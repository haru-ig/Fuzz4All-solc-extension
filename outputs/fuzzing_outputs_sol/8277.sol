pragma solidity ^0.8.0;
contract SemanticSimilar16 {
  function f() public {
    uint x = 4;
    assembly {
      let i := 4
      x := i
    }
    x = x + 8;
  }
}
