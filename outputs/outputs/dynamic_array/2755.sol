pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Mod_extL4 {
    uint public x;
    uint public y;
    constructor() public {
        x = 1873253937;
        y = 123789289;
    }
    modifier set_x_ext(uint in_value) {
        x = in_value;
        y = in_value >>  1;
        _;
    }
    modifier set_y_ext(uint in_value) {
        x = in_value >> 22;
        y = in_value;
        _;
    }
}
