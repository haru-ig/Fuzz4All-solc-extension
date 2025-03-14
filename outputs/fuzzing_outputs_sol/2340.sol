pragma solidity ^0.8.0;
contract MultipleFallback {
  function sendEtherTo(address target, uint256 amount) public {}
  fallback() external {}
  receive() external {}
}
