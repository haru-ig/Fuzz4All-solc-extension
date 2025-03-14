pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6{
    uint256 val;
    uint256[] public array;
    uint256 idx;
    function get() public returns(uint256) {
        return array[idx];
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) public returns(uint256) {
        array[idx] = val;
        return arr[idx];
    }
    constructor() public {
        reset();
        array[0] = 0;
        array[1] = 0;
        array[2] = 0;
        idx = 0;
        val = 0;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6{
    uint256 val;
    uint256[] public array;
    uint8 idx;
    constructor() public {
        reset();
        array[idx] = val;
    }
    function reset() internal{
        val = 0;
        array[val] = 0;
        val++;
        array[val] = 0;
        idx = 0;
        val = 0;
    }
    function get() public returns(uint256) {
        return array[idx];
    }
    function set(uint256[] memory arr, uint8 idx, uint256 val) public returns(uint256) {
        array[idx] = val;
        return array[idx];
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6{
    uint256 val;
    uint256[] public array;
    uint8 idx;
    constructor() public {
        reset();
        array[idx++] =
