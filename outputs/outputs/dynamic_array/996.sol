pragma solidity ^0.8.0;
contract LotteryWithNonIndex {
    struct Point {
        uint X;
        uint Y;
    }
    mapping(uint => Point) internal _testCases;
    mapping(uint => Point) internal _nonEqualCases;
    mapping(uint => Point) internal _odd;
    function getNonIndex() public view returns(mapping(uint => Point)){
        return _nonEqualCases;
    }
}
