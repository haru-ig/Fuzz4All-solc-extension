pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6{
    uint256[] array;
    uint256 idx;
    uint256 val;
    constructor() public {
        uint256[] memory arr = reset();
        array[idx] = val;
    }
    function reset() public returns(uint256[] memory) {
        uint256[] memory _arr = new uint256[](1);
        uint256[] memory d = _arr;
        uint256[] memory e = d;
        uint256[] memory f = e;
        uint256[] memory g = f;
        d = g;
        array[val] = 0;
        array[idx] = val;
        array[1] = val;
        idx = 0;
        val = 0;
        return d;
    }
    function get() internal returns(uint256) {
        return array[idx];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
