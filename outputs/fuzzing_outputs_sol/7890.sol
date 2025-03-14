pragma solidity ^0.8.0;
contract Caller {
  receive() external {}

  fallback() external payable virtual {
    revert("Fallback not called");
  }
}
