pragma solidity ^0.8.0;
contract FallbackCaller13 {
  function call() public payable {msg.data.length == 0}
}
