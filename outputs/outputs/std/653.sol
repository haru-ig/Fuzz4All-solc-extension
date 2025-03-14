pragma solidity ^0.8.0;

contract Math
{
  uint constant a = 0;
  uint constant b = 0;
  uint constant c = 0;
  uint constant d = 0;
  uint constant e = 0;
  uint constant z = 0;

  function add(uint x, uint y) public pure returns (uint)
  {
    return (x + y);

  }

  function addMod(uint x, uint y, uint a) public pure returns (uint)
  {
    return (add(x,y)%a);
  }

  function sub(uint x, uint y) public pure returns (uint)
  {
    return (x - y);

  }

  function subMod(uint x, uint y, uint a) public pure returns (uint)
  {
    return (sub(x,y)%a);
  }
}
