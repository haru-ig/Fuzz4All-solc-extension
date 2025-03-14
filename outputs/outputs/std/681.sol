pragma solidity ^0.8.0;
contract MutateSemNotEqual3
{
  uint constant f = 0;
  function semneq(uint _x, uint _y) private pure returns (uint)
  {
    uint (_yNotEqual) = 0xfffffffc;
    return _yNotEqual;
  }
}
contract MutateSemNotEqual4
{
  uint constant f = 0;
  function _semneq(uint _x, uint _y) private pure returns (uint)
  {
    uint (_yNotEqual) = 0xfffffffc;
    return _yNotEqual;
  }
  function semneq(uint _x, uint _y) public returns (uint)
  {
    return _semneq(_x, _y);
  }
}
contract MutateSemNotEqual5
{
  uint constant f = 0;
  function semneq(uint _x, uint _y) private pure returns (uint)
  {
    uint (_yNotEqual) = 0xfffffffc;
    return _yNotEqual;
  }
}
contract MutateSemNotEqual6
{
  uint constant f = 0;
  function _semneq(uint _x, uint _y) private pure returns (uint)
  {
    uint (_yNotEqual) = 0xfffffffc;
    return _yNotEqual;
  }
}

contract MutateSemNotEqual7
{
  uint constant f = 0;
  function _eq(uint _a, uint _b) private pure returns (uint)
  {
    return _a == _b;
  }
  function semneq(uint _x, uint _y) public returns (uint)
  {
    return _eq(_x, _y);
  }

}
