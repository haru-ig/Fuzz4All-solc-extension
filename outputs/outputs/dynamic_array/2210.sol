pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_26{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor (uint[] memory one)public{
        uint[] memory one_2 = one;
        arrayOne = one_2;
        uint[] memory one_2_2 = one_2;
        arrayTwo = one_2_2;
        uint [] memory one_2_2_3 = one_2_2;
        arrayThree = one_2_2_3;
        uint [] memory one_2_2_3_4 = one_2_2_3;
        arrayFour = one_2_2_3_4;
        arrayFive = one_2_2_3_4;
        for (uint i = 0; i<one_2_2_3_4.length;i++){

        }
        uint i_1 = 3;
        uint i_2 = 3;
        for(i_1 = 0; i_1<10; i_1++){
        arraySix[i_2] = one_2[i_2];

        }
    }
}
