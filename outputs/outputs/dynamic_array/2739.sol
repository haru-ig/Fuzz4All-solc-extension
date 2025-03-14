pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL1 {
    uint public x;
    uint public y;
    constructor() public {
        x = 1005;
        y = 2625 - 4;
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
