pragma solidity ^0.8.0;
contract NonFallback {
  fallback() external payable {
  }
}
