pragma solidity ^0.8.0;
contract Test {
    struct Point {
        uint x;
        uint y;
    }
    function findMin(Point[] memory a) public view returns (Point min) {
        return a[0];
    }
}
