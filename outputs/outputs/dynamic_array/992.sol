pragma solidity ^0.8.0;
contract LotteryWithArrayIndex {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    mapping(address => Point[][][]) public arrayAddress;
    mapping(address => Point[][][]) internal testArray;
    mapping(address => Point[][][]) internal mutatedArray;
    function getArrayIndex() public view returns(Point[][][] memory){
        return mutatedArray;
    }
}
