pragma solidity ^0.8.0;

contract LotteryWithArithmetic {
    struct Point {
        uint X;
        uint Y;
    }
    Point[] internal testArray;
    Point[] internal nonEqualArray;
    function getArithmetic() public view returns(Point[] memory){
        return nonEqualArray;
    }
}
