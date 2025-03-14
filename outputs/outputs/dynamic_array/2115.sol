pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_3{
    uint256[] public parentArray;
    uint256[][2] public nestedArray;
    uint256[] public staticChildArray;
    constructor() public {
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        uint256 t = nestedArray[arr[idx]][0];
        nestedArray[arr[idx]][0] = 0;
        nestedArray[arr[idx]][1] = 0;
        return t;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = nestedArray[arr[idx]][0];
        nestedArray[arr[idx]][1] = 0;
        nestedArray[arr[idx]][0] = val;
        return t;
    }
}
