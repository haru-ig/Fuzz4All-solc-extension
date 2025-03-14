pragma solidity ^0.8.0;
contract SemanticSimilar17 {
  function f() public {
    uint a0;
    uint a1;
    uint a2;
    for (uint i = 0; i < 10; i = i + 1) {
      a0; a1; a2;
    }
    if (a0 > a1 && a0 > a2) {
      uint(a0);
    }
  }
}
