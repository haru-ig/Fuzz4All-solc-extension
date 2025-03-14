pragma solidity ^0.8.0;
contract LotteryWithArrayIndex2 {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[] internal arrayAddresses;
    Point[] internal testArray;
    Point[] internal nonEqualArray;
    function getArrayIndex() public view returns(Point[] memory){
        return arrayAddresses;
    }
}
