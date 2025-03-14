pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Mod_extL2 {
    uint public x;
    uint public y;
    constructor() public {
        x[0] = 1285;
        x[1] = 1286;
        y[0] = 1278;
        y[1] = 1279;
    }
    modifier set_x_ext(uint16[] memory in_value) {
        x = in_value[0];
        x[1] = in_value[1];
        x[2] = in_value[2];
        y = in_value[3];
        y[1] = in_value[4];
        y[2] = in_value[5];
        _;
    }
    modifier set_y_ext(uint16[] memory in_value) {
        x = in_value[1];
        x[0] = in_value[2];
        x[1] = in_value[3];
        y = in_value[4];
        y[0] = in_value[5];
        y[1] = in_value[6];
        _;
    }
}
