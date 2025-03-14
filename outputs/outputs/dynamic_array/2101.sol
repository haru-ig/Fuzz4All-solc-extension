pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_5{
    uint256 val;
    uint256[] public array;
    uint256 idx;
    uint256[] public array2;
    uint256 idx2;
    constructor() public {
        reset();
        array[idx] = val;
        array[idx2] = val;
    }
    function reset() internal{
        array[val] = 0;
        array[idx] = val;
        array[idx2] = val;
        idx = 0;
        idx2 = 0;
        val = 0;
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
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_4{
    uint256 val;
    uint256[] public array;
    uint256 idx;
    Constructor(uint256 idx) public {
        array[idx] = val;
    }
    function reset() internal{
        array[val] = 0;
        array[idx] = val;
        val = 0;
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
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_3{
    uint256 val;
    uint256[] public array;
    uint256 idx;
