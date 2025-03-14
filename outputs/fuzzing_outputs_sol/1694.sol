pragma solidity ^0.8.0;
contract Caller {
  function fallback() public {
    MutatedFallback().setFallbackData('Hello, fallback!');
  }
}
