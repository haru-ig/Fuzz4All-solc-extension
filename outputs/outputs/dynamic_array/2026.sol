pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 {
    struct MyStruct { uint256 arr[10]; };
    constructor(MyStruct memory m) public {
        uint256[] memory arr = new uint256[](10);
        set(arr, 0, 0);
        for (uint256 i = 1; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        uint256 t = arr[idx];
        arr[idx] = val;
        arr[t] = t;
    }
}
