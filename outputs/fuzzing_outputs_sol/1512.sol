pragma solidity ^0.8.0;
contract SemanticMutationExampleReverted {
  function fallback() external {
  }
}
pragma solidity ^0.8.0;
contract SemanticMutationExampleMutated {
  fallback function() pure external payable {}
}
