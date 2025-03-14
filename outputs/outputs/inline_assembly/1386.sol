pragma solidity ^0.8.0;
contract Mutant9j
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 _value) public returns (uint32 result) {
    x = a + _value;
    result = _value + x;
    return result;
  }
  function g() public view returns (uint32) {
    return value;
  }
}

pragma solidity ^0.8.0;
contract Mutant9j
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f(uint32 b, uint32 c) public returns (uint32 result) {
    x = a + b + c;
    result = b + x;
    return result;
  }
  function g(uint32) public view returns (uint32) {
    return value;
  }
}
