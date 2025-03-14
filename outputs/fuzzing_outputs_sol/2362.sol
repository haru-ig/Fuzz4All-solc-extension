pragma solidity ^0.8.0;
contract MutatedCaller {
  function mutatedCallNoReturn() internal returns (uint256 amount) {
    return address(this).balance;
  }
  fallback () external payable {}
  receive () external payable {}
 }
