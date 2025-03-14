pragma solidity ^0.8.0;
contract SemEqual
{
  uint f = 0;
  function equal(uint x, uint y) public pure returns (uint)
  {
    if (x > y && y >= x)
    {
      return x;
    } else
    {
      return y;
    }
  }
  function equal_2(uint x, uint y) public pure returns (uint)
  {
    if (f!= f)
    {
      return x;
    } else
    {
      return y;
    }
  }
}
