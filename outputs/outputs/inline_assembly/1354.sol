pragma solidity ^0.8.0;
contract Mutant8
{
  uint8 y;
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint8) {
    if (value > 1) x += value;
    return value;
  }
  receive() external payable {}
}
contract Mutant9
{
  uint8 y;
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint8) {
    if (value > 1) y += value;
    return y;
  }
  receive() external payable {}
}
contract Mutant10
{
  uint8 y;
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint8) {
    if (value > 1) { y += value; }
    else { y -= value; }
    return value + y;
  }
  receive() external payable {}
}
contract Mutant11
{
  uint8 y;
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint8) {
    if (value > 1) value -= value;
    else value += value;
    return x + value;
  }
  receive() external payable {}
}
contract Mutant12
{
  uint8 y;
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint8) {
    if (x < y) {
