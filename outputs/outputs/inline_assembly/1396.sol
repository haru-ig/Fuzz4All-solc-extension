pragma solidity ^0.8.0;
contract Mutant19l
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f() public returns (uint32) {
    x = value + 3;
    return value + x;
    }
  function g() public constant returns (uint32) {
    return value + x;
    }
}
pragma solidity ^0.6.0;
contract Mutant19b
{
  uint32 x;
  uint32 a;
  uint32 value;
  function f() public returns (uint32) {
    x = value + 3;
    return value + x;
    }
  function g() public returns (uint32) {
    return value + x;
    }
}
