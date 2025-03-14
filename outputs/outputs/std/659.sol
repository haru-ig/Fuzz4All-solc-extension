pragma solidity ^0.8.0;

contract Math
{
  uint constant a = 0;
  uint constant b = 0;
  uint constant c = 0;
  uint constant d = 0;
  uint constant e = 0;
  uint constant z = 0;
  function min(uint x, uint y) public pure returns (uint)
  {
    return (x < y)? x : y;
  }
  function max(uint x, uint y) public pure returns (uint)
  {
    return (x > y)? x : y;
  }
}
