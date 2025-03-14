pragma solidity ^0.8.0;

contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_7{

    function reset() public {
        array[id] = val;
        array[1] = val;
        id = 0;
        val = 0;
    }
    function get() public view returns (uint256) {
        return array[id];
    }
    function set(uint256[] memory arr, uint256 id, uint256 val) public returns (uint256) {
        uint256 t = arr[id];
        arr[id] = val;
        return t;
    }
    uint256[] public array;
}


pragma solidity ^0.8.0;

contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_8{
    uint256 public val;
    uint256 val2;
    string constant addrFmt = "0x%040x";
    constructor() public {
        val = 1;
        val2 = 1;
