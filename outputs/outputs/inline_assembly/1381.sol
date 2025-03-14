pragma solidity ^0.8.0;
contract Mutant9j
{
  uint a;
  uint value;
  function f(uint _value) public returns (uint) {
    value = _value;
    return value;
  }
  function g(uint _value) public returns (uint) {
    value = _value;
    a = _value * value;
    return _value;
   }
}

pragma solidity ^0.8.0;
contract Mutant9j
{
  uint32 x;
  function f() public {
  }
  function g(uint32 _value) public {
    x = a + _value;
    }
  function h() public returns (uint32) {
   return x;
  }
  function k() public {
  }
}
