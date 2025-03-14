pragma solidity ^0.8.0;
contract Complex
{
    struct Point {
      uint x;
      uint y;
    }
    mapping (uint => Point) points;

    function addPoint(uint id, uint x, uint y) public {
      if(points[id].x >= 10){
        points[id].y += y;
      }else {
        points[id].x += x;
        points[id].y += y;
      }
    }

    function multiplyPoints(uint id, uint x, uint y) public {
      points[id].x *= x;
      points[id].y *= x;
      points[id].x *= y;
      points[id].y *= y;
    }
}
