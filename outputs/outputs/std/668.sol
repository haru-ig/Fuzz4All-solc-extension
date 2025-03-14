pragma solidity ^0.8.0;
contract SemEqual
{
  mapping(uint => uint) uintMap;
  function equal(uint x, uint y) public pure returns (uint)
  {
    uint yEqual;
    if (y <= x)
    {
      (yEqual, uintMap[y]) = pair(y, y);
    } else if (y > x)
    {
      (uintMap[y], yEqual) = pair(x, y);
    } else
    {
      (yEqual, uintMap[y]) = pair(y, y);
    }
    if (yEqual == y)
    {
      return yEqual;
    } else
    {
      return 0;
    }
  }
  function pair(uint x, uint y) internal pure returns (uint, uint){
    if (y < x)
    {
      uint _temp = x;
      x = y;
      y = _temp;
    }
    return (x, y);
  }
}
