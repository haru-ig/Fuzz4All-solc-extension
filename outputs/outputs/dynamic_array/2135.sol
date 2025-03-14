pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_6 {
    uint256[] public parentArray;
    uint256[] externalChildArray;
    uint256[] internalChildArray;
    uint256 internal staticChildArray;

    constructor() public {
    }
    function get(uint256[][] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = internalChildArray[idx];
        internalChildArray[idx] = val;
        return t;
    }
    function set(uint256[][] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = internalChildArray[idx];
        internalChildArray[idx] = val;
        return t;
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        uint256 t = externalChildArray[idx];
        externalChildArray[idx] = 0;
        return t;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = externalChildArray[idx];
        externalChildArray[idx] = val;
        return t;
    }
    function get(uint256[2] memory arr, uint256 idx) internal returns(uint256) {
        uint256 t = parentArray[idx];
        parentArray[idx] = 0;
        return t;
    }
    function set(uint256[2] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = parentArray[idx];
        parentArray[idx] = val;
        return t;
    }
    function get(uint256[] memory arr)
