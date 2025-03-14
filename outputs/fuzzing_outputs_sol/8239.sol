pragma solidity ^0.8.0;
contract SemanticSimilar11 {
  bool f2;
  function f() public returns(uint) {
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
    b = 0x42;
    b = 1;
    b++;
    b = b * 100;
    b = b * 10;
    b = b + 1;
    b = b + 1;
    return b;
  }
}
contract SemanticSimilar12 {
  uint a;
  uint b;

  function SemanticSimilar12_2(uint a_, uint b_) public {
    a = a_;
    b = b_;
  }

  function SemanticSimilar12_1(uint b_, uint c_) public {
    uint d = b_;
    d = c_;
    c_ = (11 * b_ * d);
  }

  function SemanticSimilar12() public {}
}
