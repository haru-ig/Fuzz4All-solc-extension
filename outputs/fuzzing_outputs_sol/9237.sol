pragma solidity ^0.8.0;
contract Fallback {
  fallback() external payable {
  }
  receive() external {
    storage.data = msg.data;
  }
}
contract S {
  mapping(bytes32=>uint) data;
}
