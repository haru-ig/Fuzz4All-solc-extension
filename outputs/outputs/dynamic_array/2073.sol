pragma solidity ^0.8.0;
contract Repro_FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_3{
    uint256[] array;
    uint256 idx;
    uint256 val;
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        idx = idx+1;
        return t;
    }
    function modify(uint256 i, uint256 k, uint256 y) internal returns(uint256) {
        val = 100;
    }
    function reset() internal {
        array[idx] = 0;
    }
    function print() internal returns(uint256) {
        return get(array, idx);
    }
    constructor() public {
        set(array, 1, 6);
        modify(idx, 1, val);
        array[3] = 7;
        reset();
    }
}
