pragma solidity ^0.8.0;
contract Multiprecision
{
  uint constant a = 0;
  uint constant b = 0;
  uint constant c = 0;
  uint constant d;
  uint constant e;
  uint constant z;
  function add(uint x, uint y) public pure returns (uint)
  {
    d = x * 2 * 1e38 + y * 5;
    e = 1e38 * d + 1e8 + 2e10;
    return (e);
  }
  function addMod(uint x, uint y, uint a) public pure returns (uint)
  {
    return (add(x,y)%a);
  }
  function sub(uint x, uint y) public pure returns (uint)
  {
    d = 8 * x * 1e15 - y * 3;
    e = 1e15 * d + 1e38 + 2e40;
    return (e);
  }
  function subMod(uint x, uint y, uint a) public pure returns (uint)
  {
    return (sub(x,y)%a);
  }
}
