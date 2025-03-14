pragma solidity ^0.8.0;
contract Mutant9a
{
  uint16 y;
  uint16 x;
  uint16 value;
  function f(uint16 _value) public returns (uint16) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint16) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9b
{
  uint16 y;
  uint16 x;
  uint16 value;
  function f(uint16 _value) public returns (uint16) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint16) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9c
{
  uint16 x;
  uint16 y;
  uint16 value;
  function f(uint16 _value) public returns (uint16) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint16) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9d
{
  uint16 value;
  function f(uint16 _value) public returns (uint16) {
    value = _value;
    return value;
  }
  function g()
