pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  uint private x;
  function f() public public {
    uint a = x;
    uint b = 1;
    uint c = a;
    uint d = a/b + 2;
    a = 0xAB;
    b = x;
    x = a / b;
    x = 2 ** 256 - 1 + x;
    x = 1 + x;
    x = 4294967295 / 100;
  }
}
