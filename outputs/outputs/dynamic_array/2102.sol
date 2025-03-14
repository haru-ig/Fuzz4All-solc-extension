pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_7{
    uint256[] public array;
    uint256 val;
    constructor() public {
        array[1] = val;
        val = 0;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
contract FunctionalEquivalence_MutatedDynamicallySizedNestedArrayAssignment_1{
    uint256[] public array;
    uint256[][3] public nestedArray;
    constructor() public {
        nestedArray[0][2] = 0;
    }
    function get() internal returns(uint256) {
        return nestedArray[0][0];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
}
