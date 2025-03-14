pragma solidity ^0.8.0;
contract Contract
{
  SemanticEquivalent public se;
  fallback () {

  }
  receive () returns (uint) {

  }
}

pragma solidity ^0.8.0;
contract NonFallback1
{
  fallback () public payable {

  }
}

pragma solidity ^0.8.0;
contract NonFallback2
{
  fallback () public {

  }
  receive () public returns (uint) {

  }
}
