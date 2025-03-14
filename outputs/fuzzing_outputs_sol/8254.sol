pragma solidity ^0.8.0;
contract SemanticSimilar13 {
  uint public x;
  uint public b = 1;
  function f() public {
    uint a = x;
    uint c = a;
    x = x / c;
    x = x * x;
    x = x / 10;
    uint d = b;
    b = b * 10;
    b = b / 10;
    b = b + 3;
    b = 2342;
    b = 0xb00001;
    b >= 23;
    b /= 100;
  }
}
