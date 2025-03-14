pragma solidity ^0.8.0;
contract CallerExample7 {
  function callerCallValue() public payable {
    msg.sender.sendValue(msg.value);
  }
}
