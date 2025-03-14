pragma solidity ^0.8.0;
contract MutateSemEq3
{
  uint constant f = 2;
  uint test = 1;
  function mod_equal(uint x, uint y) public pure returns (uint)
  {
    uint yEqu = 1;
    if (x <= y)
    {
      yEqu = y;
    } else
    {
      yEqu = x;
    }
    if (yEqu == test)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
}
contract MutateSemEq4
{
  uint constant f = 2;
  uint test = 1;
  function _semneq(uint _x, uint _y) private pure returns (uint)
  {
    uint yEqu = 1;
    if (_x <= _y)
    {
      yEqu = _y;
    } else
    {
      yEqu = _x;
    }
    if (yEqu == test)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
}
