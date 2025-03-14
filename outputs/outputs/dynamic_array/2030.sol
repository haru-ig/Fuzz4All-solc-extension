pragma solidity ^0.8.0;
contract MutatedAssignment {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        set(arr, 0, 0);
        for (uint256 i = 1; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        uint256 t = arr[idx];
        arr[idx] = val;
        set(arr, t, t-1);
    }
}


pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        uint256[] memory arr1 = new uint256[](_arrSize+1);
        set(arr, 0, 0);
        arr1[0] = arr.length;
        for (uint256 i = 1; i < arr
