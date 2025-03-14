pragma solidity ^0.8.0;
contract Math
{

  modifier test(uint x) { if (x == 1) { x = 2; return; } }
  function log(uint x) public pure { test(x); }
}

pragma solidity ^0.8.0;
contract Array
{

  function set(uint[] memory a, uint i, uint y) public pure { a[i] = y; }

  function get(uint[] memory a, uint i) public pure returns (uint)
  {
    const address _msgSender = msg.sender;
    if (i < a.length && a[i] == _msgSender )
      return a[i];
    else
      return 0;
  }

  function swap(uint _x, uint[] storage a) public pure {
  uint temp = a[_x];
  a[_x] = a[msg.sender];
  uint newAddrToSet = a[msg.sender];
    a[msg.sender] = temp;
    a[newAddrToSet] = _x;
  }

  function min(uint[] memory a) public pure returns (uint)
  {
    uint minValue;
    for (uint i = 0; i < a.length; i++)
    {
      if (a[i] < minValue)
      {
        minValue = a[i];
      }
    }
    return minValue;
  }

  function max(uint[] memory a) public pure returns (uint)
  {
    uint maxValue;
    for (uint i = 0; i < a.length; i++)
    {
      if (a[i] > maxValue)
      {
        maxValue = a[i];
      }
    }
    return maxValue;
  }

  function sum(uint[] memory a) public pure returns (uint)
  {
    uint sum;
    for (uint i = 0; i < a.length; i++)
    {
      sum += a[i];
    }
    return sum;
  }

  function is_empty(uint[] memory a) public pure returns (bool)
  {
    for (uint i = 0; i < a.length; i++)
    {
      if (a[i]!= 0) return false;
    }
    return true;
  }
