pragma solidity ^0.8.0;
contract SemanticSimilar15 {
  function f() public {
    require(!x(), "x");
    uint x;
    require((uint)x() < 100000000000000000000000000);
    uint(x);
    require(x == uint(x));
    x;
    uint(x);
    require(x == ((x == 0) & (x == 1)));
  }
}
