pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_20632DF49D1842288D603DB979D6B20F{
    uint [] memory arrayOne;
    uint [] memory arrayTwo;
    uint [] memory arrayThree;
    uint [] memory arrayFour;
    uint [] memory arrayFive;
    uint [] memory arraySix;
    constructor()public{
        uint [] memory one_2 = arrayOne;
        uint [] memory two_3 = arrayOne;

        arrayOne = arrayTwo;
        arrayTwo = arrayThree;
        arrayThree = arrayFour;
        arrayFour = arrayFive;
        arrayOne = arrayTwo;
        arrayTwo = two_3;
        arrayThree = arrayFour;
        arrayFour = arrayFive;
        one_2 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = two_3;
        arrayThree = arrayFour;
        arrayFour = arrayFive;
    }
}
