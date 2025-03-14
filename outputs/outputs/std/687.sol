pragma solidity ^0.8.0;
contract MutateMod
{
  uint constant f = 3;
  function mod(uint x, uint y) public pure returns (uint)
  {
    uint yEqu = 1;
    if (x <= y)
    {
      yEqu = y;
    } else
    {
      yEqu = x;
    }
    if (yEqu == f)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
}
