pragma solidity ^0.8.0;
contract FunctionalEquivalence_NestedDynamicallySizedNestedArrayAssignment_4{
    uint256[] public parentArray;
    uint256 parentArrayLen;
    uint256[] nestedArray;
    uint256 nestedArrayLen;
    uint256[] staticChildArray;
    uint256 staticChildArrayLen;
    constructor() public {
    }
    function create(uint256[] memory arr, uint256 idxAdd, uint256 arrLen, uint16 val) internal returns(uint256) {
        parentArrayLen += uint256(1);
        arr[idxAdd + arrLen] = val;
        return 1;
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint16) {
        arr[idx + parentArrayLen] = 0;
        return arr[idx + parentArrayLen];
    }
    function modify(uint256[] memory arr, uint256 idxMod, uint16 val) internal returns(uint256) {
        arr[idxMod] = val;
        return 1;
    }
    function set(uint256[] memory arr, uint256 idx, uint16 val) internal returns(uint256) {
        arr[idx + parentArrayLen] = val;
        return 1;
    }
    function add(uint256[] memory arr, uint256 idxAdd, uint256 arrLen) internal returns(uint256) {
        arr[idxAdd + parentArrayLen + arrLen] = 1;
        return 1;
    }
    function drop(uint256[] memory arr, uint256 idxDrop) internal returns(uint256) {
        parentArrayLen
