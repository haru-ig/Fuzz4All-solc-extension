pragma solidity ^0.8.0;
contract MutateMut2
{
  uint constant f = 3 * 32767 / 128;
  function mod(uint x, uint y) public pure returns (uint)
  {
    x %= y;
    return x;
  }
}
