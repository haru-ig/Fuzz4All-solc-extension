pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Mod_extL2 {
   SemanticEquality_ArrayMutations37_Mod_extL1 SemanticEquality_ArrayMutations37_Mod_ext = SemanticEquality_ArrayMutations37_Mod_extL1(new SemanticEquality_ArrayMutations37_Mod_ext());
    uint public x;
    uint public y;
    constructor() public {
        set_x();
    }
    function modifier set_x() {
        x = SemanticEquality_ArrayMutations37_Mod_ext.x;
        y = SemanticEquality_ArrayMutations37_Mod_ext.y;
        x_arr = SemanticEquality_ArrayMutations37_Mod_ext.x_arr;
        _;
    }
}
