pragma solidity ^0.8.0;
contract MutatedCaller2 is Modification {
  function mutatedCallWithEther() public payable returns (uint256 amount) {
    return modify();
  }
  fallback () external payable {}
  receive () external payable {}
}
