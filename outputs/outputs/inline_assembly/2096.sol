pragma solidity ^0.8.0;
contract SimpleDifferentGen
{
    struct Point {
      uint x;
      uint y;
    }
    constructor() { }
    function getPoint(uint id) public view returns(uint,uint)
    {
        return(points[id].x, points[id].y);
    }
    function setPoint(uint id, uint x, uint y) public {
        points[id].x = x;
        points[id].y = y;
    }
    function addPoint(uint id, uint x, uint y) public {
      points[id].x = points[id].x + x;
      points[id].y = points[id].y + y;
    }
    function multiplyPoints(uint id, uint x, uint y) public {
      points[id].x = points[id].x * x;
      points[id].y = points[id].y * y;
    }
}
