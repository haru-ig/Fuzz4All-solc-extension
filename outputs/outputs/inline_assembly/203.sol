pragma solidity ^0.8.0;
contract E7H
{
  uint16 public x = 0xabcd;
  mapping (address => int) public map;
  address public _this;
  constructor (address this_) public { _this = this_; }
  function g(address x) public returns (int)
  {
    return map[x];
  }
  function put(address x, int y) public returns (address z)
    {
      z = put(address(0), x);
      map[z] = y;
      return _this;
    }
}

pragma solidity ^0.8.0;
contract E7H
{
  uint16 public x = 0xabcd;
  mapping (address => int) public map;
  uint public count = 0;
  address public _this;
  constructor (address this_) public { _this = this_; }
  function g(address x) public returns (int)
  {
    return map[x];
  }
  function put(address x, int y) public returns (address z)
    {
      z = put(address(0), x);
      map[z] = map[z]^x^y;
      count += 1;
      return address(uint256(count));
    }
}

contract E7H
{
  uint16 public x = 0xabcd;
  mapping (address => int) public map;
  uint public count = 0;
  address public _this;
  constructor (address this_) public { _this = this_; }
  function g(address x) public returns (int)
  {
    return map[x];
  }
  function put(address x, int y) public returns (address z)
    {
      z = put(address(0), x);
      map[z] = map[z]^x^y;
      count += 1;
      return address(uint256(count));
    }
}

contract E7H
{
  uint16 public x = 0xabcd;
  mapping (address => int) public map;
  uint public count = 0;
  address public _this;
  constructor (address this_) public { _this = this_; }
  function g(address x) public returns (int)
  {
    uint16 v = map[x];
    map[x] = 0xabcd;
    return v;
  }
  function put(address x, int y) public returns (address z)
    {
      z = put
