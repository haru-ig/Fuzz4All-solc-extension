pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_4{
    uint256[] array;

    function set_1(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
    function reset_1() internal {

        array[idx] = 0;
    }



    constructor() public {

        set_1(array, 1, 6);
    }
}
