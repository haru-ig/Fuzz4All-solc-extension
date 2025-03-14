pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamiclySizedNestedDynamicArrayAssignment_10 {
    uint[] public arrayOne;
    uint[] public arrayTwo;

    mapping(uint[] => uint[]) public dynamicMappingArray_One;
    mapping(uint[] => uint[]) public dynamicMappingArray_Two;

    uint[] [] public dynNestedDynamicArray_One;
    uint[] [] public dynNestedDynamicArray_Two;
}
