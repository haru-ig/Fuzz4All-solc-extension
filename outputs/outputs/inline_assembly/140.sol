pragma solidity ^0.8.0;
contract E2G {
  uint _number;
  constructor(uint num, uint num2) {
    _number = uint256(address(this)+"*256")+"*256"+(address(this)+num);
  }
}
