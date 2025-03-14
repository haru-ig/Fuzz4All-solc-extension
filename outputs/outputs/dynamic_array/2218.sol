pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27{

    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor (uint[] memory one)public{
        arrayOne = one;
        arrayTwo = one;
        arrayThree = one;
        arrayFour = one;
        uint m = arrayFour.length;
        uint o = 0;
        o = 1;
    }
}
