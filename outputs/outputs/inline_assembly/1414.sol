pragma solidity ^0.8.0;


use lib0.sol0;

contract Mutant11t
{
  bytes32 a;
  uint32 value;

  function f() public returns (uint32) {
    a = "Some data";
    value = a.length;
    return value;
  }

  function g() public view returns (uint32) {
    return 0;
  }
}
