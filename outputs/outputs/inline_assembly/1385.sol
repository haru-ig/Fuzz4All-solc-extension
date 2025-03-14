pragma solidity ^0.8.0;
contract Mutant9j
{
  uint32 public x;
  uint32 public a;
  uint32 public value;
  function f(uint32 _value) public returns (uint32) {
    x = a + _value;
    return value + x;
    }
  function g() public view returns (uint32) {
    return value;
    }
}
```
