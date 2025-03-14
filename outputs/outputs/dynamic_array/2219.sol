pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor(uint[] memory one)public{
        uint[] memory one_2 = one;
        arrayOne = one_2;
        arrayOne[5] = 1;
    }
}
