pragma solidity ^0.8.0;
contract Complex
{
    struct Point {
      uint x;
      uint y;
    }
    mapping (uint => Point) points;
    contract Contract
    {
      uint constant MAX_POINT = 10;
      mapping (uint => uint) public x;
      mapping (uint => uint) public y;
    }
    mapping (uint => bool) modified;
    function setModified(uint id) public {
      modified[id] = true;
    }
    function addPoint(uint id, uint x, uint y) public {
      if(modified[id] && points[id].x + x >= Contract.MAX_POINT) {
        points[id].x += x;
        points[id].y += y;
      } else {
        points[id].x += x;
        points[id].y += y;
        setModified(id);
      }
    }
    function multiplyPoints(uint id, uint x, uint y) public {
      if(modified[id] && points[id].x * x > Contract.MAX_POINT) {
        points[id].x *= x;
        points[id].y *= x;
      } else {
        points[id].x *= x;
        points[id].y *= x;
        setModified(id);
      }
    }
}
contract Test is Complex {

}
