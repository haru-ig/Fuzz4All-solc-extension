pragma solidity ^0.8.0;
contract Mutant9j
{
  uint32 value;
  function f(uint32 _value) public returns (uint32) {
    value = _value;
    uint32 _x = 0xf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f;
    value = _x;
    return value;
  }
  function g() public view returns (uint32) {
    return value;
  }
  receive() external payable {}
}
