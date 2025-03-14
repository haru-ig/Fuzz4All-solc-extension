pragma solidity ^0.8.0;
contract SemanticFallback {
  fallback() external payable {
  }
}
contract Caller {
  function _fallback() public payable {
  }
}
