pragma solidity ^0.8.0;
contract Mutant9c
{
  uint8 a;
  uint8 y;
  uint8 x;
  bool value;
  function f(uint8 _value) public returns (uint8) {
    x = a;
    a = _value;
    return a;
  }
  function g() public returns (uint12) {
    return a * x;
  }
  receive() external payable {}
}
contract Mutant9d
{
  uint8 value;
  function f(uint8 _value) public {
    value = _value;
  }
  function g() public returns (uint8) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9e
{
  uint8 x;
  uint8 value;
  function g() public return (uint12) {
    value = 56;
    return value;
  }
  function f(uint8 _value) public returns (uint12) {
    x = value;
    value = _value;
    return value;
  }
}
contract Mutant9f
{
  uint16 value;
  function g() public returns (uint12) {
    value = 60;
    return value;
  }
  function f(uint16 _value) public returns (uint12) {
    value = _value;
    return value;
  }
}
contract Mutant9g
{
  uint8 y;
  uint8 x;
