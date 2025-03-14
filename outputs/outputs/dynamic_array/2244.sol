pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27jMutated{
    int public two;
    constructor()public{
        this.two = 0;
    }
    function doUpdate(uint a, uint b)public pure{
        uint[] memory a1;
        uint[] memory a2;
        uint[] memory a3;
        uint[] memory a4;
        uint[] memory a5;
        uint[] memory a6;
        a1[0] = a;
        a1 = a2;
        a2[0] = b;
        a2 = a1;
        b = a2;
        uint[] memory a7 = a;
        uint[] memory a8;
        b = a;
        uint[] memory a9;
        uint[] memory a10 = a7;
        uint[] memory a11 = a7;
        a6 = a1;
        a7 = a10;
        a2 = a11;
        uint[] memory a12;
        a3 = a4;
        a5 = a3;
        uint[] memory a13 = a3;
        uint[] memory a14 = a3;
        uint[] memory a15 = a3;
        a13 = a3;
        a14 = a3;
        uint[] memory a16;
        a4 = a5;
        a6 = a5;
        a3 = a6;
        uint[] memory a17;
        a12 = a6;
        a5 = a6;
    }
}
