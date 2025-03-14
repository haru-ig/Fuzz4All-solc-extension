pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_7{
    uint256 val;
    uint256[] public array;
    uint256 idx;
    constructor() public {
        reset();
        array[idx] = val;
        array[0] = val;
        array[1] = val;
        array[2] = val;
        idx = 0;
        val = 0;
    }
    function reset() internal{
        array[val] = 0;
        array[idx] = val;
        array[1] = val;
        array[2] = val;
        idx = 0;
        val = 0;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx + 1];
        arr[idx + 1] = val;
        arr[idx + 2] = t;
        return t;
    }
}


pragma solidity ^0.8.0;
contract Func {
    constructor() internal {}
    function _call() public pure returns(uint256){
        return
