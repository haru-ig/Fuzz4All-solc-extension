pragma solidity ^0.8.0;
contract ReturningFallback {
  function fallback() pure public returns (uint) {
    return 0;
  }
  receive() external payable {
  }
}
