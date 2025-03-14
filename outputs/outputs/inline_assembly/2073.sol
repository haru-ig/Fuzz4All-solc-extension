pragma solidity ^0.8.0;
contract Complex
{
    struct Point {
      uint x;
      uint y;
    }
    mapping (uint => Point) points;
    mapping (uint => bool) modified;
    function setModified(uint id) public {
      modified[id] = true;
    }
    function addPoint(uint id, uint x, uint y) public {
      if(modified[id] && points[id].x >= 10) {
        points[id].x += x;
        points[id].y += y;
      } else {
        points[id].x += x;
        points[id].y += y;
        setModified(id);
      }
    }
    function multiplyPoints(uint id, uint x, uint y) public {
      points[id].x *= x;
      points[id].y *= x;
      points[id].x *= y;
      points[id].y *= y;
      setModified(id);
    }
}
