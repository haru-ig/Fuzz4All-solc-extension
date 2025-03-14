pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedArrayAssignment_27{
    uint[] arrayOne;
    uint[] arrayTwo;
    uint[] arrayThree;
    uint[] arrayFour;
    uint[] arrayFive;
    uint[] arraySix;
    constructor (uint[] memory one, uint[] memory two, uint[] memory three, uint[] memory four, uint[] memory five)public{
        arrayOne = one;
        arrayTwo = two;
        arrayThree = three;
        arrayFour = four;
        arrayFive= five;
        arraySix= one;
    }

    function modifyArguments(uint[] calldata _firstVar)public
    {
        arrayOne = new uint[](_firstVar.length + 5);
    }
    function returnArgumens()
    {
        return arrayOne;
    }
    function returnVararg()
    {
        return arraySix;
    }
}
