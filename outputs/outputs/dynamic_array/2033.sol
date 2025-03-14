pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_3 is A{
    uint256[] arr;
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        arr[t] = t;
    }
    constructor() public{
        require(check(func(uint256[] memory arr, uint256 i, uint256 j) external returns(uint256,uint256), 1, 1), "arr is empty");
        require(func(uint256[] memory arr, uint256 i, uint256 j) external returns(uint256,uint256), 0, 1, 0), "arr is empty";
        require(arr[0] == 0, "arr[0] is 0");
        require(arr[1] == 0, "arr[1] is 0");
        set(arr, 0, 0);
        set(arr, 1, 1);
        set(arr, 2, 2);
        set(arr, 3, 4);
        set(arr, 4, 6);
        set(arr, 5, 5);
        set(arr, 6, 7);
        set(arr, 7, 11);
        set(arr, 9, 8);
        set(arr, 10, 12);
        set(arr, 11, 13);
        require(func(uint256[] memory arr, uint256 i, uint256 j) external returns(uint25
