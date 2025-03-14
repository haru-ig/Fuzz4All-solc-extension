pragma solidity ^0.8.0;
contract SemanticSimilar8{
  bool f1;
  function f(uint w, uint x) public returns (uint) { f1 = true; uint i; for (i = 0; i < x; i ++) { f1 = false;} return 0;}
  function g() public payable payable {emit Emitted1(); emit Emitted2(0, 1); }
  event Emitted1();
  event Emitted2(uint y, uint z);
}
