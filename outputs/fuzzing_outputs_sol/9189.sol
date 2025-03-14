pragma solidity ^0.8.0;
contract Caller8b {
  address _receiver;
  address payable _sender;
  constructor(address payable _address) {
    _receiver = _address;
  }
  function fallback() external payable {
    _sender = msg.sender;
  }
  fallback() public pure {
    _sender = msg.sender;
  }
  receive() public pure payable {}
}
