pragma solidity ^0.8.0;
contract Caller1 {
  function call() public {
  }
}
contract Caller {
  function fallback() public payable {
  }

  function call() public payable {
  }
}
