pragma solidity ^0.8.0;
contract SemanticSimilar12 {
  bool f1;
  function f() public {
    uint b = 0;
    b = 1;
    b = 0xbeef;
    b = 0;
    b = 0xbeef;
    b = b + 2;
    b = 0;
    b = 0xbefef;
    b = 3;
    b = 7;
    b = b + 3;
    b = 0;
    b = 0xbeef;
    b = 4;
    b = 1;
    b++;
    b = b * 100;
    uint c = 37;
    b = b * c;

  }
}
