pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_2149F7A432073374C8FDAE0439105504{
    uint [][] var_1;
    uint [][] var_2;
    uint [][] var_3;
    uint [][] var_4;
    uint [][] var_5;
    uint [][] var_6;
    uint [][] var_7;
    constructor()public{
        uint [][] memory var_8 = var_1;
        var_1 = var_2;
        var_2 = var_3;
        var_3 = var_4;
        var_4 = var_5;
        var_5 = var_6;
        var_6 = var_7;
        var_7 = new uint [][][]([2]);
        var_7[0] = new uint[]([1]);
        var_7[0][0] = new uint[](0);
        var_8 = var_8;
        var_4 = var_2;
        var_6 = var_7;
        var_1 = var_6;
        var_7 = var_5;
        var_8 = var_1;
    }
}
