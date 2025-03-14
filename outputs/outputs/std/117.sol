pragma solidity ^0.8.0;

contract Array is MutateProgram {
    uint8[] public values;

    function push_uint(uint v) mutates {
        arrayLengthPlusOne_unsafe();
        values.push(v);
    }

    function get_uint(uint i) public view returns (uint) {
        return values[i];
    }

    function arrayLengthPlusOne_unsafe() internal pure {
        uint val = values.length + 1;
        assert(val > 0);
    }
}
