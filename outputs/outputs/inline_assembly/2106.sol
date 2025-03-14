pragma solidity ^0.8.0;
contract ComplexNewGen
{
    struct Point {
    uint x;
    uint y;
  }
  mapping (uint => Point) public points;
  uint count = 0;
  function setModified(uint id) public {
    points[id].x = 0;
    points[id].y = 0;
    count += 1;
  }
  function addPoint(uint id, uint x, uint y) public {
    points[id].x += x;
    points[id].y += y;
    count += 1;
  }
  function multiplyPoints(uint id, uint x, uint y) public {
    uint xx = points[id].x;
    uint yy = points[id].y;
    points[id].x += x * xx;
    points[id].y += y * yy;
    points[id].x = points[id].x * x;
    points[id].y = points[id].y * x;
    points[id].x *= points[id].x;
    points[id].y *= points[id].y;
    points[id].x = points[id].x * y;
    points[id].y *= y;
    points[id].x *= xx;
    points[id].y *= yy;
    count += 1;
  }
}

/* Using an array of variables
In general, an array is a generalization of a variable storing a set of elements. It is initialized to any array length of 0. However, arrays are initialized with pre-set element types which can be a combination of uint, address, bytes and strings.

The syntax for an array declaration looks similar to that of a variable. A declaration of integer array indexed by index1 has the form:

uint
