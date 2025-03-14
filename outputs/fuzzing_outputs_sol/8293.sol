pragma solidity ^0.8.0;
contract SemanticSimilar7 {
  bool f() public {
    uint x;
    for (uint i = 0; i < 10; i++) {
      x; x; x; x; x; x; x; x; x; x;
      x; x; x; x; x; x; x; x; x; x; x;
      x; x; x; x; x; x; x; x; x; x; x;
      x; x; x; x; x; x; x; x; x; x; x;
      x; x; x; x; x; x; x; x; x; x; x;
    }
    if (x>0) {
      uint(x);
    }
  }
}
