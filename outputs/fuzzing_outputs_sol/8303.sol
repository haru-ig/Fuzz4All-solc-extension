pragma solidity ^0.8.0;
contract SemanticSimilar {
  function f(uint) public payable {
    uint x; x; x; x; x; x;
  }
  function receiveCall(uint) external returns (uint);
}
contract SemanticSimilarFallback {
  function f(uint) public {
    uint x; x; x; x; x; x; x; x; x; x;
    x; for (uint i = 0; i < 10; i++) {
      x;
    }
  }
  function receiveCall(uint) public pure returns (uint);
}
contract SemanticSimilar203 {
  function f(uint) public {
    uint x; x; x; x; x; x; x; x; x; x;
    x; x; for (uint i = 0; i < 10; i++) {
      x; x;
    }
    return 1;
  }
  function receiveCall(uint) public pure returns (uint);
}
contract SemanticSimilar207 {
  function f(uint) public {
    uint x; x; x; x; x; x; x; x; x; x;
    x; x; for (uint i = 0; i < 10; i++) {
      x; x; x; x;
    }
  }
  function receiveCall(uint) public pure returns (uint);
}
