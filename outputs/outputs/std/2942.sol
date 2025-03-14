pragma solidity ^0.8.0;
contract MutateArray_v4 {
    struct arraydata {
        uint8[] array;
    }

    arraydata set_data;
    arraydata get_data;

    function set(uint8 _x) public {
        set_data.array.push(_x);
    }
    function get() public view returns (uint8[8]) {
        return get_data.array;
    }
}
