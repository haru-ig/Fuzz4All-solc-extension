pragma solidity ^0.8.0;
contract FallbackMutated {
  function mutatedFallback() public payable pure {
    assembly {
      ret 0
    }
  }
  fallback () external payable {}
  receive () external payable {}
}
