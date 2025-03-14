pragma solidity ^0.8.0;
contract Original {
  uint data;
  function setModified(uint _id) public {
    data = _id;
  }
  function addPoint(uint _id, uint _x, uint _y) public {
    points[data].x += _x;
    points[data].y += _y;

    points[data].x *= _x;
    points[data].y *= _y;
    points[data].x *= _y;
    points[data].y *= _y;
  }
  function multiplyPoints(uint _id, uint _x, uint _y) public {
    points[data].x *= _x;
    points[data].y *= _y;
    points[data].x *= _y;
    points[data].y *= _y;
  }
}
