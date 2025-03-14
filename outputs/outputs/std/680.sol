pragma solidity ^0.8.0;

contract MutateSemNotEqual
{
  uint[2] private x;
  string b = "x";
  uint constant a = 10;
  function f() public pure returns (bool)
  {
    if (x.x == x.y && x.x == a)
    {
      return true;
    } else
    {
      return false;
    }
  }
  function f2() public
  {
    if (x.x == x.y && x.x == a)
    {


      x.x = x.y;
    }
  }
  function f3() public pure
  {
    if (x[0] == x[1] && x[0] == a)
    {


      x[0] = x[1];
    }
  }
  function f4() public pure
  {
    if (x.x == x.y || x[0] == x[1])
    {


      x.x = x.y;
    }
  }
  function f5() public pure
  {
    if (x.x >= x.y && x.x >= a)
    {


      x.x = x.y;
    }
  }
  function f6() public pure
  {
    if (x.x > x.y && x.x > a)
    {


      x.x = x.y;
    }
  }
  function f7() public pure
  {
    if (x.x < x.y && x.x < a)
    {


      x.x = x.y;
    }
  }
}
contract MutateSemNotEqual2
{
  uint[2] private x;
  string b =
