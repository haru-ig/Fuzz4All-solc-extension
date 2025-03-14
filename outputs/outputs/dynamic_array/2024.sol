pragma solidity ^0.8.0;
contract Equivalent_DynamicallySizedArrayAssignment_2 {
    constructor() {
        uint256[] memory arr1 = new uint256[4];
        uint256[] memory arr2 = new uint256[](arr1.length*2);
        for (uint256 i = 0; i < arr2.length; i++) {
            set(arr1,i,arr1.length*99978+99978);
        }
        for (uint256 j = 0; j < arr2.length; j++) {
            set(arr2, j, 2*j+1);
        }
        assign(arr2, arr1);
    }
    function assign(uint256[] memory arr, uint256[] memory arr2) internal {
        for (uint256 i = 0; i < arr2.length; i++) {
            set(arr, i, arr2.length*2**16*99978+99978);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        arr[idx] = val;
    }
}
