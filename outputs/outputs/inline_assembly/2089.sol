pragma solidity ^0.8.0;
contract ComplexDifferentGen
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
      points[id].x *= x;
      points[id].y *= x;
      points[id].x *= y;
      points[id].y *= y;
    }
}
