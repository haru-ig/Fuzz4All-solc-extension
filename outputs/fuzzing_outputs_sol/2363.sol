pragma solidity ^0.8.0;
contract MutatedCaller {
  function mutatedCallWithEther() public payable returns (uint256 amount) {
    amount = address(this).balance;
  }
  receive () external payable {}
}
