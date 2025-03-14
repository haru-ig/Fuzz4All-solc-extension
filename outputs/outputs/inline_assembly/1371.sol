pragma solidity ^0.8.0;
contract Mutant9j
{
  uint32 x;
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    x = _value;
    value = _value;
    return x;
  }
  function g() public view returns (uint32) {
    return value;
  }
  receive() external payable {}
}
