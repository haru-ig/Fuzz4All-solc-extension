pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27b{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor(uint[] memory one)public{
        uint[] memory one_2 = one;
        arrayOne = one_2;
        uint[] memory new_array = new uint[](arrayOne.length + 1);
        for(uint x = 0; x!= arrayOne.length; ++x){
            new_array[x] = arrayOne[x];
        }
        new_array[new_array.length - 1] = 1;
        arrayOne = new_array;
    }
}
