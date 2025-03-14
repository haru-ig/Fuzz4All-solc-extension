pragma solidity ^0.8.0;
contract MutateMut2
{
  uint constant f = 3;
  uint constant m = 5;

  function multiply(uint x, uint y) public pure returns (uint)
  {
    uint z = x * y;
    return z / m;
  }
  function multiply2(uint x, uint y, uint z) public pure returns (uint)
  {
    x *= y;
    x *= z;
    return x / m;
  }
  function multiply3(uint x, uint y, uint z) public pure returns (uint)
  {
    x *= y;
    z %= m;
    x *= z;
    return x / m;
  }
  function multiply4(uint x, uint y, uint z) public pure returns (uint)
  {
    x *= y;
    y *= z;
    uint w = m / x;
    w %= m;
    x *= w;
    y *= w;
    return x / y;
  }
  function multiply5(uint x, uint y) public pure returns (uint)
  {
    x *= y;
    return x / m;
  }
  function divide(uint x, uint y) public pure returns (uint)
  {
    uint z = x / y;
    return z * m;
  }
  function divide2(uint x, uint y, uint z) public pure returns (uint)
  {
    x /= y;
    x /= z;
    return x * m;
  }
  function divide3(uint x, uint y, uint z) public pure returns (uint)
  {
    x /= y;
    z %= m;
    x /= z;
    return x * m;
  }
  function divide4(uint x, uint y, uint z) public pure returns (uint)
  {
    x /= y;
    y /= z;
    w = m / x;
    w %= m;
    x /= w;
    y /= w;
    return x / y;
  }
  function divide5(uint x, uint y) public pure returns (uint)
  {
    x /= y
