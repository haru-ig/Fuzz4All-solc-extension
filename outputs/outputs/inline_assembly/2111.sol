pragma solidity ^0.8.0;
contract ComplexDifferentGenMutator
{
  struct PointMutated {
  uint x;
  uint y;
  }
  PointMutated public modifiedPoints;
  modifier canBeUsedByAnyone()
  {
      _;
  }

  mapping (uint => PointMutated) public points;
  constructor() public {
      modifiedPoints.x = 0;
      modifiedPoints.y = 0;
  }
  function setModified(uint id) public {
      points[id].x = 0;
      points[id].y = 0;
  }

  function addPoint(uint id, uint x, uint y) canBeUsedByAnyone public {
      points[id].x += x;
      points[id].y += y;
  }

  function multiplyPoints(uint id, uint x, uint y) canBeUsedByAnyone public {
      points[id].x += x * points[id].x;
      points[id].y += y * points[id].y;
      points[id].x *= x;
      points[id].y *= x;
      points[id].x += x * y;
      points[id].y += y * points[id].y;
  }
}

contract ComplexDifferentGenOptimiser
{
  struct PointOptimised {
  uint x;
  uint y;
  }
  mapping (uint => PointOptimised) public points;
  modifier canBeUsedByAnyone()
  {
      _;
  }

  constructor() public {
      points.put(0).x = 0;
  }
  function setModified(uint id) public {
      points.put(id).x = 0;
  }

  function addPoint(uint id, uint x, uint y) canBeUsedByAnyone public {
      points.put(id).x += x;
      points.put(id).y += y;
  }
  function multiplyPoints(uint id, uint x, uint y) canBeUsedByAnyone public {
      points.put(id).x += x * points.get(id).x;
      points.
