pragma solidity ^0.8.0;
library C_Array {
    uint8 internal _type = 0;
    struct arrayUint8 {
        uint8[] storage bytes;
        uint8 length
    }
    struct arrayInt8 {
        int8[] storage bytes;
        uint8 length
    }


    constructor(uint8 arrType) {
    }
    function find_min(arrayUint8 memory arr) pure public returns(uint8) {

    }
    function find_max(arrayUint8 memory arr) pure public returns(uint8) {

    }
    function sum(arrayUint8 memory arr) pure public returns(uint256) {

    }
    function set(arrayUint8 storage arr, uint k, uint x) public {

    }
    function get(arrayUint8 memory arr, uint k) public view returns(uint) {

    }


    function clone(arrayUint8 memory arr) public view returns(uint8) {

    }



    function set_int(arrayInt8 storage arr, uint8 b, int256 w) public {


    }

    function get_int(arrayInt8 memory arr, uint8 b) public view returns(uint8, int256) {


    }
}
