pragma solidity ^0.8.0;
contract ArrayDemo
{
  uint [2] a;
  uint [3] a1;
  uint total;
  function ArrayDemo
  (uint arg0)
    public
    pure
    returns (uint total2)
  {
    total = arg0;
    if (total & 1!= 0)
    {
      total = total / 2;
    } else
    {
      return 0;
    }
    if (total < 60)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
  function equal_uint_uint(uint x, uint y) public pure returns (uint)
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
  function add(uint x, uint y) public pure returns (uint)
  {
    uint z;
    if (y >= x)
    {
      z = x + y;
    } else
    {
      z = x - y + y;
    }
    if (z > 75 && z <= 200)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
  function subtract(uint x, uint y) public pure returns (uint)
  {
    uint z = x - y;
    if (z > 35 && z <= 55)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
  function multiply(uint x, uint y) public pure returns (uint)
  {
    uint z = x * y;
    if (z > 90 && z <= 150)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
  function divide(uint x, uint y) public pure returns (uint)
  {
    uint z = x / y;
    if (z > 357 && z <= 683)
    {
      return 1;
    } else
    {
      return 0;
    }
  }
}
