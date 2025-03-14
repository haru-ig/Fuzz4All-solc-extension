pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_5{
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        uint256 x = arr[t];
        arr[t] = val;
        arr[x] = val;
        return idx+2;
    }
}
