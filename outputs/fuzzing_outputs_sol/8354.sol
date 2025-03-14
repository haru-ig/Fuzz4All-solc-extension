pragma solidity ^0.8.0;
contract SemanticSimilar429 {
  uint public a;
  constructor() public {
    a = 1;
  }
  fallback () external {}
  receive () payable external { }
}
contract SemanticSimilar430 {
  uint256 a;
  constructor() public { }
  fallback(uint _value) payable external { }
}
contract SemanticSimilar431 {
  uint256 a;
  constructor() public { }
  fallback() payable external { }
}
contract SemanticSimilar432 {
  uint256 a;
  constructor() public { }
  fallback () external { }
}
