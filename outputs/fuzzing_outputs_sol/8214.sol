pragma solidity ^0.8.0;
contract SemanticSimilar9{
  bool f0;
  uint f1;
  uint g1;
  uint x;
  constructor(bool f0, uint f1, uint g1) public{f0 = f0; f1 = f1; g1 = g1;}
  function f() public returns (uint){return (x)+g1;}
  function g() public pure returns (uint){return 0;}
}
contract SemanticSimilar10{
  bool f0;
  uint g1;
  uint f1;
  uint g0;
  constructor(bool f0, uint f1, uint g1) public{f0 = true; f1 = f1; g1 = g1;}
  function f() public {uint h = f1;}
  function g() public returns (uint) { emit Emitted1(); return g1; }
  function h() public{x = 1;}
  function h2() public {x = 0;}
  function h3() public returns (uint){return g1;}
  function h4() public returns (uint) {emit Emitted1(); return g0;}
  function h5() public {f1 = 1;}
  function h6() public {f0 = 6; emit Emitted2(); g0 = 3;f0 = 5;}
  function h7() public returns (uint){emit Emitted1(); return g1;}
  function h8() public returns (uint) {emit Emitted1(); return g1;}
  event Emitted1();
  event Emitted2();
}
