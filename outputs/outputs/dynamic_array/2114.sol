pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2{
    uint256[] public parentArray;
    uint256[][2] public nestedArray;
    uint256[] public staticChildArray;
    constructor() public {
    }
    function get(uint256 idx) internal returns(uint256, uint256) {
        return (nestedArray[idx][0], nestedArray[idx][1]);
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        nestedArray[idx][0] = val;
        nestedArray[idx][1] = arr[idx];
    }
}
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_3{
    uint256[] public parentArray;
    uint256[][2] public nestedArray;
    uint256[] public staticChildArray;
    constructor() public {
    }
    function get(uint256 idx) internal returns(uint256) {
        return nestedArray[idx][0];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal revertsWithReason("Not the same");
    function setReverted(uint256 idx) internal {
        nestedArray[idx][0] = val;
        nestedArray[idx][1] = arr[idx];
    }
}
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_4{
    uint256[] public parentArray;
    uint256[][2] public nestedArray;
    uint256[] public staticChildArray;
    address payable address;
    function __init__() public payable {
        address =
