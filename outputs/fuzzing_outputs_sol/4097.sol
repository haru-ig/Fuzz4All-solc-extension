pragma solidity ^0.8.0;
contract Fallback {
  address payable fallbackFunction;

  receive() external payable {
    fallbackFunction.receive(msg.data);
  }
}
