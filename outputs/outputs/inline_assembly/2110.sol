pragma solidity ^0.8.0;
contract ComplexDifferentGen
{
  struct Point {
  uint x;
  uint y;
  }
  mapping (uint => Point) public points;
  function setModified(uint id) public {
    points[id] = Point(0, 0);
  }
  function addPoint(uint id, uint x, uint y) public {
    points[id] = Point(points[id].x + x, points[id].y + y);
  }
  function multiplyPoints(uint id, uint x, uint y) public {
    points[id] = Point((points[id].x + x) * points[id].x, (points[id].y + y) * points[id].y);
  }
}
