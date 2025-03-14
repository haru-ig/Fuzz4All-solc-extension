pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_8aCorrected{
    uint [] arrayOne;
    uint [] arrayTwo;
    uint [] arrayThree;
    uint [] arrayFour;
    uint [] arrayFive;
    uint [] arraySix;
    constructor()public{
        uint [] memory one_2 = arrayOne;
        uint [] memory two_3 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = arrayThree;
        uint [] memory three_4 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = two_3;
        one_2 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = two_3;
        three_4 = arrayOne;
        arrayThree = arrayFour;
        arrayFour = arrayFive;
        arrayFive = arraySix;
        arraySix = arrayOne;
    }
}
