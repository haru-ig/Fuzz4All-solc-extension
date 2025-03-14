pragma solidity ^0.8.0;
contract SemanticallyEquiv1
{
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
    uint newX = points[id].x + x;
    uint newY = points[id].y + y;
    points[id].x = newX;
    points[id].y = newY;
  }
  function multiplyPoints(uint id, uint x, uint y) public {
    uint newX = points[id].x ^ x;
    uint newY = points[id].y ^ y;
    points[id].x = newX;
    points[id].y = newY;
    uint mX = newX * x;
    uint mY = newY * y;
    points[id].x += mX;
    points[id].y += mY;
  }
}
contract S28Sample2
{
    SemanticallyEquiv1 semanticallyEquivMut;
    function doIt(uint x) public returns (uint) {
        uint y;
        y = 100;
        semanticallyEquivMut.setModified(0);
        uint z;
        uint w;
        uint id1;
        uint id2;
        id1 = 0;
        id2 = 1;
        semanticallyE
