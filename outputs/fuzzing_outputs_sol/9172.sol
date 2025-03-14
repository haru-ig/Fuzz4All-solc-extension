pragma solidity ^0.8.0;
contract Caller21 {
  address payable _sender;
  address payable _receiverAddress;
  uint _tokenNumber;
  constructor(address payable _address, address payable _receiverAddress, uint _tokenNumber) public {
    _receiver(_receiverAddress, _tokenNumber);
  }
  receive() external payable {
    _sender.send(_tokenNumber);
  }
  function _receiver(address payable _address, uint _tokenNumber) internal {
    _receiverAddress = _address;
  }
}
contract Caller13 {
    address payable _sender;
    address payable _receiverAddress;
    uint _tokenNumber;
    constructor(address payable _address, address payable _receiverAddress,  uint _tokenNumber) public {
      _receiver(_receiverAddress, _tokenNumber);
    }
    receive() external payable {
      _sender.send(_tokenNumber);
    }
    function _receiver(address payable _address, uint _tokenNumber) internal {
      _receiverAddress = _address;
    }
}
