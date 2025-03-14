pragma solidity ^0.8.0;
contract Simple
{
    uint public constant pointsCount = 100;
    struct Point {
        uint x;
        uint y;
    }
    Point public constant points[pointsCount];
    function addPoint(uint id, uint x, uint y) public {
      for(uint i = 0; i < pointsCount; i++){
        if(points[id].x >= 10){
          points[id].y += y;
        }else {
          points[id].x += x;
          points[id].y += y;
        }
      }
    }
    function multiplyPoints(uint id, uint x, uint y) public {
      for(uint i = 0; i < pointsCount; i++){
        points[id].x *= x;
        points[id].y *= x;
        points[id].x *= y;
        points[id].y *= y;
      }
    }

    function main() public {
       for(uint i = 0; i < pointsCount; i++){
        points[i].x += 1;


      }
       points[pointsCount-1].x += 1;
    }
}
