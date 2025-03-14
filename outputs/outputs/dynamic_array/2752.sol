pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations47_Mod_extL1 {
    uint[] public x;
    uint public y;
    constructor() public {
        x[0] = 1285;
        x[1] = 2;
        x[2] = 3;
        x[3] = 7;
        x[4] = 0;

        x = [1, 2, 3, 7, 0];
        y = 1278;
    }
    modifier set_x_ext(uint in_value1, uint in_value2, uint in_value3, uint in_value4) {
        x[0] = in_value1;
        x[1] = in_value2;
        x[2] = in_value3;
        x[3] = in_value4;
        _;
    }
    modifier set_y_ext(uint in_value) {
        y = in_value;
        _;
    }
}
