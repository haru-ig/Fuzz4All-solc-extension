pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_7{
    uint256 val;
    uint256[] public array;
    constructor() public{
        val = 3;
        array[1] = val;
    }

    function get() public returns(uint256) {
        uint256 t = array[val + 1];
        uint256 size = 4;
        if (size && size <= array.length) {
            size = array[1];
        }
        array[1] = t;
        return t;
    }

    function set(uint256 arr, uint256 idx, uint256 val) public returns(uint256) {
        uint256 t = arr[idx + 1];
        arr[idx + 1] = val;
        return t;
    }

    function set1() public {
        array[uint256(20+2*val)] = array[uint256(20)];
    }

    function set2() public {
        uint256 len = 20;
        while (idx > 0) {
            uint256[] memory arr = new uint256[](len);
            for (uint256 i = 0; i <= idx; i++) {
                arr[i] = array[i + 1];
            }
            uint256 t = array[idx + 1];
            array[idx + 1] = array[val];
            array[val] = array[idx];
            uint256 _len = len;
            len = _len/2 + (t == 0);
            array = arr;
            len += 1;
            idx /= 2;
        }
    }
}
