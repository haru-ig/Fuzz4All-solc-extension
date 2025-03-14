pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_5{
    bytes[] memory array;
    bytes memory val;
    constructor() public {
        reset();
        array[1] = val;
    }
    function reset() internal{
        array[idx] = bytes(0);
        array[1] = val;
        val = bytes(0);
        idx = 0;
    }
    function get() internal returns(bytes) {
        return array[idx];
    }
    function set(bytes[] memory arr, uint256 idx, bytes memory val) internal returns(bytes) {
        bytes memory t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
