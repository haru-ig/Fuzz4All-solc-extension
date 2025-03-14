pragma solidity ^0.8.0;
contract ComplexDifferentGen {
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
    points[id].x += x * points[id].x;
    points[id].y += y * points[id].y;
    points[id].x *= x;
    points[id].y *= x;
    points[id].x += x * y;
    points[id].y += y * points[id].y;
  }

  uint modified;

  function setModified(uint _id) public {
  modified = _id;
  }
  function addPoint(uint id, uint x, uint y) public {
  points[id].x += x;
  points[id].y += y;
  addModified((modified, modified + 1));
  }
  function multiplyPoints(uint id, uint x, uint y) public {
    points[id].x += x * points[id].x;
    points[id].y += y * points[id].y;
    points[id].x *= x;
    points[id].y *= x;
    points[id].x += x * y;
    points[id].y += y * points[id].y;
  }

    function addModified(uint[] memory ids) public {
    for (uint i; i < ids.length; i++) {
    setModified(ids[i]);
    console.log("Set: " + ids[i] + " -> " + modified + "/" + ids.length);
    }
  }
  function
