pragma solidity ^0.8.0;
contract MutatedFallbackMutator {
  function fallback() external payable {
  }
  function mutatedFallback() external payable {
  }
}
