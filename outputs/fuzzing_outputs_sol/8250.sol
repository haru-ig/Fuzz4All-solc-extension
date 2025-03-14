pragma solidity ^0.8.0;
contract SemanticSimilar13 {
  bool f1;
  function f() public {
    uint b = 0;
    f1 = true;
    b = 1;
    f1 = false;
    b = 0xbeef;
    f1 = true;
    b = f1;
  }
}
