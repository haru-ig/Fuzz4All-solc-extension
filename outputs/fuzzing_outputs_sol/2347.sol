pragma solidity ^0.8.0;
contract MutatedCaller {
  function mutatedCallWithEther() public payable returns (uint256 amount) {
    return address(this).balance;
  }
  fallback () external payable {}
  receive () external payable {}
}
