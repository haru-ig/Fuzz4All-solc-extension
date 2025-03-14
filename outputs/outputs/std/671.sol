pragma solidity ^0.8.0;
contract Test2
{
  uint[] x;
  function add(uint x, uint y) public returns (uint)
  {
    return x + y;
  }

  uint not_equal(uint x, uint y) public {
    sem_equal(x, y);
  }
}
contract SemEqual
{
  uint constant f = 0;

  function sem_equal(uint x, uint y) public pure returns (uint)
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
