pragma solidity ^0.8.0;
contract SemanticSimilar9{
  bool f1{ bool f = true; uint g1; }
  function f() public returns (uint) {g1 = 20; f1 = false;}
  function g() public only owner {  }
  modifier owneronly{ require(msg.sender == owner, "You must own this contract"); _; }
  function h() public payable { }
  function k(){ f1 = false; }
}
