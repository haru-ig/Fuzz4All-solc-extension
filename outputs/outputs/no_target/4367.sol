pragma solidity ^0.8.0;
contract X {
  struct St { uint i; string s; }
  function f(St memory x) public pure {x.i = 41;}
  function f(X x) public pure {x.f(x);}
}
contract Y {
  enum E { ZERO }
  function f(Y x) public pure {
    if (x is E)
        revert("Y should never be an E");
  }
  function f(X x) public pure {f(x);}
}
