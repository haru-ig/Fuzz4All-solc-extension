pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods_Mod35_ExtL35 {
    uint32[] public myStruct1;
    uint32[] public myStruct2;
    uint[] public myArray3;
    constructor() public {
        myStruct1 = [877, 1625, 65];
        myStruct2 = myStruct1;
        myArray3 = [213, 5, 3];
    }
    modifier set_array3_ext(uint[] in_value) {
        myArray3 = in_value;
        _;
    }
    modifier set_myStruct1_ext(uint32[] in_value) {
        myStruct1 = in_value;
        _;
    }
    modifier set_myStruct2_ext(uint32[] in_value) {
        myStruct2 = in_value;
        _;
    }
}
