pragma solidity ^0.8.0;
contract E6D
{
  uint16 public x = 0xabcd;
  MappingSet(address) public set;
  uint256 public id;
  uint256[] public list;
  function g(address x) public returns (int)
  {
    return array_[id];
  }
  function put(address x, int y) public returns (address z)
  {
    z = x;
    array_[id] = y;
    id++;
    return z;
  }
}
