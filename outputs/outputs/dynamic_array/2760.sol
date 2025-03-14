pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Mod_extL4 {
    uint public x;
    uint public y;
    constructor() public {
        x = 1278;
        y = uint8(1285);
    }
    modifier set_x_ext(uint in_value) {
        x = in_value >> 8;
        _;
    }
    modifier set_y_ext(uint in_value) {
        y = in_value >> 8;
        _;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Mod_extL4 {
    uint public x;
    uint public y;
    uint8 public y_ext;
    constructor() public {
        x = 1278;
        y_ext = uint8(1285);
    }
    modifier set_x_ext(uint in_value) {
        x = in_value >> 8;
        _;
    }
    modifier set_y_ext(uint in_value) {
        if(x > 0 && x < 200)
            x = in_value >> 8;
        y_ext = uint8(in_value) & 0x3f;
        _;
    }
}
