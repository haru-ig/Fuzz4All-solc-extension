pragma solidity ^0.8.0;
contract Caller2 {
  fallback function() public payable {
  }
  function call() public {
  }
}
contract Caller3 {
  fallback function() public payable {
  }
  receive() public payable payable {
  }
}
