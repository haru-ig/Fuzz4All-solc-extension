pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_25{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] arrayFour;
    uint[] public arrayFive;
    uint[] arraySix;
    event Five_ElementAdded(uint[],uint,uint,uint[],uint[],uint[]);
    constructor () public{
    require(arrayOne.length > 5,"Length of arrayOne greater than 0");
    arrayOne = arrayOne.slice(0,5);
    }
    function elementThreeAssignment ()public view returns(uint){
        return arrayThree.length;
    }
}
