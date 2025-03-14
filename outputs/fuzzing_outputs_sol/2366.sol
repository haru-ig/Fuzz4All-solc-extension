pragma solidity ^0.8.0;
contract MutatedCaller0 {
  function mutatedCallWithEther() public payable returns (uint256 amount) {
    require(msg.value > 0, 'Invalid msg.value');
    amount = address(this).balance;
  }
  function mutatedCallDataWithEther() public payable returns (uint256 amount, bytes memory data) {
    amount = address(this).balance;
    data = bytes(msg.data);
  }
