pragma solidity ^0.8.0;
contract Fallback1 {
  address payable _address;
  fallback() external payable {
    _address.sendValue(msg.value);
  }
  receive() external payable {}
}
