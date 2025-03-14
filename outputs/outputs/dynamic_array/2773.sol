pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Mod_extR1 {
    uint public x;
    uint[245] x_arr;
    uint public y;
    uint public z;
    modifier set_x_ext3_ext3(uint in_value1, uint in_value2) {
        x_arr[0] = in_value1;
        x_arr[1] = in_value2 >> 8;
        x = in_value2 >> 8;
        y = in_value2 >> 8;
        z = in_value2;
        x_arr[165] = in_value1 >> 8;
        x_arr[165 + 124] = in_value2 >> 8;
        x_arr[165 + 124 + 125] = in_value2 >> 8;
        x = in_value2 >> 8;
        y = in_value2 >> 8;
        z = in_value1;
        _;
    }
}
/* Please create a complex program that uses dynamic arrays in 6 different ways. Please also provide your thoughts, if any.
