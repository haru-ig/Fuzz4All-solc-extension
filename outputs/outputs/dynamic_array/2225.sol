pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27_Mutated{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor(uint[] memory input)public{
        uint[] memory one_2 = input;
        arrayOne = one_2;
        arrayOne[5] = 1;
    }
}
