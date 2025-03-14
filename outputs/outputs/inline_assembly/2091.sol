pragma solidity ^0.8.0;
contract ComplexSameGen
{
    struct Point {
    uint x;
    uint y;
  }
    mapping (uint => Point) public points;
    function setModified(uint x) public {
        points[x] = Point({ x: 0, y: 0});
    }
    function addPoint(uint x, uint y) public {
        points[x].x += x;
        points[x].y += y;
      }
    function multiplyPoints(uint id, uint x, uint y) public {
        points[id].x *= x;
        points[id].y *= x;
        points[id].x *= y;
        points[id].y *= y;
    }
}
