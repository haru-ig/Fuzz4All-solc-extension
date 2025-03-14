pragma solidity ^0.8.0;
contract MutateSemNotEqual3
{
  uint constant f = 0;
  function _add2(uint _x, uint y) private pure returns (uint z)
  {
    z = (_x + 3);
    return (0);
  }
}
contract MutateSemNotEqual4
{
  uint constant f = 0;
  function add2(uint x, uint y) private pure returns (uint z)
  {
    z = (_x + 3);
    return (0);
  }
}
