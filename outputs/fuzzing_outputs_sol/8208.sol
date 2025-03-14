pragma solidity ^0.8.0;
contract SemanticSimilar9{
  uint256 f1;
  function f() public returns (uint) {f1 = 20; return 0;}
  function g() public returns (uint) { f1 = 20; emit f(); return g1; }
}
