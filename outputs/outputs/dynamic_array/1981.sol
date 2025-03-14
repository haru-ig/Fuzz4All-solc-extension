pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_10 {
    uint256[] public field;
    uint256 public size;
    uint256 lastWrittenValue;
    constructor() public {
        field = new uint256[](4);
        lastWrittenValue = 0;
        size = 4;
        size -= 2;
        size += 2;
        field[field.length] = 1;
        lastWrittenValue = field.length + 1;
        field[field.length - 1] = 2;
        field[field.length + 1] = 3;
        lastWrittenValue = field.length + 2;
        field[field.length + 2] = 4;
        lastWrittenValue = field.length + 3;
        field[field.length + 3] = 5;
        size -= 4;
        size += 2;
    }
}
