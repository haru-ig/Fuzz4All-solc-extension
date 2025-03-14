pragma solidity ^0.8.0;
contract Semantics {
  function sendEtherTo(address target, uint256 amount) public payable {}
  fallback() external payable {}
  receive() external payable {}
}


pragma solidity ^0.8.0;
contract Caller {
  function sendTo(address target, uint256 amount) public payable {
    if (msg.value > amount) revert('cannot send more than 1 Ether');
  }
  receive() external payable {}
}
