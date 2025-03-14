pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_7{
    uint256 val;
    uint256[] public array;
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;

        return t;
    }
    function reset() internal{
        array[2] = 0;
        array[0] = 0;
        array[idx+1] = 0;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
}
