pragma solidity ^0.8.0;
contract MutateMod2
{
  uint constant d = 3;
  uint constant x = 32123;
  function mod(uint x, uint y) public view returns (uint)
  {
    uint yEqu = 1;
    if (x <= y)
    {
      yEqu = y;
    } else
    {
      yEqu = x;
    }
    if (yEqu == d)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
}
