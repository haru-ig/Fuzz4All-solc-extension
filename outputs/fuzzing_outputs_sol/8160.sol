pragma solidity ^0.8.0;
contract SemanticSimilar3{
  uint256 v;
}
contract SemanticSimilar2{
  bytes32 _hash;
  uint256 v;
  constructor (bytes32 hash) {
    v = 5;
    _hash = hash;
  }
}
contract SemanticSimilar1{
  uint256 v;
}

pragma solidity ^0.8.0;
contract SemanticSimilar3{
  uint256 v;
  receive () payable {
    v = 5;
  }
}
contract SemanticSimilar2{
  bytes32 _hash;
  uint256 v;
  constructor (address from, bytes32 hash) {
    _hash = hash;
    v = 5;
  }
}
contract SemanticSimilar1{
  uint256 v;
  constructor () {
    v = 5;
  }
  receive () payable {
    v = 5;
  }
}
