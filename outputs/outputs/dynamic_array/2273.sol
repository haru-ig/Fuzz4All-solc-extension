pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_9a8a4D121AE8981D76f54c90a3B1f3c8{
    uint [][] memory memoryOne;
    uint [][] memory memoryOne = arrayOne;
    uint [][] arrayOne;
    constructor()public{
        uint [][] memory memOne_1 = memoryOne;
        arrayOne = memOne_1;
        memoryOne = arrayOne;
    }
}
