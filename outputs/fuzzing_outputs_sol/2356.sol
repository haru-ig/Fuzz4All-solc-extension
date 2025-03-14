pragma solidity ^0.8.0;
contract MutatedCaller {
  struct FallbackStruct {
    address receiver;
    bytes callData;
  }

  function mutatedCallWithEther() public payable returns (uint256 amount) {
    return address(this).balance;
  }

  fallback (FallbackStruct data) payable {
    data.receiver.transfer(data.callData);
  }
}
