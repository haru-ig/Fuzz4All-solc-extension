pragma solidity ^0.8.0;
contract MutateSemEq3
{
  uint constant f = 2;
  function mod_equal(uint x, uint y) public pure returns (uint)
  {
    if (_y)
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
    } else
    {
      uint xEqu = 1;
      if (x >= y)
      {
        xEqu = y;
      } else
      {
        xEqu = x;
      }
      if (xEqu == f)
      {
        return 1;
      } else
      {
        return 0;
      }
    }
  }
}
contract MutateSemEq4
{
  uint constant f = 2;
  function _semneq(uint _x, uint _y) private pure returns (uint)
  {
    uint xEqu = 1;
    if (_y)
    {
      uint xNotEqual = 1;
      if (_x <= _y)
      {
        xNotEqual = _y;
      } else
