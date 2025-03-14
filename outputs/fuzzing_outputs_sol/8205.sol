pragma solidity ^0.8.0;
contract SemanticSimilar9{
  uint public g1;
  modifier OnlyOnChain1 {
    require(msg.value >= 1 ether);
    _;
  }
  uint public g2;
  function f() public returns (uint,uint) {f1 = true; g1 = 20; g1=21; g2 = 11; return 0,0;
  f1=false; return 0,0;}
  function g() public returns (uint,uint,uint) { emit Emitted1(); return 0,g1,g2; }
  function h() OnlyOnChain1 public payable {}
  event Emitted1();
}
