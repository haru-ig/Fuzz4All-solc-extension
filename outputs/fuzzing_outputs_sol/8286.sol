pragma solidity ^0.8.0;
contract SemanticSimilar18 {
  function f() public {
    uint x;
    for (uint i = 0; i < 10; i++) {
      x; x; x;
    }
    if (0 < x) {
      uint(x);
    }
  }
}
