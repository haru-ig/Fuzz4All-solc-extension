pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Mod_extL2 {
    uint public x;
    uint[271] x_arr;
    uint public y;
    constructor() public {
        x_arr = [0,1,2,3,4,5,6,7,8,9,10];
    }
    modifier set_x_ext3(uint in_value) {
        x = in_value;
        x_arr[0] = x << 26;
        x_arr[1] = in_value >> 16;
        x_arr[2] = in_value >> 24;
        x_arr[3] = in_value >> 32;
        x_arr[4] = in_value >> 40;
        x_arr[5] = in_value >> 48;
        x_arr[6] = in_value >> 56;
        y = in_value >> 56;
        x_arr[165] = in_value >> 16;
        x_arr[166] = in_
