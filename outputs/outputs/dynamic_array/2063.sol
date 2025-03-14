pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_3 {
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t;

        t = arr[idx];
        arr[idx] = val;

        arr = arr.set(idx, val);
        return t;
    }
}
