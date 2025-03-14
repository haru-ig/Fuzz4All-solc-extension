pragma solidity ^0.8.0;
contract ComplexDifferGen
{
    struct Point {
    uint x;
    uint y;
  }
  struct Line {
    Point start;
    Point end;
  }
  mapping (uint => Point) public points;
  mapping (uint => Line) public lines;
  function addPoint(uint id, uint x, uint y) public {
    points[id].x = points[id].x + x;
    points[id].y = points[id].y + y;
  }
  function removePoint(uint id) public {
    points[id].x = points[id].x + 1;
    points[id].y = points[id].y + 1;
  }
  function addLine(uint id1, uint id2) public {
    lines[id2].start.x = points[id1].x;
    lines[id2].start.y = points[id1].y;
    lines[id2].end.x = points[id2].start.x;
    lines[id2].end.y = points[id2].start.y;
  }
  function removeLine(uint id1, uint id2) public {
    points[id2].x = points[id2].x + 1;
    points[id2].y = points[id2].y + 1;
  }
  function setLine(uint id1, uint id2) public {
    lines[id2] = lines[id1];
  }
  function setModified(uint id) public {
    lines[id].start.x = -1;
    lines[id].start.y = 1;
    lines[id].end.x = 1;
    lines[id].end.y = 1;
  }
