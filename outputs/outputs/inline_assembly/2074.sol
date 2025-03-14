pragma solidity ^0.8.0;
contract MutatedComplex
{
    struct Point {
      uint x;
      uint y;
    }
    mapping (uint => Point) points;
    uint add(uint val1, uint val2) public pure returns (uint) {
      return val1 + val2;
    }
    function addPointWithCheck(uint id, uint x, uint y) public {
      if(points[id].x >= 10){
        points[id].y += y;
      } else {
        points[id].x += x;
        points[id].y += y;
      }
      if (points[id].x < 10){}
    }
    function multiplyPoints(uint id, uint x, uint y) public {
      points[id].x *= x;
      points[id].y *= x;
      points[id].x *= y;
      points[id].y *= y;
    }
}
contract Main {
  Complex[] complex;
  Point[] point;
  uint len;
  function main() public{
    len = 3;
    complex[0] = Complex(Point{x:3, y:4}, Point{x:6, y:0}, Point{x:1, y:3});
    complex[1] = Complex(Point{x:1, y:2}, Point{x:-12, y:1}, Point{x:-2, y:1});
    complex[2] = Complex(Point{x:-1, y:0}, Point{x:3, y:-1}, Point{x:-2, y:-2});
    for(uint i = 0; i < len; i++){
      uint id = i + 1;
      complex[i].addPoint(id, 3, 5);
      complex[i].multiplyPoints(id, 5, 4);
    }
  }
}
