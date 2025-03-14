pragma solidity ^0.8.0;
contract Caller {
  uint _storage = 0;
  function callBackFunc(uint _value) public {
    uint v = 1;
    _storage += _value;
    while (v < 10) {
      _storage += v;
      v += v;
    }
  }
}
