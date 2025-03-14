pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Semantics_Mods_ExtL1 {
    uint public x;
    uint public y;
    SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL1 myContract;
    constructor() public {
        myContract = new SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL1;
    }
    modifier set_x_ext(uint in_value) {
        myContract.x = in_value;
        _;
    }
    modifier set_y_ext(uint in_value) {
        myContract.y = in_value;
        _;
    }
}
