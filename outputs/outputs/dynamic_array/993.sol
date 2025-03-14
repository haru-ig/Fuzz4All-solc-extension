pragma solidity ^0.8.0;
contract LotteryWithArrayIndex {
    uint public totalPoints = 1;
    Point[] public points;
    function increaseX() public{
        totalPoints++;
    }
    function getArrayIndex() public view returns(Point[][][] memory){
        points[ 0 ] =[ [ Point( 1, 1, 1) ] ];
        return nonEqualArray;
    }
}
