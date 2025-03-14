pragma solidity ^0.8.0;
contract Mutant9c
{
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    value = _value;
    return value;
  }
  function g() public returns (uint8) {
    return value;
  }
  function h() public returns (uint8) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9d
{
  uint8 x;
  uint8 y;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    value = _value;
    return value;
  }
  function g() public returns (uint8) {
    return value;
  }
  function h() public returns (uint8) {
    return value;
  }
  function i() public returns (uint8) {
    return x;
  }
}
contract Mutant9e
{
  uint8 x1;
  uint8 x2;
  uint8 y;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    y = x1 + x2;
    value = _value;
    return y;
  }
  function g() public view returns (uint8) {
    return x1;
  }
  function h() public view returns (uint8) {
    return x2;
  }
  function i() public view returns (uint8) {
    return y;
  }
}
contract Mutant9f
{
  uint8 x;
  uint8 y;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    y = x1 + x3;
    value = _value;
    return y;
  }
  function g() public view returns (uint8) {
    return x1;
  }
  function h() public view returns (uint8) {
    return x3;
  }
  function i() public
