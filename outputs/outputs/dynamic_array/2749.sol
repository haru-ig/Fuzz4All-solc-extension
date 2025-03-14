pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Mod_extL1 {
    uint public x;
    uint public y;
    constructor() public {
        x = 1285;
        y = 1278;
    }
    modifier set_x_ext(uint in_value) {
        x = in_value;
        _;
    }
    modifier set_y_ext(uint in_value) {
        y = in_value;
        _;
    }
}
