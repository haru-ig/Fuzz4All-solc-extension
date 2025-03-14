pragma solidity ^0.8.0;
contract SeeminglyEquivalent {
    int256[] public field;
    int256 public size;
    constructor() public {
        field = new int256[](5 + 1);
        for (uint i = 0; i < field.length; i++) {
            field[i] = 1;
        }
        field[field.length] = 0;
        size = field.length;
    }
}
contract StructuralEqualityDynamicallySizedArrayAssignment_8 {
    int256[] public field;
    int256 public size;
    constructor() public {
        field = new int256[](5 + 1);
        size = 5 + 1;
    }
}
contract StructuredEquality_DynamicallySizedArrayAssignment_9 {
    int256[] public field;
    int256 public sizeBefore;
    int256 public sizeAfter;
    constructor() public {
        field = new int256[](5 + 1);
        sizeBefore = 5 + 1;
        sizeAfter = 5 + 1;
        for (uint i = 0; i < field.
