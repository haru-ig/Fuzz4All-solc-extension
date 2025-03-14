pragma solidity ^0.8.0;
contract SemanticSimilar15 {
  function f() public view returns(uint) {
    uint a = x;
    uint c = a;
    x = b / c;
  }
}
