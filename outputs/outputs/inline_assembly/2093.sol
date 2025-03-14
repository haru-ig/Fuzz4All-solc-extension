pragma solidity ^0.8.0;

contract ComplexGen
{
    struct Point {
    uint x;
    uint y;
  }
    mapping (uint => Point) public points;
    Point[100000000] public pointsGen;
    function setModified(uint id) public {
        points[id].x = 0;
        points[id].y = 0;
    }
    function addPoint(uint id, uint x, uint y) public {
        points[id].x += x;
        points[id].y += y;
      }
  function multiplyPoints(uint id, uint x, uint y) public {
      points[id].x *= x;
      points[id].y *= x;
      points[id].x *= y;
      points[id].y *= y;
    }

  contract ComplexStruct
  {
    struct Point {
    uint x;
    uint y;
  }
    mapping (uint => Point) public points;
    Point public testStruct;
    function setTestStruct(Point st) public {
      testStruct = st;
    }
    function setModified(uint id) public {
        points[id].x = 0;
        points[id].y = 0;
    }
    function addPoint(uint id, uint x, uint y) public {
        points[id].x += x;
        points[id].y += y;
      }
  function multiplyPoints(uint id, uint x, uint y) public {
      points[id].x *= x;
      points[id].y *= x;
      points[id].x *= y;
      points[id].y *= y;
    }
  function generate(uint id) public {
    uint x;
    uint y;
    modifier Test2_A(uint x2,uint y2) {x = x2 ;y = y2;return true;};

    /*
    x = 1; y = 1
    Point[100000000] public pointsGen;
    uint[10000] public test;

    Test2_A(2,2);

    uint[1000] test;
    Test2_A(1,1);
