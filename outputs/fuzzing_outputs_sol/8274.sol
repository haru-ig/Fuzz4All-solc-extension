pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  uint public b;
  uint public x;
  function f() public {
    uint a = 234987;
    uint c = a / b;
    x = (100 * c) / b;
  }
}


pragma solidity ^0.8.0;
contract SemanticSimilar15 {
  uint public a;
  uint public b = 467;
  function f() public pure returns(uint) {
    uint a = (236) / a;
    return a*b*a;
  }
}
