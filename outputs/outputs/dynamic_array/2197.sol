pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] arrayFour;
    uint[] public arrayFive;
    uint[] arraySix;
    event Five_ElementAdded(uint[],uint,uint,uint[],uint[],uint[]);
    constructor (uint[] memory one)public{
        arrayOne = one;
    }
    function elementThreeAssignment ()private view returns(uint){
        return arrayThree[arrayThree.length-1];
    }
}
