pragma solidity ^0.8.0;
contract NewY4{
    struct PointAndVector{
        uint256 x;
        uint256 y;
        uint256 z;
    }
    event Log(PointAndVector[] indexed points);
    PointAndVector[]  points;
    function add(PointAndVector[] memory addX, PointAndVector[] memory addY) public{
        int newSize = addX.length+ addY.length;
        (uint256 xMax, uint256 yMax) = (addX[0].x, addX[0].y);
        int size = (points.length < 50 * 0.95? 50 : 50);
        for(int i = 0;i< (2*newSize/size);i++){
            uint256 x  ;
            for(uint256 j = pow(0.9, 1.5*i); j
