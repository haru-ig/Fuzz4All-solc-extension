pragma solidity ^0.8.0;
contract SemanticSimilar6{
  bool f1;
  function f() public {f1 = true;}
  function g() public {emit Emitted1();}
  event Emitted1();
  function h() public{f1 = true;}
  function i() public {f1 = true;}
  event Emitted6();
}


pragma solidity ^0.7.0;
contract SemanticSimilar7{
  bool f1;
  function f() public{f1 = true;}
  function g() public{f1 = true;}
  event Emitted4();
}
contract SemanticSimilar8{
  bool f1;
  bool f2;
  bool f3;
  bool f4;
  function f() public {f1 = true;}
  function g() public {f2 = true;}
  function h() public {f3 = true;}
  function i() public {f4 = true;}
}
