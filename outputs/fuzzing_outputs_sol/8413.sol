pragma solidity ^0.8.0;
contract SemanticSimilar492 {
  bytes32 a;
  constructor () public {
    a = sha256('hello world');
  }
  fallback () public {
  }
}
contract SemanticSimilar540 {
  bytes32 a;
  constructor (bytes32 _a) public {
    a = _a;
  }
  fallback () public { }
}
