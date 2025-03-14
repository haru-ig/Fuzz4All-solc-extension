pragma solidity ^0.8.0;
contract Equivalent
{
    struct Point {
      uint x;
      uint y;
    }
    mapping (uint => Point) points;
    mapping (uint => bool) modified;
    function setModified(uint id) public {
      modifyPoint(id);
    }
    function modifyPoint(uint id) public {
      if(modified[id] && points[id].x >= 10) {
        points[id].x *= 2;
        points[id].y *= 3;
      } else {
        points[id].x *= 2;
        points[id].y *= 3;
        modifyPoint(id);
      }
    }
}
