pragma solidity ^0.8.0;
contract LotteryWithElementIndex {
    uint public constant BOX_SIZE = 1000;
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[][][] internal _arrayAddresses;
    Point[][][] internal _testArray;
    Point[][][] internal _nonEqualArray;
    function getArrayIndex() public view returns(Point[][] memory, uint X, uint Y){
        return (_arrayAddresses, _testArray, _nonEqualArray);
    }
}
