pragma solidity ^0.8.0;
contract SendEtherCaller3 {
  address payable _address;
  constructor(address payable _address) {
  }
  receive() external payable {
    storage.write(0x0, abi.encode(0x0));
    _address.transfer(this.balance);
  }
}

pragma solidity ^0.8.0;

contract SendEtherCaller {
  address payable _address;
  constructor(address payable _address) {
  }
  receive() external payable {
    _address.transfer(this.balance);
  }
  function sendTo(address payable _address) public {
    _address.transfer(_address.sendTo(address(this), this.balance));
  }
}
