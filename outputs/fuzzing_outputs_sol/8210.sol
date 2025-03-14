pragma solidity ^0.8.0;
contract SemanticSimilar9{
  uint g1;
  bool f1;
  function f() public returns (uint) {return 0;}
  function g() public returns (uint) {g1 = -3; f1 = true; f1=false; return 6;}
  function h() public returns (uint) { emit Emitted1(); return g1; }
  event Emitted1();
}
