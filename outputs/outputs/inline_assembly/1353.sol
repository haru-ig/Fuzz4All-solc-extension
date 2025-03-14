pragma solidity ^0.8.0;
contract Mutant8c
{
  uint8 y;
  uint8 value;
  uint8 x;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    y = 0;
    value = _value;
    return x;
  }
  function g() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
contract Mutant8d
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
    return value;
  }
  receive() external payable {}
}
contract Mutant8e
{
  uint8 x;
  uint8 y;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
contract Mutant8f
{
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    value = _value;
    return value;
  }
  function g() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
