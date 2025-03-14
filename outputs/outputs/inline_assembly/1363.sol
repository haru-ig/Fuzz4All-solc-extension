pragma solidity ^0.8.0;
contract Mutant8g
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
contract Mutant8h
{
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
contract Mutant8i
{
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
