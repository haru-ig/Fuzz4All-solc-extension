pragma solidity ^0.8.0;
contract R2 {
    struct Point {
        address x;
    }
    Point[] arr;
    function f() public {
        arr.push(Point(0x0));
        Point p = arr[0];
    }
}
