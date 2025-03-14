pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedEquivalence_MutatedDynamicallySizedArrayAssignment_3{
    uint256 val;
    uint256[] public array;
    function get() internal returns(uint256) {
        return array[0];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
    constructor() public {
        array[0] = val;
        val = 0;
    }
}
contract FunctionalEquivalence_MutatedMutatedEquivalence_MutatedDynamicallySizedArrayAssignment_6{
    function set(uint256 _array, uint256 _idx, uint256 _val) internal {
        _array[_idx] = _val;
    }
    function get(uint256 _array, uint256 _idx) internal returns(uint256 _t) {
        return _array[_idx];
    }
    uint256[] public array;
    address contractA;
    uint256 a;
    uint256 b;
    constructor(uint256 _a, uint256 _b, address _contractA) public {
        a = _a;
        b = _b;
        contractA = _contractA;
        array[0] = a;
    }
    function functionMutatedAndUsedAsCondition_1() external returns (uint256) {
        return uint256(get(a, b));
    }
