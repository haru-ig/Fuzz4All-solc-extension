pragma solidity ^0.8.0;
contract Omega {
    struct Point {
        pointsx x;
        pointsy y;
    }
    mapping (uint => Point) public points;
    function setModified(uint id, uint px, uint py) public {
        points[id].x.p += px;
        points[id].y.p += py;
    }
    function addPoint(uint id, uint px, uint py) public {
    	uint px1 = points[id].x.p;
    	uint py1 = points[id].y.p;
        uint px2 = px1 + px;
        uint py2 = py1 + py;
        points[id].x.p = px2;
        points[id].y.p = py2;
    }
    function multiplyPoints(uint id, uint px, uint py) public {
        uint px1 = points[id].x.p;
        uint py1 = points[id].y.p;
        points[id].x.p *= px1;
        points[id].y.p *= py1;
        points[id].x.p *= px;
        points[id].y.p *= py;
    }
}
