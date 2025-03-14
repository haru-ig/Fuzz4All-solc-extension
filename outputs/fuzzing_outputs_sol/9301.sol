pragma solidity ^0.8.0;
contract SemanticFallbackMutatedSemantic {
  function () external payable {
    fallback();
  }
}
