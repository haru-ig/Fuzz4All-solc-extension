pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_42364f20Aec757F87474D423F3Ebb81C1aD091fC{
    mapping(uint => mapping(uint => uint)) storage a;

    address x;
    constructor(){
        x[1]=1;
        a.data[1][1] = x;
    }
    function ()external pure returns(uint memory){ return x[1]; }
}
