pragma solidity ^0.8.0;
contract Mutate
{
  uint constant i = 1;
  function add(uint x, uint y) public pure returns (uint)
  {
    return x + y;
  }
  function sub(uint x, uint y) public pure returns (uint)
  {
    return x - y;
  }
  function mul(uint x, uint y) public pure returns (uint)
  {
    return x * y;
  }
  function div(uint x, uint y) public pure returns (uint)
  {
    assert(y > 0);
    return x / y;
  }
  function min(uint x, uint y) public pure returns (uint)
  {
    return x < y? x : y;
  }
  function max(uint x, uint y) public pure returns (uint)
  {
    return x > y? x : y;
  }
}
contract Mutates {
  uint constant f=3;
  uint constant s = f;
  uint constant f2 = 1;
  uint constant f3 = 2;
  uint constant fc = 4;
  uint constant a = 5;
  uint constant b = 7;
  uint constant c = 11;
  uint constant dc = 13;
  uint constant oo = 17;
  uint constant f4 = 19;
  Mutate c1;
}
contract ArrayTest
{
  uint constant oo = 9;
  uint[3] a = [1, 2, 3];
  function add4(uint x, uint y) public pure returns (uint)
  {
    return (x + y);
  }
  function add8(uint x, uint y, uint z, uint w) public pure
  returns (uint)
  {
    z = z + (w << fc) + (w);
    return x + (y + z);
  }
  function add16(uint x, uint y, uint z, uint w, uint u) public pure returns (uint)
  {
    z = z + (w << fc) + (w) + (u
