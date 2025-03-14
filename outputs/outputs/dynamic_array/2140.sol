pragma solidity ^0.8.0;
contract FunctionalEquivalence_NestedDynamicallySizedNestedArrayAssignment_7{
    uint256[] internal parentArray;
    uint256[2] internal nestedArray;
    constructor() public {
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        nestedArray[idx][1]++;
        return nestedArray[idx][1];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        nestedArray[idx][1]++;
        return nestedArray[idx][1];
    }
}
