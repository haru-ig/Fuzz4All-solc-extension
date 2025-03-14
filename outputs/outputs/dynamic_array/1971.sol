pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_10 {
    address[] public field;
    uint256 public size;
    constructor() public {
        field = new address[](5 + 1);
        size = 5 + 1;
        field[field.length] = 0xE92B8B80CE01315A;
        field[field.length + 1] = 0xE92B8B80CE01315A;
        size--;
        field[field.length + 1] = 0xE92B8B80CE01315A;
    }
}
