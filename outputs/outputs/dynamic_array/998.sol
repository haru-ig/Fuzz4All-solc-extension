pragma solidity ^0.8.0;
contract LotteryWithArrayAccess {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[][][] internal _arrayAddresses;
    Point[][][] internal _testArray;
    Point[][][] internal _nonEqualArray;
    bool[] internal _booleans;
    function getArrayAddresses() public view returns(Point[][][] memory){
        return _arrayAddresses;
    }
}
