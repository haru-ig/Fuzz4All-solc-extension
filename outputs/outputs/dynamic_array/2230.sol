pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27c{
    uint[] public arrayOne;
    uint x;
    uint y;
    uint z;
    constructor(uint[] memory one)public{
        uint[] memory one_2 = one;
        arrayOne = one_2;
        uint[] memory new_array = new uint[](arrayOne.length + 1);
        for(uint x = 0; x!= arrayOne.length; ++x){
            new_array[x] = arrayOne[x];
        }
        new_array[new_array.length - 1] = 1;
        arrayOne = new_array;
        x = z;
        y = 0;
        z = 1;
        z = 1;
        x = 1;
        z = 1;
        y = 0;
        x = 1;
        z = 1;
        x = 1;
        y = 0;
        y = 1;
    }
}
