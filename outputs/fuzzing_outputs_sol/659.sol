pragma solidity ^0.8.0;
contract Fallback {
  function receive() {
    bytes calldata value = msg.data;
  }
}
