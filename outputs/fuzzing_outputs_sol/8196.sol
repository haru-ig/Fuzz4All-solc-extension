pragma solidity ^0.8.0;
contract SemanticSimilar7{
  bool f;
  uint x;
  function f() public returns (uint) {f = true; x = 2; return 0;}
  fallback () payable public{}
  function g() public {emit Emitted1();}
  event Emitted1();
}
