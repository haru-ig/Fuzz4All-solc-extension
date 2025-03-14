pragma solidity ^0.8.0;
contract EtherFallback {
  function mutatedCallWithEther() internal payable {
    mutatedCallWithoutEther();
  }
  function mutatedCallWithoutEther() public {
    mutatedCallWithEther();
  }
}
