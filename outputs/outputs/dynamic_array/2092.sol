pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_7{
    uint256 val;
    uint256[] public array;
    uint256 idx;
    constructor() public {
        uint256 t = array[idx];
        reset();
        array[idx] = val;
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
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_8{
    uint256 val;
    uint256[] public array;
    uint256 idx;
    constructor() public {
        reset();
        uint256 t = array[idx];
        array[idx] = val;
        reset();
        t = array[idx];
    }
    function reset() internal{
        array[val] = 0;
        array[idx] = val;
        array[1] = val;
        idx = 0;
    }
}
/* This code compiles, but does not execute properly.
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_8 {
    uint256 val = 3;
    uint256[] public array;
    uint256 idx;
    uint256 storedIdx;
    constructor() public {
        array[idx] = val*2;
        array[idx + 1] = val*3;
        idx = idx + 2;
        storedIdx = 0;
    }
    function get() public returns(int256) {
        return array[storedIdx];
    }
    function set() public returns(uint256) {
        uint256 t = array[
