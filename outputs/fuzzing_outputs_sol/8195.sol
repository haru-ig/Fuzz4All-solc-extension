pragma solidity ^0.8.0;
contract SemanticSimilar6{
  bool f2;
  assembly {f1 := mload(0x04) % 2} ;
  function f() public returns (uint) {if(true){return 42;}else {f2 = true; return 0;} }
  function g() public {emit Emitted2(); emit A2();}
  event Emitted2();
  event A2();
}
