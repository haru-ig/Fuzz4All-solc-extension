pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Mod_extL2 is SemanticEquality_ArrayMutations36_Mod_extL1 {
    uint public y2;
    uint public x2;
    constructor() public { }
    modifier set_x_ext3(uint in_value) {
        require(x == 3, "Error");
        x = in_value;
        y2 = 32765;
        y = 65523;
        x2 = in_value;
        _;
    }
}
