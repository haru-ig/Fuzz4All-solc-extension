pragma solidity ^0.8.0;
contract SemanticSimilar491 {
  bytes32 a;
  constructor () public {
    a = sha256('hello world');
  }
  fallback () external payable {
  }
}
contract SemanticSimilar539 {
  bytes32 a;
  constructor (bytes32 _a) public {
    a = _a;
  }
  fallback () external payable { }
}
