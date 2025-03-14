pragma solidity ^0.8.0;
contract SemanticSimilar8{
  bool f1;
  uint g1;
  function f() public returns (uint) {f1 = true; g1 = 20; f1=false; return 0;}
  function g() public returns (uint) { emit Emitted1(); return g1; }
  function h() public payable {}
  event Emitted1();
}
