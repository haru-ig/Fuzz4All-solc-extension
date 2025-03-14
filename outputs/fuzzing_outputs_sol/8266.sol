pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  uint public x;
  uint public b = 456;
  function f() public pure {
    uint a;
    {
      uint x = 0x20;
      (a, x, x) = (0x20, 0x11, 0x22);
      x = x / x;
    }
    x = 0x20;
  }
}
