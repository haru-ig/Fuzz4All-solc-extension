pragma solidity ^0.8.0;
contract SemanticSimilar12 {
  bool f1;
  address payee;
  uint n;
  function f() public {
    uint b = 0;
    b = 1;
    b = 0xbeef;
    b = 0;
    b = 0xbeef;
    b = 42;
    b = 2;
    b = 0xbeef;
    b = 0;
    b = 0xbeef;
    b = b + 2;
    b = 0;
    b = 0xbeef;
    b = 0x4;
    b = 1;
    b++;
    b = b * 100;
    b = b * 10;
  }
}
