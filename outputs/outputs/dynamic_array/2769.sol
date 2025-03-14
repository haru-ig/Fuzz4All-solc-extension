pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Mod_extL4 {
    uint public x;
    uint[81] x_arr;
    constructor() public {
        x_arr[0] = 0;
        x_arr[1] = 1 << 7;
        x = 0x1 << 244;
        x_arr[164] = 0;
    }
    modifier set_x_ext1(uint in_value) {
        x_arr[128] = in_value;
        x_arr[129] = in_value >> 8;
        x = 0x1 << 164;
	_;
    }
}
