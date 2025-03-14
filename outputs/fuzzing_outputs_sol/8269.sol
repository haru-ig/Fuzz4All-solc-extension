pragma solidity ^0.8.0;
contract SemanticSimilar {
  address a;
  function a_addr() public {
    a = address(new SemanticSimilar14());
  }
  function a_func() public {
    a = new SemanticSimilar14();
  }
}
