pragma solidity ^0.8.0;
contract Mutant10e
{
  struct Point
  {
    uint256 x;
    uint256 y;
  }
  mapping(address => bytes32) public _map;
  uint8 _width;
  uint8 _height;
  uint256 _bigNumber;
  uint8 _smallerNumber;
  uint256 count;
  uint256 y;
  Point center;
}
