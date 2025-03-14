pragma solidity ^0.8.0;
contract Mutant9g
{
  uint8 _x;
  uint8 p;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    _x = _value;
    value = _value;
    return _x;
  }
  function g() public view returns (uint8) {
    return _x;
  }
  function h() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9h
{
  uint8 x;
  uint8 p;
  uint8 _x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = _value;
    _x = _value;
    value = _value;
    return _x;
  }
  function g() public view returns (uint8) {
    return _x;
  }
  function h() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9i
{
  uint8 x;
  uint8 p;
  uint8 _x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = _value;
    _x = _value;
    value = _value;
    return _x;
  }
  function g() public view returns (uint8) {
    return _x;
  }
  function h() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
