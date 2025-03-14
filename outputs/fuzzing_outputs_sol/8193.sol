pragma solidity ^0.8.0;
contract SemanticSimilar6{
  bool f1;
  function f() public returns (uint) {f1 = true; return 0;}
  function g() public {emit Emitted1();}
  event Emitted1();
}
