pragma solidity ^0.8.0;
contract LotteryWithArithmetic {
    struct Point {
        uint X;
        uint Y;
    }
    Point[] internal testArray;
    Point[] internal nonEqualArray;
    function getArithmetic() public view returns(Point[] memory){
        testArray.push(Point(10, 20));
        testArray.push(point(11, 22));
        return nonEqualArray;
    }
    function setNonEqualArray() public {
        for (uint256 i = 0; i<nonEqualArray.length - 1; i++) {
            emit TestEvent("NotEqual" + i.toString());
        }
        nonEqualArray.push(point(21, 23));
    }
    function point(uint x, uint y) public pure returns(Point memory){
        return Point(x, y);
    }
}
