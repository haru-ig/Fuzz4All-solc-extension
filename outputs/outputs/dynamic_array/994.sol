pragma solidity ^0.8.0;
contract LotteryWithArrayIndex {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[][][] internal _arrayAddresses;
    Point[][][] internal _testArray;
    Point[][][] internal _nonEqualArray;
    function getArrayIndex() public view returns(Point[][][] memory){
        return _arrayAddresses;
    }
}
