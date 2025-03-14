pragma solidity ^0.8.0;
contract NonFallback {
  receive() external payable {
    throw;
  }
}
