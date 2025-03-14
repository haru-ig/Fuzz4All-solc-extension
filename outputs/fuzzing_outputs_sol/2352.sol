pragma solidity ^0.8.0;
contract MutatedCaller {
  function mutatedCallWithEther() public payable returns (uint256 amount) {
    if (this.balance > 0) {
      return this.balance;
    } else {
      revert("Address has no balance");
    }
  }
}
