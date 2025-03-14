pragma solidity ^0.8.0;
contract SeamlesslyEquivalent {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5 + 1);
        for (uint i = 0; i < field.length; i++) {
            field[i] = 1;
        }
        field[field.length] = 0;
        size = field.length;
    }
}
contract StructuralEqualityDynamicallySizedArrayAssignment_5 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5 + 1);
        size = 5 + 1;
    }
}
contract StructuredEquality_DynamicallySizedArrayAssignment_6 {
    uint256[] public field;
    uint256 public sizeBefore;
    uint256 public sizeAfter;
    constructor() public {
        field = new uint256[](5 + 1);
        sizeBefore = 5 + 1;
        sizeAfter = 5 + 1;
        for (uint i = 0; i < field.
