pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_8{
    uint256 val;
    uint256[] memory a;
    uint256 idx;
    constructor() public {
        val = get();
    }
    function get() internal returns(uint256) {
        return val;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
}


contract Contract_FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_4 {
    function isEqual(uint256 x, uint256 y) public pure returns (bool) {
        return x < y;
    }
    function isNull(uint256 v) public pure returns (bool) {
        return v == 0;
    }
    function arrayIsEmpty(uint256[] memory x) public pure returns (bool) {
        return x.length == 0;
    }
    function equalArraySizes(uint256[] memory x) public pure returns (uint256[][] memory) {
        uint256[][] memory result = new uint256[2][];
        result[0] = x;
        result[1] = new uint256[](0);
        return result;
    }
    function arrayIsDistinct(uint256[] memory X, uint256[] memory Y) public pure returns (uint256[][] memory) {
        uint256[][] memory result = new uint256[2]();
        uint256[] memory x = X;
        uint256[] memory y = Y;
        for (uint256 i = 0; i<2; i++) {
            uint256[] memory copy = new uint
