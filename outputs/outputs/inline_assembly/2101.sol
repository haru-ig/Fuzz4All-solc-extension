pragma solidity ^0.8.0;
contract Equivalence
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
    function addPoint(uint id) public {
        points[id].x += id;
        points[id].y += id;
      }
    function multiplyPoints(uint id) public {
      uint xx = points[id].x;
      uint yy = points[id].y;
      points[id].x += xx * xx;
      points[id].y += yy * yy;
    }
    function multiply(uint x, uint y) public pure returns (uint) {
      return x * y;
    }
}
