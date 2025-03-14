pragma solidity ^0.8.0;
contract Mutant9t
{
  struct Point
  {
    int8 x;
    int8 y;
  }
  struct Rect
  {
    Point topLeft;
    Point bottomRight;
  }
  mapping(address => Rect) public stored;
  struct Pill
  {
    uint256 amount;
    uint8 x;
    uint8 y;
  }
  uint8 _width;
  uint8 _height;
  Point _center;
  mapping(address => bytes32) public _map;
  uint64 count;
  uint256 _bigNumber;
  uint256 _smallerNumber;
  uint256 x;
  Pill pill;
}
