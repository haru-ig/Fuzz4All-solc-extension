pragma solidity ^0.8.0;
contract Math
{
  uint maximum;
  function add(uint x, uint y) public pure returns (uint)
  {
    return x + y;
  }
  function subtract(uint x, uint y) public pure returns (uint)
  {
    return x - y;
  }
  function multiply(uint x, uint y) public pure returns (uint)
  {
    return x * y;
  }
  function divide(uint x, uint y) public pure returns (uint)
  {
    return x / y;
  }
  function maximum(uint x, uint y) public pure returns (uint)
  {
    return x >= y? x : y;
  }
}
