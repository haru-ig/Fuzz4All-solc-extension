pragma solidity ^0.8.0;
contract Mutant9a
{
  uint8 y;
  uint8 z;
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = z;
    z = _value;
    value = _value;
    return x;
  }
  function g() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9b
{
  uint8 y;
  uint8 z;
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    z = _value;
    value = _value;
    return x;
  }
  function g() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9c
{
  uint8 y;
  uint8 z;
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = _value;
    value = _value;
    return value;
  }
  function g() public view returns (uint8) {
    return value;
  }
  receive() external payable {}
}
