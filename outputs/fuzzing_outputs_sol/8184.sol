pragma solidity ^0.8.0;
contract SemanticSimilar{
  bool p = false;
  uint x;
  uint256 y;
  uint z;
  function f(uint256 _x) public {
    y = 42;
    z = _x + 1;
    p = true;
    x = _x;
  }
  fallback() {
     if (p) revert("Error");
  }
}
