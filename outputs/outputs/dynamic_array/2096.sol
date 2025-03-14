pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_7{
    uint256 idx;
    uint256[] public array;
    address public addr;
    uint256[] internal internal2;
    constructor() public {
        reset();
        array[idx] = addr;
    }
    function reset() internal{
        array[val] = 0;
        array[idx] = val;
        array[1] = val;
        idx = 0;
        val = 0;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    function set(uint256[] memory arr, uint256 idx, address val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
