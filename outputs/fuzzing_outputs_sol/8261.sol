pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  uint public x;
  function f(uint v1) public {
    uint a = v1 + b;
    b = x;
    x = a + c;
  }
}
