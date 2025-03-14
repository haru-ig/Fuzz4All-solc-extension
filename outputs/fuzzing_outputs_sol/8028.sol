pragma solidity ^0.8.0;
contract SemanticEquivalent0
{
  function test() public pure { }
  receive() external payable { }
}

pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function test() public pure { }
  receive() external payable { }
}

pragma solidity ^0.8.0;
contract EquivalentFallback
{
  function fallback() public pure payable {}
}
