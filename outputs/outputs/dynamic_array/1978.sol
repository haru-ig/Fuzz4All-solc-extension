pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_10 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5);
        size = 5;
        field[field.length] = 1;
        field[field.length + 1] = 2;
        size--;
        size++;
        field[field.length + 1] = 3;
        field[field.length] = 4;
        size--;
        size++;
        field[field.length + 1] = 5;
        field[field.length] = 6;
        size--;
        size++;
        field[field.length + 1] = 7;
        field[field.length] = 8;
        field[field.length] = 2**127;
        size--;
        size++;
        field[field.length + 1] = 9;
        field[field.length] = 10;
    }
}
