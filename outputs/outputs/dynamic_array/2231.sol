pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27c{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor(uint[] memory one)public{
        for(uint x = 0; x!= one.length; ++x){
            arrayOne[x] = 1;
        }
        arrayOne[arrayOne.length - 1] = 1;
    }
}
