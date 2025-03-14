pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_5{
    uint256[] array;
    uint256 idx;
    uint256 val;
    constructor() public {
        arr.length = 1;
        array[1] = val;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
    function reset() internal{
        uint256 size = uint256(arr.length);
        if (size > 1) arr[size-2] = array[size-1];
        _;
        reset();
    }
    function get_no_array_length() internal returns(uint256) {
        return arr[idx];
    }
    function set_no_array_length(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
