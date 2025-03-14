pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Mod_extL4 {
    uint public x;
    uint[244] x_arr;
    uint y;
    constructor() public {
        x_arr = [0,1,2,3,4,5,6,7,8,9,10];
        y = 1278;
    }
    modifier set_x_ext1(uint in_value) {
        x_arr[0] = in_value >> 8;
        x_arr[1] = in_value;
        x = in_value;
        y = in_value >> 8;
        _;
    }
    modifier set_y_ext2(uint in_value) {
        y = in_value;
        x_arr[165] = in_value >> 8;
        x_arr[166] = in_value;
        _;
    }
}
