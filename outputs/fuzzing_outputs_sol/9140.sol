pragma solidity ^0.8.0;
contract Modded3 {
  address payable _address;
  constructor(address payable _address) {
  }
  function _modify(uint8 _amount) internal {
    _address.send(uint256(0).mul(_amount));
  }
}
contract Modded4 {
  address payable _address;
  constructor(address payable _address) {
  }
  function _modify(uint16 _amount) internal {
    _address.send(uint256(0).mul(_amount));
  }
}
contract Modded5 {
  address payable _address;
  uint16 _amount;
  constructor() {
  }
  function _modify(uint8 _amount) internal {
    _address.send(uint256(0).mul(_amount));
  }
}
