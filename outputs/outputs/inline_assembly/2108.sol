pragma solidity ^0.8.0;
contract ComplexAnotherGen
{
    struct Point {
    uint mX;
    uint mY;
  }
  mapping (uint => Point) public points;
  function setModified(uint id) public {
    points[id].mX = 0;
    points[id].mY = 0;
  }
  function addPoint(uint id, uint mX, uint mY) public {
    points[id].mX += mX;
    points[id].mY += mY;
  }
  function multiplyPoints(uint id, uint mX, uint mY) public {
    uint mmX = points[id].mX;
    uint mmY = points[id].mY;
    points[id].mX += mX * mmX;
    points[id].mY += mY * mmY;
    points[id].mX = points[id].mX * mX;
    points[id].mY = points[id].mY * mX;
    points[id].mX *= points[id].mX;
    points[id].mY *= points[id].mY;
    points[id].mX = points[id].mX * mY;
    points[id].mY *= mY;
    points[id].mX *= mmX;
    points[id].mY *= mmY;
  }
}
