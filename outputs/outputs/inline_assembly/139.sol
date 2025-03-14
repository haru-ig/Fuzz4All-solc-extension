pragma solidity ^0.8.0;
contract E4G {

  uint16 _number;
  constructor(uint16 num, uint16 num2) {
    _number = num2*256 +num;
  }
}
