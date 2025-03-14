pragma solidity ^0.8.0;
contract MutateSemNotEqual2
{
  uint constant f = 0;
  function _semneq(uint _x, uint _y) private pure returns (uint)
  {
    uint _xNotEqual;
    uint _xNotEqual2;
    _xNotEqual = 1;
    if (_x <= _y)
    {
      _xNotEqual2 = 1;
    } else
    {
      _xNotEqual2 = _x;
    }
    if (_xNotEqual2 == f)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
}
contract MutateSemEq3
{
  function mod_equal(uint x, uint y) public pure returns (uint)
  {
    uint yEqu = 1;
    if (x < y)
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
contract MutateSemNotEqual3
{
  uint constant f = 0;
  function _semneq(uint _x, uint _y) private pure returns (uint)
  {
