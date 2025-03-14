pragma solidity ^0.8.0;
contract Caller {
  uint256 value;
  function myFallbackFunction() public payable {
    (uint256 storage) _ = msg.value;
  }
}
