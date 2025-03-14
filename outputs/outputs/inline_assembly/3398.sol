pragma solidity ^0.8.0;
contract Mutability2 {
  uint public constant ZERO = 0;
  uint public value;
  mapping (address => uint) public addr;
  bool public bool;
  event Change(uint oldValue, uint newValue);
  constructor () {
    value = ZERO;
    addr[msg.sender] = ZERO;
    bool = true;
  }
  function set (uint _value) public {
    addr[msg.sender] = _value;
    value = _value;
  }
  function setValue (uint _value) public returns (uint) {
    value = _value;
    emit Change(ZERO, _value, 1);
    return _value;
  }
}
