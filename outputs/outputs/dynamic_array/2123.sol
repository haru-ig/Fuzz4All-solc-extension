pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_4{
    uint256[] public parentArray;
    uint256[][2] public nestedArray;
    uint256[] public staticChildArray;
    constructor() public {
        parentArray.length = 2;
        parentArray[0] = 1;
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        uint256 t = getChild(getGrandchild(arr[idx]), 0);
        return getChild(getGrandchild(arr[idx]), 1);
    }

    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 val0 = getChild(getChildren(getNest());
        uint256 val1 = getChild(getChildren(getNest()), 1);
        nestedArray = [ [val0, val1] ];
        parentArray[idx] = val;
        setChild(getNest(), 0, val0);
        setChildren(getNest(), 1, val1);
        return val;
    }
}
