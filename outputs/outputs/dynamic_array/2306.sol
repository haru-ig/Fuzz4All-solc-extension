pragma solidity ^0.8.0;
contract MutatedSemanticEquivalence_DynamicallySizedNestedArrayAssignment_6c6B66132A9866644B6097C4f7255aA4{
    uint [][] arrayOne;
    uint [][] arrayTwo;
    uint [][] arrayThree;
    uint [][] arrayFour;
    uint [][] arrayFive;
    uint [][] arraySix;
    uint [][] arraySeven;
    constructor()public{
        uint [][] memory one_2 = arrayOne;
        uint [][] memory two_3 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = arrayThree;
        arrayThree = arrayFour;
        arrayFour = arrayFive;
        arrayFive = arraySix;
        arraySix = arraySeven;
        arrayOne = arrayOne;
        arrayTwo = arrayOne;
        arrayThree = arrayOne;
        arrayFour = arrayOne;
        arrayFive = arrayOne;
        arraySix = arrayOne;
        arraySeven = arrayOne;
    }
}
