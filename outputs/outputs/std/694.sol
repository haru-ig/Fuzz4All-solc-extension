pragma solidity ^0.8.0;
contract MutateMut
{
  uint constant f = 3;
  function mod(uint x, uint y) public pure returns (uint)
  {
    x %= y;
    return x;
  }
}
