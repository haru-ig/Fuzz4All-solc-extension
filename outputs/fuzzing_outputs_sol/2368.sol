pragma solidity ^0.8.0;
contract FallbackCaller {
  function mutatedCallWithEther() public returns (uint256 amount) {
    amount = address(this).balance;
  }
}
