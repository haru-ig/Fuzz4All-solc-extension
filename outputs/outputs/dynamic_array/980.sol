pragma solidity ^0.8.0;
contract LotteryWithDataStorage {
    struct Point {
        uint X;
        uint Y;
    }
    Point[] internal testArray;
    Point[] internal nonEqualArray;
    function getPointArray() public view returns(Point[] memory){
        return nonEqualArray;
    }
}
