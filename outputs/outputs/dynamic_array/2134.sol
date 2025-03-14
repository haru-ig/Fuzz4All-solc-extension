pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_5{
    uint256[] internal parentArray;
    uint256[2] internal nestedArray;
    uint256 internal staticChildArray;
    constructor() public {
    }
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        uint256 t = nestedArray[idx];
        nestedArray[idx] = 0;
        return t;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = nestedArray[idx];
        nestedArray[idx] = val;
        return t;
    }
}
