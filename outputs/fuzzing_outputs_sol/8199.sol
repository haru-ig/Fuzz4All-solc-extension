pragma solidity ^0.8.0;
contract SemanticSimilar7{
  bool f1;
  function f() public returns (uint) {f1 = true; f1=false; return 0;}
  function g() public payable {emit Emitted1();  }
  event Emitted1();
}
