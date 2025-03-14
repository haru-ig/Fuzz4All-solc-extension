pragma solidity ^0.8.0;
contract SemanticSimilar10{
  uint b1;
  function f(uint x) public returns (uint) {
    b1 = x;
    b1 = 0x8000000000001;
    b1 = 1;
    b1 = 0x80000000000001;
    b1 = 0x8000000000001;
    b1 = 0x8000000000001;
  }
}
