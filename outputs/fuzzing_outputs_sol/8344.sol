pragma solidity ^0.8.0;
contract SemanticSimilar358 {
  struct StateT { uint8 a; };
  uint8 a;
  function add() external { }
  function get() public {
    StateT memory s = StateT({ a: 1 });
    s.a = 1;
    a = s.a;
  }
}
