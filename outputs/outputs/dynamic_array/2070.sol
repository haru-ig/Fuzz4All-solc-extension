pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_4{
    uint256[] array;
    uint256 idx;
    uint256 val;
    constructor() public {
        reset();
        array[1] = val;
    }
    function reset() internal{
        array[idx] = 0;
        array[1] = val;
        val = 0;
        idx = 0;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
