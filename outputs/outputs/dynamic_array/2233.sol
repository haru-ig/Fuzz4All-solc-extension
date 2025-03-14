pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27c{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor(uint[] memory one, uint[] memory two)public{
        uint[] memory one_2 = one;
        uint[] memory two_3 = two;
        uint[] memory one_2_3 = one_2 | two_3;
        arrayOne = one_2_3;
        uint[] memory new_array = new uint[](arrayOne.length + 1);
        for(uint x = 0; x!= arrayOne.length; ++x){
            new_array[x] = arrayOne[x];
        }
        new_array[new_array.length - 1] = 1;
        arrayOne = new_array;
        uint[] memory new_array_1 = new uint[](arrayOne.length + 1);
        for(uint x = 0; x!= arrayOne.length; ++x){
            new_array_1[x] = arrayOne[x];
        }
        arrayOne = new_array_1;
    }
}
