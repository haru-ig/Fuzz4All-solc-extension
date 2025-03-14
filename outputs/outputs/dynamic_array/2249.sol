pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27bMutated{
    uint[] arrayOne;
    uint[] arrayTwo;
    uint[] arrayThree;
    uint[] arrayFour;
    uint[] memory arrayFive;
    uint[] arraySix;
    constructor()public{
        uint[] memory one_2 = arrayOne;
        uint[] memory two_3 = one_2;
        arrayOne = one_2;
        arrayTwo = two_3;
        uint[] memory three_4 = one_2;
        uint[] memory four_5 = one_2;
        uint[] memory five_6 = one_2;
        on_eive_a_2 = arrayFive;
        arrayOne = one_2;
        arrayTwo = two_3;
        three_4 = arrayThree;
        arrayThree = three_4;
        four_5 = arrayFour;
        arrayFour = four_5;
        five_6 = arrayFive;
        arraySix = arrayOne;
    }
}
