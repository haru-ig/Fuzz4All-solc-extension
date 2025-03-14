pragma solidity ^0.8.0;
contract SemanticMutationExample2 {
  function fallback() internal {
    require(address(this).balance >= 1 ether);
  }
}
