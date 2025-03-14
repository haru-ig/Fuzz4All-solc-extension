pragma solidity ^0.8.0;
contract Mutant8p3c
{
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    x = value;
    value = _value;
    x = y;
  }
  function g() public view returns (uint8) {
    return x;
  }
  receive() external payable {}
}
contract Mutant8p4
{
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    value = _value;
    x = y;
  }
  function g() public view returns (uint8) {
    return x;
  }
  receive() external payable {}
}
contract Mutant8p5
{
  uint8 x;
  uint8 value;
  function f(uint8 _value) public returns (uint8) {
    value = _value;
    x = y;
    x = y;
  }
  function g() public view returns (uint8) {
    return x;
  }
  receive() external payable {}
}
