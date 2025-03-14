pragma solidity ^0.8.0;
contract Mutant9p
{
  struct Point { int8 x; int8 y; }
  struct Rect { Point topLeft; Point bottomRight; }
  mapping(address => Rect) public stored;
}
