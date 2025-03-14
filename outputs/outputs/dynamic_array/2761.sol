pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Mod_extL4_2 {
    uint public x;
    uint public y;
    constructor() public {
        x = 1278;
        y = 1285;
    }
    modifier set_x_ext(uint in_value1) {
        x = in_value1 >> 8;
        _;
    }
    modifier set_y_ext(uint in_value2) {
        x = in_value2;
        y = in_value2 >> 8;
        _;
    }
}
