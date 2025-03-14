pragma solidity ^0.8.0;
contract Sold is MutatedCaller {
  function mutatedCallWithEther() public payable override returns (uint256 amount) {
    return 42;
  }
  receive () public payment {}
}
