pragma solidity ^0.8.0;
contract ComplexDifferent
{
  struct Point {
  uint x;
  uint y;
  }
  mapping (uint => Point) public points;
  function mulAndSumX(uint id, uint x1, uint y1) public {
    points[id].x += x1;
    points[id].x *= x1;
    points[id].x += x1 + points[id].x;
    points[id].x *= id + 2;
    points[id].x *= 10;
  }
  function add(uint id1, uint id2) public {
    points[id2].x += points[id1].x;
    points[id2].y += points[id1].y;
    points[id2].x *= 10;
    points[id2].y *=  100;
    points[id2].x += points[id1].x * points[id1].y;
    points[id2].y *= id1;
    points[id2].x += 10 * points[id1].x / points[id1].y;
    points[id2].y += (points[id1].y - points[id1].x) / ((points[id1].y - points[id1].x) / 10);
  }
  function mul(uint id1, uint id2, uint x) public {
    points[id1].x += x;
    points[id2].y += points[id1].x;
    points[id1].x *=  10;
    points[id2].y *=  100;
    points[id2].x += (x * points[id1].y) / ((x * points[id1].y) / points[id1].x);
    points[id1].x += x * (id2 + y1);
    points[id2].x += x * (((id2 - id1) - (500+30*points[id1].x/points[id2].y)) /
