pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37{
    uint public x;
    uint[271] x_arr;
    uint public y;

    constructor() public {
        x = 0;
        x_arr = [0,1,2,3,4,5,6,7,8,9,10];
        y = 1278;
    }

    function assign_array_1(uint in_value) public set_x_ext3(in_value) set_y_ext4(in_value >> 56) set_x_ext3(in_value) set_y_ext4(in_value >> 56);
    function assign_array_2(uint[271] memory in_value) public set_x_ext3(in_value) set_y_ext4(in_value >> 56) set_x_ext3(in
