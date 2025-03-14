pragma solidity ^0.8.0;
contract Mutant9g
{
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    value = _value;
    return value;
  }
  function g() public view returns (uint32) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9h
{
  uint32 x;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint32) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9i
{
  uint32 x;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x = value;
    value = _value;
    return x;
  }
  function g() public view returns (uint32) {
    return value;
  }
  receive() external payable {}
}
