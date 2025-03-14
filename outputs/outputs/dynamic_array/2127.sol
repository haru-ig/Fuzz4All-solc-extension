pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedCalldataAssignment_5{
    uint256[] internal childArray;
    uint256[] internal parentArray;
    constructor() public {
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        uint256 t = parentArray[arr[idx]];
        parentArray[arr[idx]] = 0;
        return t;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = parentArray[arr[idx]];
        parentArray[arr[idx]] = val;
        return t;
    }
    function setChild(uint256[] internal child, uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = parentArray[arr[idx]];
        parentArray[arr[idx]] = val;
        for (uint256 i = 0; i < child.length; ++i)
            parentArray[child[i]] = 0;
        return 0;
    }
}
