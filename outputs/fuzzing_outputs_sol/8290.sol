pragma solidity ^0.8.0;
contract SemanticSimilar20 {
  function f() public {
    uint x; uint y;
    for (uint i = 0; i < 10; i++) {
      x; x; x;
    }
    if (0 <= x && x <= 1) {
      uint(x); uint(y);
    } else if (0 < x && <= y && y <= 1) {
      uint(x); uint(y);
    }
  }
}
