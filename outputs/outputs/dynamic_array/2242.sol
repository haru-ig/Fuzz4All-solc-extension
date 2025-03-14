pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27cMutated{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor()public{
        uint[] memory one_2 = arrayOne;
        uint[] memory two_3 = one_2;
        one_2 = arrayOne;
        arrayOne = one_2;
        arrayTwo = two_3;
        uint[] memory three_4 = one_2;
        uint[] memory four_5 = one_2;
        uint[] memory five_6 = one_2;
        one_2 = arrayOne;
        arrayOne = one_2;
        arrayTwo = two_3;
        three_4 = arrayThree;
        arrayThree = three_4;
        four_5 = arrayFour;
        arrayFour = four_5;
        five_6 = arrayFive;
        arrayFive = five_6;
        arraySix = arrayOne;
    }
}
