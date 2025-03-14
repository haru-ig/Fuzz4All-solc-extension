pragma solidity ^0.8.0;
contract SemanticSimilar466 {
  bytes32 public a;
  constructor () public {
    a = sha256('hello world');
  }
  function getA() public pure returns (uint128) {
    return 5;
  }
  function changeA(bytes32 a2) public {
    a = a2;
  }
}
contract SemanticSimilar504 {
  uint256 public i = 0;
  uint256 public j;
  constructor () public {
    emit event(j, 'j');
    i = 1;
  }
  fallback () external {
  }
  receive () external {
  }
  event event(uint256 i, bytes32 s);
}
contract SemanticSimilar32 {
  uint256 public i;
  constructor () public {
    i = 10;
  }
  fallback () external {
    i = i + 5;
  }
}
