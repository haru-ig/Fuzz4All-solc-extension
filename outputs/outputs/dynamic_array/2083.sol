pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_2{
    uint256[] array;
    uint256 idx;
    uint256 val;
    constructor() public {
        array[idx] = val;
        reset();
    }
    function reset() internal{
        reset();
        array[val] = 0;
        array[idx] = val;
        array[1] = val;
        idx = 0;
        val = 0;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    function set() internal returns(uint256[] memory) {
        uint256 t = array[val];
        array[val] = 0;
        array[idx] = val;
        array[1] = val;
        idx = 0;
        return (t);
    }
}
