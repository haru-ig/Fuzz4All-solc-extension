pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedArrayAssignment_fe381B96903d46E879dCae0d823116c3{
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
        one_2 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = two_3;
        arrayThree = arrayFour;
        arrayFour = arrayFive;
        one_2 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = two_3;
        one_2 = arrayOne;
        arrayOne = arrayTwo;
        one_2 = arrayOne;
        one_2 = arrayOne;
        arrayOne = arrayOne;
    }
}
