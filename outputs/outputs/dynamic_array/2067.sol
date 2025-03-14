pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_4{
    uint256[] storage array;
    uint256 idx;
    uint256 val;
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
    function reset() internal {
        array[idx] = 0;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    constructor() public {
        _set(array, 1, 6);
        array[3] = 7;
    }
    function _set(uint256[] memory _arr, uint256 _idx, uint256 _val) private {
        uint256 t = _arr[_idx];
        _arr[_idx] = _val;
    }
}
