pragma solidity ^0.8.0;
contract Mutant
{
  address public x;
  constructor() {
    x = msg.sender;
  }
  receive() external payable {}
}
