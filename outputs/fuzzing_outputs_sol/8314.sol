pragma solidity ^0.8.0;
contract SemanticSimilar207 {
  function f(uint) payable public {
    uint x; uint z;
    uint j;
    for (uint i = 0; i < 10; i++) {
      x; x; x; z; x; x; x; x; x; x; x; x; x;
    }
    z; x; x; z; j;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar208 {
  function f(uint) public {
    uint x; uint z;
    uint j;
    for (uint i = 0; i < 10; i++) {
      x; x; x; z; x; x; x; x; x; x; x; x; x;
    }
    z; x; x; z; j;
  }

  function fallback() payable{
    uint x; uint z;
    uint j;
    for (uint i = 0; i < 10; i++) {
      x; x; x; z; x; x; x; x; x; x; x; x; x;
    }
    z; x; x; z; j;
  }
}
