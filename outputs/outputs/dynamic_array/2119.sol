pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_3 {
    uint256[] public parentArray;
    uint256[][2] public nestedArray;
    uint256[] public staticChildArray;
    constructor() public {
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        uint256 t = nestedArray[arr[idx]][0];
        if (nestedArray[arr[idx]][0] == 0) {
            nestedArray[arr[idx]][0] = arr[idx + 1];
            nestedArray[arr[idx]][0] ^= arr[idx + 1];
            nestedArray[arr[idx]][0] &= uint256(nestedArray[arr[idx] + 1][1]);
            nestedArray[arr[idx]][0] ^= uint256(nestedArray[arr[idx][1]][1]);
            nestedArray[arr[idx]][0] ^= arr[idx + 1] & uint256(nestedArray[arr[idx][1]][1]);
        }
        return t;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = nestedArray[arr[idx]][0];
        if (nestedArray[arr[idx]][0] == 0) {
            nestedArray[arr[idx] + 1][1] = 1;
            nestedArray[arr[idx]][0] = uint256(nestedArray[arr[idx] + 1][1]);
        } else if (nestedArray[arr[idx]][0] == arr[idx + 1]) {
            nestedArray[arr[idx]][0] ^= arr[idx +
