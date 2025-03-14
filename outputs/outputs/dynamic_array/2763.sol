pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Mod_extL4 {
    uint256 public x;
    uint public y;
    constructor() public {
        x = 120;
        y = 134;
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
