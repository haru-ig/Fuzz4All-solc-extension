pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Mod_extL2 is SemanticEquality_ArrayMutations37_Mod_extL1 {
    modifier set_x_ext_big_endian(uint in_value) {
        x_arr[1] = in_value;
        x_arr[0] = in_value >> 16;
        _;
    }
    modifier set_y_ext(uint in_value) {
        y = in_value;
        x_arr[0] = in_value >> 16;
        x_arr[1] = in_value >> 24;
        x_arr[2] = in_value >> 32;
        x_arr[3] = in_value >> 40;
        x_arr[4] = in_value >> 48;
        x_arr[5] = in_value >> 56;
        _;
    }
}
