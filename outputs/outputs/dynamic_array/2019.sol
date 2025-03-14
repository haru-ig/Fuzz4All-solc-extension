pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_3 {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        arr[0] = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        arr[idx] = val;
    }
}
