pragma solidity ^0.8.0;
contract Fallback {
  function receive() payable {}
  receive() external {}
}
contract MultipleFallback {
  function callFallback(address target) public {
  }
  fallback() public {
  }
}
