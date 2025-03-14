pragma solidity ^0.8.0;
contract Fallback {
  function () public payable {
    assembly { msg.data.sub(1) }
  }
}
