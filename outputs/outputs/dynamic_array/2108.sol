pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedArrayAssignment_7{
    uint256[] public parentArray;
    uint256[] private staticChildArray;
    uint256 val;
    constructor() public {
    }
    function set() internal {
        parentArray[0] = val;
        val = 0;
    }
}
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_1{
    uint256[] public parentArray;
    uint256[][2] public nestedArray;
    uint256[] public staticChildArray;
    constructor() public {
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
