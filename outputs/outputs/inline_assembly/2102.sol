pragma solidity ^0.8.0;
contract ComplexSameGen
{
    struct Point {
    uint x;
    uint y;
  }
    mapping (uint => Point) public points;
    function setModified(uint id) public {
        points[id].x = 0;
        points[id].y = 0;
    }
    function addPoint(uint id, uint x, uint y) public {
        points[id].x += x;
        points[id].y += y;
      }
    function multiplyPoints(uint id, uint x, uint y) public {
      uint x1 = x;
      uint x2 = x;
      uint x3 = uint(div(x1, x2));
      points[id].x += x * x3;
      points[id].y += y * x3;
    }
}
