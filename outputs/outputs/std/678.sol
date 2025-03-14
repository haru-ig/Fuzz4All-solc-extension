pragma solidity ^0.8.0;
contract MutateSemNotEqual
{
  uint constant f = 0;
  function mod_equal(uint x, uint y) public pure returns (uint)
  {
    uint yNotEqual;
    if (x <= y)
    {
      yNotEqual = y;
    } else
    {
      yNotEqual = x;
    }
    if (yNotEqual == f)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
}



contract MutateSemNotEqual2
{
  uint constant f = 0;
  function _semneq(uint _x, uint _y) private pure returns (uint)
  {
    uint yNotEqual;
    if (_x <= _y)
    {
      yNotEqual = _y;
    } else
    {
      yNotEqual = _x;
    }
    if (yNotEqual == f)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
}
