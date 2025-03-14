pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_3{
    function set(uint256[][] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx][0];
        arr[idx][0] = val;
        return t;
    }
}
