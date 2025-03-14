pragma solidity ^0.8.0;
contract MutatedCaller {
  receive() external payable {
  }
}

contract Example {
  fallback() external pure {
  }
  receive() external payable {
  }
}
