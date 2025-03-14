pragma solidity ^0.8.0;
contract SemEqual
{
  uint constant f = 0;
  function equal(uint x, uint y) public pure returns (uint)
  {
    uint yEqual;
    if (y <= x)
    {
      yEqual = y;
    } else
    {
      yEqual = x;
    }
    if (yEqual == y)
    {
      return yEqual;
    } else
    {
      return 0;
    }
  }
}
