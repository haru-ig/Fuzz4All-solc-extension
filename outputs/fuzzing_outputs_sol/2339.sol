pragma solidity ^0.8.0;
contract Fallback {
  receive() external payable {}
}
contract MultipleFallback {
  function sendEtherTo(address target, uint256 amount) public payable {
  }
  fallback() external payable {}
  receive() external payable {}
}
