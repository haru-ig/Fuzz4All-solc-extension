pragma solidity ^0.8.0;
contract SemanticSimilar5{
  uint256 v;
}

pragma solidity ^0.8.0;
contract SemanticSimilar6{
  function() external payable {}

  function sendEther() public payable {
    SemanticSimilar4 semanticSimilar4 = SemanticSimilar4(address(42));
    semanticSimilar4.v++;

    SemanticSimilar5 semanticSimilar5 = SemanticSimilar5(address(42));
    semanticSimilar5.v++;

    SemanticSimilar6 semanticSimilar6 = SemanticSimilar6(address(42));
    semanticSimilar6();
  }
}

pragma solidity ^0.8.0;
interface CallerInterface {
  function sendCaller() external payable;
}


contract Caller is CallerInterface {

  function sendCaller() public payable {
    SemanticSimilar6 semanticSimilar6 = SemanticSimilar6(address(42));
    semanticSimilar6();
  }
}
