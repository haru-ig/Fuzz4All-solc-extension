pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_3{
    uint256[] array;
    uint256 idx;
    uint256 val;
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
    function reset() internal {
        array[idx] = 0;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    constructor() public {
        set(array, 1, 6);
        array[3] = 7;
    }
}
