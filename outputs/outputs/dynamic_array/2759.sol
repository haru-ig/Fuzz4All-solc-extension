pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Mod_extL4 {
    uint public x;
    uint public y;
    constructor() public {
        x = 1278;
        y = 1285;
    }
    modifier set_x_ext(uint in_value) {
        x = in_value >> 8;
        y = in_value;
        _;
    }
    modifier set_y_ext(uint in_value) {
        x = in_value;
        y = in_value >> 8;
        _;
    }
}
