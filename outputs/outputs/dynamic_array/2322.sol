pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_e77d6f6832306B118670CC3eE13A6f60{
    uint [][] memory a;
    uint [][] memory b;
    uint [][] memory c = b;
    uint [][] memory d;
    uint[][][] memory e;
    uint[][][] memory f;
    constructor()public{
        uint [][] memory memory0;
        uint [] memory memory1;
        uint [][] memory memory2;
        uint [][][] memory memory3;
        uint [][][] memory memory4;
        uint [][][] memory memory5;
        uint [][][] memory memory6;
        memory0 = a;
        memory1 = b;
        uint [][] memory memory7 = d;
        memory2 = memory1;
        memory3 = memory4;
        memory5 = memory;
        uint [][] [] memory memory8;
        a = memory;
        b = memory1;
        c[b] = memory4;
        d[memory0] = memory3;
        e = memory3;
        f = memory2;
        memory8 = memory6;
    }
}
