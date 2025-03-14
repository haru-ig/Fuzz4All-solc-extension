pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6{
    uint256[] array;
    uint256 idx;
    uint256 val1;
    uint256 val2;
    constructor() public {
        reset();
    }
    function reset() internal{
        array[val1] = val2;
        array[val2] = val1;
        array[idx] = val1;
        idx = 0;
        val1 = val2;
        val2 = 0;
    }
    function get() internal pure returns(uint256) {
        return array[idx];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val1) public pure returns(uint256) {
        uint256 t1 = arr[idx];
        uint256 t2 = arr[val1];
        arr[idx] = t1;
        arr[val1] = t2;
        arr[1] = t1;
        return t2;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_7{
    uint256[] array;
    uint256 val1;
    uint256 val2;
    constructor() public {
        reset();
    }
    function reset() internal{
        array[val1] = val2;
        array[val2] = val1;
        array[1] = val1;
        val1 = val2;
        val2 = 0;
    }
    function get() internal pure returns(uint256) {
        return array[idx];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val1) public pure returns(uint256) {
        uint256 t1
