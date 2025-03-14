pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySized_27cMutated_Equivalence{
    uint [] public ArrayOne;
    uint[] ArrayTwo;
    uint[] MemoryThree;
    uint[] [] MemoryFour;
    uint [][] [] MemoryFive;
    uint[][] [] MemorySix;
    constructor(){}
    function mutatedAssignment()public{
        ArrayOne = ArrayTwo;
        ArrayTwo = MemoryThree;
        ArrayThree = MemoryFour;
        MemoryFour=MemoryFive;
        MemoryFive = MemorySix;
        MemorySix = ArrayOne;
    }
}
