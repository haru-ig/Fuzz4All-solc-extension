pragma solidity ^0.8.0;

contract Mutate
{
  uint constant f = 3;
  function func(uint x) public pure return (uint)
  {
    x %= f;
    return x;
  }
}
