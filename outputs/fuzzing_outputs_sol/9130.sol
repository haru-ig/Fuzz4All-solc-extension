pragma solidity ^0.8.0;
contract SendEtherCaller {
  address payable _address;
  constructor(address payable _address) {
    _address.transfer(msg.value);
  }
}
