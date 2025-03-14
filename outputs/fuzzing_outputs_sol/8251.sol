pragma solidity ^0.8.0;
contract SemanticSimilar13 {
  bool f1;
  function f() public {
    uint b = 0;
    b = 1 + 2;
    b = 4 + 2;
    b = 1 + 3;
    b = 4 + 3;
    b = 1 + 7;
    b = 4 + 7;
  }
}
