pragma solidity ^0.8.0;
contract SemanticSimilar10{
  bool f1;
  function f() public returns (uint) {f1 = true; f1=false; return 0;}
  modifier m1 { if (f1){ _; } else { _ = 0; _;} }
  function g() public returns (uint) {g2; g2=f1? 0 : 0;}
}
