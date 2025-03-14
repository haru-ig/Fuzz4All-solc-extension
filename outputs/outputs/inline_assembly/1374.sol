pragma solidity ^0.8.0;
contract Mutant9b
{
  constructor () { value = 0; }
  function f(uint32 _value) public returns (uint32) {
    value = _value;
    return value;
  }
  function g() public view returns (uint32) {
    return value;
  }
  receive() external payable {}
}
contract Mutant9c
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
