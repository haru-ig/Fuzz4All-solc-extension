pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_fe381B96903d46E879dCae0d823116c3{
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
