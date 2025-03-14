pragma solidity ^0.8.0;
contract SemanticMutationExample {
  uint mut a;
  function setA(uint newvalue) public { a = newvalue; }
  function revert() public { revert(); }
}
