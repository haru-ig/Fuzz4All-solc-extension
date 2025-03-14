pragma solidity ^0.8.0;
contract StructuralEquivalence_MutatedDynamicallySizedArrayAssignment_3{
    uint256 idx;
    uint256 val;
    function modify(uint256[] memory arr, uint256 idx, uint256 val) internal {
        uint256 x = set(arr, idx + 1, val);
        uint256 y = arr[idx];
        if (x < 1 || x > 3) {
            revert("Incorrect assignment of values");
        }
        if (y < 1 || y > 7) {
            revert("Incorrect assignment of values");
        }
    }
    function reset() internal {
        array[idx] = 0;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    constructor() public {
        modify(array, 1, 6);
        array[3] = 7;
    }
}
