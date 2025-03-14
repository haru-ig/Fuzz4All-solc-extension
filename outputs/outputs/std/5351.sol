pragma solidity ^0.8.0;
contract ArrayExampleMutated{
    uint256 length = 10;
    uint256[] public array = [1,  100,  64, 8126, 9999999999999999999, 9999999999999999999];
    uint y = 0;
    uint z = 1;
    uint[] v;
    function test() public returns(uint) {
        uint x = length;
        uint temp = 1;
        float x_to_pointer = array[x];
        uint256 x_to_pointer_to_uint = array[x];
        uint x_to_pointer_to_uint_to_bool = array[x];
        uint8 bytearray_to_uint16 = array[x];
        uint256 x_to_pointer_to_uint_to_bool_to_uint = array[x];
        uint8 bytearray_to_uint16_to_uint = array[x];
        uint16 x_to_pointer_to_uint16_to_bytearray = array[x];
        uint16 x_to_pointer_to_uint16_to_bytearray_to_uint8 = array[x];
        while (z < length) {
            y +=  array[z];
            z++;
            temp = x;
            uint v_to_pointer = array[z];
            uint v_to_pointer_to_uint = array[z];
            uint v_to_pointer_to_uint_to_bool = array[z];
            uint8 bytearray_to_uint16 = array[z];
            uint256 x_to_pointer_to_uint_to_bool = (array[z] * z) * temp;
            uint8 bytearray_to_uint16_to_uint = array[z];
            uint16 x_to_pointer_to_uint16_to_bytearray = array[z
