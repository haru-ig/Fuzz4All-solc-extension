pragma solidity ^0.8.0;
contract Receive
{
  uint public fallbackValue;
  receive() external {
    fallbackValue += 1;
  }
}
