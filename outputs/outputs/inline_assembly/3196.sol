pragma solidity ^0.8.0;
contract Contract {
  uint internal _value;
  constructor() {
    _value = 0xf56;
  }
  function x() public view returns (uint) {
    return _value;
  }
}
