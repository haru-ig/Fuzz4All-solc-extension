pragma solidity ^0.8.0;
contract Mutant
{
  address public x;
  mapping(address => uint256) public count;
  constructor() {
    x = msg.sender;
  }
  receive() external payable {}
}
