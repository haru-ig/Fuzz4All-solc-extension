pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedStaticallySizedNestedDynamicallySizedNestedArrayAssignment_4 {
    uint256[] internal nestedArray;
    uint256[] internal staticChildArray;
    constructor() public {
    }
    function _insert(uint256[] memory arr, uint256 idx, uint256 val) internal {
        staticChildArray.push(0);
        staticChildArray.push(0);
        staticChildArray.push(val);
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = staticChildArray[int(arr[idx])];
        staticChildArray[idx] = val;
        return t;
    }
}
