pragma solidity ^0.8.0;
library ComplexDifferentMut{
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
    points[id].x ^= x;
    points[id].y ^= y;
    points[id].x *= x;
    points[id].y *= x;
    points[id].x += x * y;
    points[id].y += y * points[id].y;
  }
}
contract S29Sample
{
    ComplexDifferentMut compDiffMut;
    function doIt(uint x) returns (uint, uint) {
        uint y;
        y = 100;
        compDiffMut.setModified(0);
        uint z;
        uint w;
        uint id1;
        uint id2;
        id1 = 0;
        id2 = 1;
        compDiffMut.addPoint(0, x, y);
        compDiffMut.multiplyPoints(0, 3, 2);
        compDiffMut.setModified(1);
        return (x,y);
    }
}
