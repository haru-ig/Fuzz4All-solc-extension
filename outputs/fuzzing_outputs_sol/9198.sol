pragma solidity ^0.8.0;
contract Caller {
  require(msg.value == 1 ether);
  address payable public _receiver;
  address public _sender;
  constructor(address payable _address) {
    _receiver = _address;
    _sender = msg.sender;
  }
  receive() external payable {
  }
  function pay() public returns (bool success) {
    _receiver.transfer(_sender, msg.value);
    return true;
  }
}
