pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedArrayAssignment_10{
    uint256[] parentArray;
    uint256[10] public nestedArray;
    uint256[][] public staticChildArray;
    constructor() public {
        set(parentArray, dynamicSize, nestedArray);
    }
    function set(uint256[] memory parentArray_, uint256[] memory nestedArray_, uint256[][] memory staticChildArray_) internal {
        parentArray = parentArray_;
        nestedArray = nestedArray_;
        staticChildArray = staticChildArray_;
    }
}
