pragma solidity ^0.8.0;
contract Compatibility
{
    struct Point {
        uint x;
        uint y;
    }
    bool immutable flag;
    uint constant c;
    mapping (uint => Point) public points;
    function addPoint(uint id, uint x, uint y) public {
        flag = false;
        if(x!= c) {
            points[id].x += x;
            points[id].y += y;
        }
        if(x == 0 && y!= c) flag = true;
        if(x!= c && y == 0) flag = true;
    }
    function multiplyPoints(uint id, uint x, uint y) public {
        uint resX = x;
        uint resY = y;
        uint tempX = resX;
        uint tempY = resY;















        if(y!= c) point.x = 0;
        if(x!= c) point.y = 0;
    }
}
