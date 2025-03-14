pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_4{
    uint256[] public array;
    uint256 idx;
    uint256 val;
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
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
    function test(uint64 num) public {
        require(uint8(array[0]) == num);
        set(array, 1, 6);
        set(array, 3, 7);
        uint256 t = array[0];
        require(uint8(t) == num);
    }
    constructor() public {
        set(array, 1, 6);
        array[3] = 7;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_5{
    uint256[] public array;
    uint256 idx;
    uint256 val;
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
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
    function test(uint t) public returns (uint256) {
        require(uint8(array[0]) == t);
        set(array, 1, 6);
        set(array,
