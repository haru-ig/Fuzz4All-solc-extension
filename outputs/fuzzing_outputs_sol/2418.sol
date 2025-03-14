pragma solidity ^0.8.0;
contract Caller {
  function call() public view returns (string memory) {
    (bool result, ) = Caller2.call2.value(msg.value)("");
    if(!result) revert("Value should be transferred");
    return "";
  }
