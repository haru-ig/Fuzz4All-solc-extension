pragma solidity ^0.8.0;
contract Fallback {
  fallback() external payable payable fallback(uint){
  }
  receive() external payable payable fallback(uint){
  }
  receive() external payable {
  }
}
