pragma solidity ^0.8.0;
contract SemanticSimilar10 {
  bool f1;
  function f() public {
    uint b = 0;
    b = 1;
    b = 0x80000000000001;
    b = 1;
    b = 0x80000000000001;
    b = 2;
    b = 0x80000000000001;
    b = 0;
    b = 0x80000000000001;
    b = b + 2;
    b = 0;
    b = 0x20000000000001;
    b = 1;
    b++;
    b = b * 100;
    b = b * 10;
  }
}
