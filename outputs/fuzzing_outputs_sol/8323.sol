pragma solidity ^0.8.0;
contract SemanticSimilar354 {
  function f() public payable {
    uint z;
    uint x;
    for (uint i = 0; i < 10; i++) {
      x; z; z;
    }
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar355 {
  function f(uint) public { function() public calldata {} }
  function f1(uint) public { function() public {} }

  uint z;
  uint x;
  for (uint i = 0; i < 10; i++) {
    x; z; z;
  }
}
