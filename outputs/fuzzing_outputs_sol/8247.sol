pragma solidity ^0.8.0;
contract SemanticSimilar12 {
  uint256 s1;
  function f() public {
    uint256 s = 0;
    s = 1;
    s = 0xbeef;
    s = 0;
    s = 0xbeef;
    s = 314;
    s = 2;
    s = 0xbeef;
    s = 0;
    s = 0xbeef;
    s = s / 10;
    s = s / 100;
  }
}
