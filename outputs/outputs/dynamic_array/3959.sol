pragma solidity ^0.8.0;
contract C {
    struct Point { uint x; uint y; }
    Point[] points;
    function init() public {
        points = new Point[](4);
        points.push(Point({x: 2, y: 3}));
        points.push(Point({x: 4, y: 5}));
    }
}
