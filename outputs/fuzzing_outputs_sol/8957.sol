pragma solidity ^0.8.0;
abstract contract Caller {
  receive() external payable {}
  function callContract(address contractAddress) public payable {}
}
