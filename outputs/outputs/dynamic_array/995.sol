pragma solidity ^0.8.0;
contract LotteryWithIndexWithoutCopy {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[][] _arrayAddresses;
    function getIndexWithoutCopy() public view returns(Point[][]){
        return _arrayAddresses;
    }
}
