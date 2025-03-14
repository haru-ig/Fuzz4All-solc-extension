pragma solidity ^0.8.0;
contract ComplexDifferentGen
{
    struct Point {
    uint x;
    uint y;
  }
  mapping (uint => Point) public points;
  function setModified(uint id) public {
    points[id] = Point(1, 2);
  }
  function addPoint(uint id, uint x, uint y) public {
    points[id].x += x;
    points[id].y += y;
  }
  function multiplyPoints(uint id, uint x, uint y) public {
    uint xx = x;
    uint yy = y;
    points[id].x += x * xx;
    points[id].y += y * yy;
    points[id].x = points[id].x * x;
    points[id].y = points[id].y * x;
    points[id].x *= points[id].x;
    points[id].y *= points[id].y;
    points[id].x = points[id].x * y;
    points[id].y *= y;
    points[id].x *= xx;
    points[id].y *= yy;
  }
}
