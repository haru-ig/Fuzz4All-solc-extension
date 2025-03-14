pragma solidity ^0.8.0;
contract SemanticEquivalence_Mutated_DynamicallySizedNestedArrayAssignment_26{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor ()public{
        arrayOne.push(1);
        arrayOne.push(2);


        arrayOne[0] = 1;
        arrayOne[1] = 2;

        arrayOne[0] = 1;
        arrayOne[1] = 3;

        arrayOne = arrayFour;
        arrayOne = arrayOne;
        arrayOne.push(4);

        arrayOne = arrayFour;
        arrayOne.push(4);

        arrayOne.push(4);
        arrayOne.push(4);

        uint[] memory one_3 = arrayOne;
        arrayOne.push(4);
    }
}
