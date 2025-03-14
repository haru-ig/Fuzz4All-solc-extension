pragma solidity ^0.8.0;
contract Contract {
  uint internal _value;
  constructor() {
    _value = 0x2;
  }
  function x() public pure returns (uint) {
    return _value;
  }
}
