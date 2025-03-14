pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_2bMutated{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor()public{
        uint[] memory one_2 = arrayOne;
        uint[] memory two_3 = one_2;
        uint[] memory three_4 = one_2;
        uint[] memory four_5 = one_2;
        uint[] memory five_6 = one_2;
        one_2 = arrayOne;
        two_3 = one_2;
        three_4 = one_2;
        four_5 = one_2;
        five_6 = one_2;
        arrayOne = two_3;
        arrayTwo = three_4;
        arrayThree = four_5;
        arrayFour = five_6;
        arrayFive = one_2;
        arraySix = one_2;
    }
}
