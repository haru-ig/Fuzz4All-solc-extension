pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Mod_extL5 {
    uint public x;
    uint[256] x_arr;
    uint y;
    constructor() public {
        x_arr = [0,1,2,3,4,5,6,7,8,9,10];
        x = 128;
        y = 1278;
    }
    modifier set_x_ext3(uint in_value) {
        x_arr[254] = in_value >> 8;
        x_arr[255] = in_value;
        x = in_value;
        y = in_value >> 8;
        _;
    }
    modifier set_y_ext4(uint in_value) {
        y = in_value;
        x_arr[165] = in_value >> 8;
        x_arr[166] = in_value;
        _;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations38_Mod_extL6 {

    uint[255] public x_arr;

    uint[255] public x_arr_ext;
    uint public y;
    constructor() public {
        x_arr = [0,1,2,3,4,5,6,7,8,9,10];
    }
    modifier set_x_ext5(uint in_value) {

        x_arr[0] = in_value >> 8;
        x
