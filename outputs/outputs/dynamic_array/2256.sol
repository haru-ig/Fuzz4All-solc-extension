pragma solidity ^0.8.0;
contract SemanticEquivalence_ArrayAssignment_8aPreviousGen{
    uint arrayOne;
    uint arrayTwo;
    uint arrayThree;
    uint arrayFour;
    uint arrayFive;
    uint arraySix;
    constructor()public{
        arrayOne = arrayTwo;
        arrayTwo = arrayThree;
        arrayThree = arrayFour;
        arrayFour = arrayFive;
        arrayFive = arraySix;
        arraySix = arrayOne;
    }
}
