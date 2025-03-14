pragma solidity ^0.8.0;
contract SemanticEquivalence_MutateDynamicallySizedNestedArrayAssignment_a6619217729563a4c8b46768589db4e6{
    uint [][] memory array1;
    uint [][] memory array2;
    uint [][] memory array3;
    uint [][] memory array4;
    address memory contractAddress;
    constructor()public{
        array1 = array2;
        array2 = array3;
        array3 = array4;
        array4 = contractAddress;
    }
}
    <KEY>
