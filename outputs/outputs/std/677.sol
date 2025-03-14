pragma solidity ^0.8.0;
contract SemNotEqual
{
  uint constant f = 0;
  function not_equal(uint x, uint y) public pure returns (uint)
  {
    uint yNotEqual;
    if (x >= y)
    {
      yNotEqual = y;
    } else
    {
      yNotEqual = f;
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
