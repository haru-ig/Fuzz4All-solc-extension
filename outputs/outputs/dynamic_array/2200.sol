pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_24{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] arrayFour;
    uint[] public arrayFive;
    uint[] arraySix;
    uint arr[27][47];
    uint arr1[1];
    event Fifth_ElementAdded(uint,uint[]);
    constructor (uint[] memory one)public{
        arrayOne = one;
    }
    function elementFiveAssignment ()private view returns(uint){
        return arr[arrayFive.length-1][arrayFive.length-1];
    }
}
