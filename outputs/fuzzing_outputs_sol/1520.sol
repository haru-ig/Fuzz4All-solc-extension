pragma solidity ^0.8.0;
contract SemanticMutationExample {
  function fallback(uint) external payable {
    uint x = 2 ether;
    assembly {x := x + 2}
  }
}
