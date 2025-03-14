pragma solidity ^0.8.0;
contract ComplexSimilarGen
{
    struct Point {
    uint x;
    uint y;
  }
    mapping (uint => Point) public points;
    function setModified(uint id) public {
        points[id]._x_ = 0;
        points[id]._y_ = 0;
    }
    function addPoint(uint id, uint x, uint y) public {
        points[id]._x_ += x;
        points[id]._y_ += y;
    }
    function multiplyPoints(uint id, uint x, uint y) public {
      uint xx = points[id]._x_;
      uint yy = points[id]._y_;
      points[id]._x_ += x * xx;
      points[id]._y_ += y * yy;
      points[id]._x_ *= x;
      points[id]._y_ *= x;
      points[id]._x_ *= y;
      points[id]._y_ *= y;
    }
}
