pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6{
    uint256[] array;
    constructor() public {
        reset();
        reset();
        reset();
    }
    function reset() internal {
        array[0] = array[1];
        array[1] = array[0];
    }
    function get() internal returns(uint256) {
        return array[1];
    }
}
