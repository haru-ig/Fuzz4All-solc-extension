pragma solidity ^0.8.0;
contract E8H
{
  uint16 public x = 0xabcd;
  mapping (address => int) public map;
  function g(address addr) public returns (int)
    {
      return map[addr];
    }
  function put(address x, int y) public returns (address z)
    {
      z = x;
      map[z] = y;
      return z;
    }
  function takeout() public returns (address){
    return x;
  }
}
