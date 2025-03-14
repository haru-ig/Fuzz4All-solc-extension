pragma solidity ^0.8.0;
contract Example {
  address payable f = payable(new Caller());
  function sendEtherTo(address target, uint256 amount) public payable fallback {
  }
}
