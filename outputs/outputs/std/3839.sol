pragma solidity ^0.8.0;
contract IntegerRange {
    uint256 public min, max;
    constructor() {
        min = 0;
        max = 10;
    }
    function findMax() internal pure returns (uint256) {
        return max;
    }
    function findMin() internal pure returns (uint256) {
        return min;
    }
}
