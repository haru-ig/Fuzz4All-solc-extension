pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_4 {
    constructor(uint256 _arrSize) public {
        uint256[3] memory arr = new uint256[](_arrSize);
        arr[0] = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function set(uint256[3] memory arr, uint256 idx, uint256 val) internal {
        arr[idx] = val;
    }
}
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 {
    uint256 constant public ZERO = 5;
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        arr[0] = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            set(arr, i, ZERO);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        arr[idx] = val;
    }
}
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_6 {
    uint256 constant public MAX_VALUE = 9999999999;
    constructor(uint256 _arrSize) public {
        uint256[9] memory arr = new uint256[](_arrSize);
        arr[0] = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            set(arr, i, MAX_VALUE);
        }
    }
    function set(uint256[9] memory arr, uint256 idx, uint256 val) internal {
        arr[idx] = val;
    }
}
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_7 {
    constructor(uint256 _arr
