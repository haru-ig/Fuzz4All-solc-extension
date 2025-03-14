pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL2 {
    uint public x;
    uint public y;
    constructor() public {
        set_x_ext(564241456821);
        set_y_ext(564241456821);
        x = 1297;
        y = 693;
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
