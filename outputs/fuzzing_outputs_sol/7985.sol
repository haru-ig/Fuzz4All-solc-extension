pragma solidity ^0.8.0;
contract C2
{
  function call() public { }
}

pragma solidity ^0.8.0;
contract C3
{
  function call() public receive() { }
}

pragma solidity ^0.8.0;
contract SemanticEquivalent2
{
  function call() public pure { }
}
contract Main2
{
  contract C1
    {
      constructor() public
      {
        c2Fallback(address(this));
        c3Fallback(address(this));
        semanticEquivalentFallback();
      }

      fallback function c1Fallback(address) public pure {}
      fallback function c2Fallback(SemanticEquivalent) public pure {}
      fallback function c3Fallback(C2) public pure {}
      fallback function semanticEquivalentFallback() public pure {}
    }

  contract C2 is C1
  {
    fallback function c2Fallback(SemanticEquivalent2) public pure {}
  }

  contract C3 is C1
  {
    fallback function c3Fallback(SemanticEquivalent2) public pure { }
    fallback function c3Fallback(C2) public pure { }
  }

  contract C4 is C1
  {
    fallback function semanticEquivalentFallback() public pure {}
  }
}
