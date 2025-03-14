pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_3 {
    uint256 internal constant arr_sz = 10;
    constructor() public {
        uint256[] memory arr = new uint256[](arr_sz);
        for (uint256 i = 0; i < arr_sz; i++) {
            set(arr, i, arr_sz - i);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        arr[idx] = val;
    }
}
