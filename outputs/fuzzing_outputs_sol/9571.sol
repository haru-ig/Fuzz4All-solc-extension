pragma solidity ^0.8.0;
contract NonPayableCaller {
  function nonPayableNonFallback() public payable {
  }
}
