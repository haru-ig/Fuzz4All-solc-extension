pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  uint public x;
  uint public b = 456;
  function f() public {
    uint a = x;
    uint c = a;
    x = c / c;
  }
}
