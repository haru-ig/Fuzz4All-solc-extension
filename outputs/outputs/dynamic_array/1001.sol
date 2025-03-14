pragma solidity ^0.8.0;
contract LotteryWithoutArrayAccess {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[][][] internal _arrayAddresses;
    Point[][] _testArray;
    Point[][] _nonEqualArray = [new Point[](0)];
    bool[13] internal _booleans;
    function getArrayAddresses() public view returns(Point[][][] memory){
        return _arrayAddresses;
    }
}
