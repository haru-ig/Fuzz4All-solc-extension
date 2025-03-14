pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Semantics_Mods_ExtL1 {
    struct A {
        uint foo;
        uint bar;
    }
    int a [2] ;
    constructor() public {
        a [0] = A (0xFFFF, 6);
        a [1] = A (100, 7);
    }
}
