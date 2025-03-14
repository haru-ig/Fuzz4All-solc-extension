pragma solidity ^0.8.0;
contract FunctionalEquivalence_NestedDynamicallySizedNestedArrayAssignment_7{
    uint256[] internal parentArray;
    uint256[] internal nestedArray;
    constructor() public {
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        nestedArray[idx] = arr[0];
        return arr[0];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        nestedArray[idx] = val;
        return val;
    }
}
