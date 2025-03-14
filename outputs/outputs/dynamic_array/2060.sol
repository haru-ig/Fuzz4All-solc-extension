pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_3{
    function set(address[] memory arr, uint256 idx, address val) internal returns(address) {
        address t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
