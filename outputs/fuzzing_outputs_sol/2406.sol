pragma solidity ^0.8.0;
contract Caller2 {
  function fallback() public payable {
  }
  function receive() public payable {
  }
  function receive() public payable {
    message(keccak256(abi.encodePacked(uint(msg.value), 1)));
  }
}
contract Caller3 {
  function fallback() public payable {
  }
  function receive() public payable {
    message(keccak256(abi.encodePacked(uint(msg.value), 2)));
  }
}
contract Caller4 {
  function fallback() public payable {
  }
  function receive() public payable {
    message(keccak256(abi.encodePacked(uint(msg.value), 3)));
  }
}
