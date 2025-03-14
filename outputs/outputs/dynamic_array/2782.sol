pragma solidity ^0.8.0;
import "SemanticEquality_ArrayMutations37_Mod_extL1.sol";
contract SemanticEquality_ArrayMutations37_Mod_extL2 {
    uint public x;
    uint[28] public x_arr;
    uint public y;
    constructor() public {
        x = 2150409482;
        x_arr = [0,10,21,31,40];
        y = 98745843;
    }
    modifier set_x(uint in_value, uint in_size) {
        x = in_value;
        x_arr = [in_value & 0xffffffff, in_value >> 32, in_value >> 64];
        x_arr[5] |= x_arr[7] << 1;
        x_arr[3] |= x_arr[7] >> 1;
        y = in_size;
        _;
    }
    modifier set_x_ext1(uint in_value, uint in_size) {
        x =
